package com.dmanager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.dbms.DBManager;
import com.entity.ClassCourse;


public class CourseDBMS {

	
	public ArrayList<ClassCourse> fetchSubject() throws ClassNotFoundException, SQLException{
		ArrayList<ClassCourse> classCourse = new ArrayList<>();
		ClassCourse courseSubject;
		
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();
		
		String sql = "SELECT * FROM course";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			courseSubject = new ClassCourse(
					rs.getInt("course_id"),
					rs.getString("course_name")
					);
			classCourse.add(courseSubject);
		}
		
		return classCourse;
		
	}
	
	public int checkInsertCourse(String courseName) {
		int result = -1;
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();
		
		
		try {
			String sql = "CALL check_else_insert_course(?)";
			PreparedStatement pstmt;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, courseName);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return result;
		
		
	}
}
