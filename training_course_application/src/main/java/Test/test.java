package Test;

import java.util.Properties;

import javax.mail.*;  
import javax.mail.internet.*;  

public class test {
	public static void main(String[] args) {
		String host = "smtp.mail.yahoo.com";  
		  final String user = "testingaccount.utmsdigitalway@yahoo.com";
		  final String password = "lrza"
		  		+ "xdqs"
		  		+ "tlrj"
		  		+ "hksk";
		  final int port = 587;//change accordingly  
		    
		  String to="wong.jiasoon@gmail.com";//change accordingly  
		  
		   //Get the session object  
		   Properties props = new Properties();  
		   props.put("mail.smtp.host",host);  
		   props.put("mail.smtp.port",port);
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
		              "<h1>This is the Session Summary that you have registered</h1>",
		             "text/html");
		       
		    //send the message  
		     Transport.send(message);  
		  
		     System.out.println("message sent successfully...");  
		   
		     } catch (MessagingException e) {
		    	 e.printStackTrace();
		    }  
		 }  
	
}
