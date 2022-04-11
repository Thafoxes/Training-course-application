package com.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


import com.entity.SessionClass;

public class YahooMailSender {
	
	public String YahooMail(String emailTo, SessionClass sCourse) {
		String host = "smtp.mail.yahoo.com";  
		  final String user = "testingaccount.utmsdigitalway@yahoo.com";
		  final String password = "lrza"
		  		+ "xdqs"
		  		+ "tlrj"
		  		+ "hksk";
		  final int port = 587;//change accordingly  
		    
		  String to = emailTo;//change accordingly  
		  
		   //Get the session object  
		   Properties props = new Properties();  
		   props.put("mail.smtp.host", host);  
		   props.put("mail.smtp.port", port);
		   props.put("mail.smtp.starttls.enable", "true");
		   props.put("mail.smtp.auth", "true");  
		     
		   Session session = Session.getDefaultInstance(props,  
		    new javax.mail.Authenticator() {  
		      protected PasswordAuthentication getPasswordAuthentication() {  
		    return new PasswordAuthentication(user,password);  
		      }  
		    });  
		   
		   //session.setDebug(true);
		   //Compose the message  
		    try {  
		    	//create mimemessage object
		     MimeMessage message = new MimeMessage(session);  
		     //email from who
		     message.setFrom(new InternetAddress(user));  
		     //email to subject
		     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
		     message.setSubject("Session Summary");  
		     message.setContent(
		              "<h1>This is the Session Summary that you have registered</h1>"
		    		 + "<h2>Course Name: "+ sCourse.getCourseName() +"</h2>"
		    		 + "<h2>Course Date: "+sCourse.getSessionDate() +"</h2>"
		    		 + "<h2>Course Teacher: "+sCourse.getTeacher() +"</h2>"
		    		 + "<h2>Course Time: "+sCourse.getStartTime() +" - "+ sCourse.getEndTime() +"</h2>",
		             "text/html");
		       
		    //send the message  
		     Transport.send(message);  
		  
		     return"message sent successfully...";  
		   
		     } catch (MessagingException e) {
		    	 e.printStackTrace();
		    }
			return "message sent successfully...";  
			
		 }
 
}

