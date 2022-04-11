package com.entity;



public class SessionClass {
	private int sessionID;
	private String sessionDate;
	private int courseID;
	private String teacher;
	private String startTime;
	private String endTime;
	private String courseName;
	
	
	
	
	public SessionClass(String sessionDate, String teacher, String startTime, String endTime, String courseName) {
		super();
		this.sessionDate = sessionDate;
		this.teacher = teacher;
		this.startTime = startTime;
		this.endTime = endTime;
		this.courseName = courseName;
	}
	public SessionClass(int sessionID, String sessionDate, int courseID, String teacher, String startTime,
			String endTime, String courseName) {
		super();
		this.sessionID = sessionID;
		this.sessionDate = sessionDate;
		this.courseID = courseID;
		this.teacher = teacher;
		this.startTime = startTime;
		this.endTime = endTime;
		this.courseName = courseName;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public String getSessionDate() {
		return sessionDate;
	}
	public void setSessionDate(String sessionDate) {
		this.sessionDate = sessionDate;
	}
	public int getSessionID() {
		return sessionID;
	}
	public void setSessionID(int sessionID) {
		this.sessionID = sessionID;
	}
	public int getCourseID() {
		return courseID;
	}
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	
}
