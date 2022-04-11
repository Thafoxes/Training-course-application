package com.servlet;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dmanager.CourseDBMS;
import com.dmanager.SessionDBMS;
import com.entity.SessionClass;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;



/**
 * Servlet implementation class Import
 */
@WebServlet(name = "import", description = "Import csv file to the database and show on the import page", urlPatterns = { "/import" })
@MultipartConfig
public class Import extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Import() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get filepath
		Part filePart = request.getPart("csvfile");
		String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); //MSIE fix
		InputStream fileContent = filePart.getInputStream();
		 
		//save uploaded file
		/*
		 * the tempfilename will replace all the csv files 
		 * to save location
		 * UPLOAD_LOCATION IS IN THE C:\path\to\ uploads
		 * Environment variable via SET UPLOAD_LOCATION=/path/to/uploads:
		 *   File uploads = new File(System.getenv("UPLOAD_LOCATION"));
		 * */
		String tempFileName = "csvtempfile.csv";
		 File uploads = new File(System.getenv("UPLOAD_LOCATION"));
		 File file = new File(uploads, tempFileName);

		 try (InputStream input = fileContent) {
		     Files.deleteIfExists(file.toPath());
			 Files.copy(input, file.toPath());
		 }
		 
		 //read the file path
		 Path path = Paths.get(System.getenv("UPLOAD_LOCATION") +"/"+ tempFileName);
		 System.out.println(System.getenv("UPLOAD_LOCATION") +"\\"+ tempFileName);
		 
		 FileReader fileReader = new FileReader(String.valueOf(path));
		 
		 CSVReader reader = new CSVReader(fileReader);
		 
		 List<SessionClass> sessionTimes = new ArrayList<>();
		 SessionClass sessionTime = null;
		 String [] nextLine;  
		 //Just extra for sql date
		 Date date = null;
		 
		 try {
			//skip header
			 reader.readNext();
			while ((nextLine = reader.readNext()) != null) {
				
					  if(nextLine.length ==5) {
						 
						 for(String token : nextLine)  
						 {  
							 //idk can this check null array index
							 if(token != null) {
							 sessionTime = new SessionClass(
									  String.valueOf(Date.valueOf(nextLine[0])),
									  nextLine[1],
									  nextLine[2],
									  nextLine[3],
									  nextLine[4]
									 ); 
							 }
						 } 
						 sessionTimes.add(sessionTime);
					  }else {
						  response.setContentType("text/html"); 
							String htmlResponse = "<h2>Incorrect file content, are you sure youre uploading the correct file?</h2>";
							PrintWriter out = response.getWriter();
							out.print(htmlResponse);
						  
					  }
					
				
				}
		} catch (CsvValidationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		 reader.close();
		 
		 //check the course new in database? if yes insert, else ignore
		 CourseDBMS courseMgr = new CourseDBMS();
		 for(SessionClass sc: sessionTimes) {
			 courseMgr.checkInsertCourse(sc.getCourseName());
			 
		 }
		 //insert into the session class time
		 SessionDBMS sessionMgr = new SessionDBMS();
		 for(SessionClass sc: sessionTimes) {
			 sessionMgr.insertClassSession(sc);
			 
		 }
		 
		 request.setAttribute("importsession", sessionTimes);	
		 request.getRequestDispatcher("import.jsp").include(request, response);
		 
	}

}
