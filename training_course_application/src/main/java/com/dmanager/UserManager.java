package com.dmanager;
import com.entity.UserAccount;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.csm.dbms.DBManager;


public class UserManager {

	
	//CRUD
	
	public int insert(UserAccount userAcc) throws ClassNotFoundException, SQLException, NoSuchAlgorithmException, InvalidKeySpecException{
		int result = -1;

		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();

		//prepare statement
		String sql = "INSERT INTO users  (`UserName`, `FirstName`, `LastName`, `Email`, `PwdHash`) VALUES (?, ?, ?, ?, ?);";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userAcc.getUsername());
		pstmt.setString(2, userAcc.getfName());
		pstmt.setString(3, userAcc.getlName());
		pstmt.setString(4, userAcc.getEmail());
		pstmt.setString(5, userAcc.convertHashedPass());


		
		//execute INSERT
		result = pstmt.executeUpdate();


		return result;


	}
	
	public List<UserAccount> selectUser(UserAccount uaInfo) throws ClassNotFoundException, SQLException{ //select user
		List<UserAccount> userAcc = new ArrayList<>();
		UserAccount userInfos;
		// get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConn();

		// query
		String sql = "SELECT * FROM users WHERE UserName = ? OR Email = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, uaInfo.getUsername());
		pstmt.setString(2, uaInfo.getUsername());
		
		ResultSet rs = pstmt.executeQuery();

		
		while (rs.next()) {
	
			
			userInfos = new UserAccount(
					
					//UserID, UserName, 
					//FirstName, LastName, Email, PwdHash
					rs.getInt("UserID"),
					rs.getString("UserName"),
					rs.getString("FirstName"),
					rs.getString("LastName"),
					rs.getString("Email"),
					rs.getString("PwdHash"));
					
			userAcc.add(userInfos); //add entity into collection to arraylist
		}
		
		return userAcc;

	}
	
	public int updateUser(UserAccount uAcc) {
		int result = -1;
		
		//get connection
				DBManager dbMgr = new DBManager();
				Connection conn = dbMgr.getConn();

				//prepare statement
				//UserID, UserName, FirstName, LastName, Email, PwdHash
				String sql = "UPDATE users SET UserName = ?, FirstName = ?, LastName = ?, Email = ?  WHERE UserID = ?;";

				PreparedStatement pstmt;
				try {
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, uAcc.getUsername());
					pstmt.setString(2, uAcc.getfName());
					pstmt.setString(3, uAcc.getlName());
					pstmt.setString(4, uAcc.getEmail());
					pstmt.setInt(5, uAcc.getUserID());


					
					//execute INSERT
					result = pstmt.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				


				return result;
		
		
		
	}
}
