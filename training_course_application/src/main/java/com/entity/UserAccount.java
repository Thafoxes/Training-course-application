package com.entity;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Base64;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import com.security.HashingPwd;

public class UserAccount{
	protected int userID;
	protected String username;
	protected String fName;
	protected String lName;
	protected String email;
	protected String password;
	protected String hashPwd;
	
	

	//Retrieve all data from sql or can be use for update data
	public UserAccount(int userID, String username, String fName, String lName, String email, String hashPwd) {
		super();
		this.userID = userID;
		this.username = username;
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.hashPwd = hashPwd;
	}
	
	//login
	public UserAccount(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	
	//register
	public UserAccount(String username, String fName, String lName, String email, String password) {
		super();
		this.username = username;
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.password = password;
	}
	

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
//	when password is called to SQL, password need to be hashed and place to SQL database
	public String convertHashedPass() throws NoSuchAlgorithmException, InvalidKeySpecException {
		HashingPwd HashingPwd = new HashingPwd();
		String hashPwd = HashingPwd.generateStrongPasswordHash(password);
		
		return hashPwd;
	}
	
	public String getHashPwd(){
		
		return hashPwd;
	}
	
	public boolean validatePwd(String originalPwd, String dbHashPwd) throws NoSuchAlgorithmException, InvalidKeySpecException {
		HashingPwd HashingPwd = new HashingPwd();
		boolean passwordValid = HashingPwd.validatePassword(originalPwd, dbHashPwd);
		
		return passwordValid;
	}
	
	
	
}
