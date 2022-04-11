package Test;

import java.sql.Date;  

public class testSQL {

	public static void main(String[] args) {
		 String str="1/4/2023";  
		    Date date=Date.valueOf(str);//converting string into sql date  
		    System.out.println(date);  
	}

}
