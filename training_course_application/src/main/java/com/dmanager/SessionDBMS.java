package com.dmanager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.csm.dbms.DBManager;
import com.entity.SessionClass;

public class SessionDBMS {

	public ArrayList<SessionClass> fetchSession(int subjectID, int userID){
		ArrayList<SessionClass> session = new ArrayList<>();
		SessionClass sessionSubject = null;
		
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();
		
		String sql = "CALL this_year_session(?, ?);";
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setInt(1, subjectID);
			pstmt.setInt(2, userID);
			
			
			
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				sessionSubject = new SessionClass(
						rs.getInt("session_id"),
						rs.getString("date_session"),
						rs.getInt("course_id"),
						rs.getString("teacher"),
						rs.getString("start_time"),
						rs.getString("end_time"),
						rs.getString("course_name")
						);
				session.add(sessionSubject);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return session;
		
	}
	
	public ArrayList<SessionClass> fetchOneSession(String sessionID){
		ArrayList<SessionClass> session = new ArrayList<>();
		SessionClass sessionSubject = null;
		
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();
		
		String sql = "SELECT * FROM class_session\r\n"
				+ "JOIN course ON\r\n"
				+ "class_session.course_id = course.course_id\r\n"
				+ "where session_id = ?";
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, sessionID);
			
			
			
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				sessionSubject = new SessionClass(
						rs.getInt("session_id"),
						rs.getString("date_session"),
						rs.getInt("course_id"),
						rs.getString("teacher"),
						rs.getString("start_time"),
						rs.getString("end_time"),
						rs.getString("course_name")
						);
				session.add(sessionSubject);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return session;
		
	}
	
	public ArrayList<SessionClass> fetchSessionRecord(int sessionID){
		ArrayList<SessionClass> session = new ArrayList<>();
		SessionClass sessionSubject = null;
		
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();
		
		String sql = "call find_user_record(?);";
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, sessionID);
			
			
			
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				sessionSubject = new SessionClass(
						//sessionid, date_session, course_id, start_time, end_time, teacher, course_name
						rs.getInt("sessionid"),
						rs.getString("date_session"),
						rs.getInt("course_id"),
						rs.getString("teacher"),
						rs.getString("start_time"),
						rs.getString("end_time"),
						rs.getString("course_name")
						);
				session.add(sessionSubject);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return session;
		
	}
	
	public int registerSession(int userID, int sessionID) {
		int rs = -1;
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();
		
		String sql = "INSERT INTO session_record (sessionid, usersid)"
				+ " VALUES (?, ?);";
		
		PreparedStatement pstmt;
		
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, sessionID);
				pstmt.setInt(2, userID);
				
				rs = pstmt.executeUpdate();
				return rs;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			return rs;
		
		
	}
	
	public int insertClassSession(SessionClass sc) {
		int result = -1;
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();
		
		String sql = "CALL insert_class_session(?,?,?,?,?)";
		
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sc.getStartTime());
			pstmt.setString(2, sc.getEndTime());
			pstmt.setString(3, sc.getTeacher());
			pstmt.setString(4, sc.getSessionDate());
			pstmt.setString(5, sc.getCourseName());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
		
	}
}
