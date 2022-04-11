package training_course_application;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.entity.ClassCourse;
import com.entity.SessionClass;
import com.mail.YahooMailSender;

class MailTest {

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		SessionClass sCourse = new SessionClass("2022-05-02","melbounce","8.00 AM", "11.00 AM", "English Level 3: Business theorem");
	}

	@BeforeEach
	void setUp() throws Exception {
	}

	@Test
	void test() {
		YahooMailSender yahooSend = new YahooMailSender();
		SessionClass sCourse = new SessionClass("2022-05-02","melbounce","8.00 AM", "11.00 AM", "English Level 3: Business theorem");
		yahooSend.YahooMail("jiasoon.wong21@digitalway.net", sCourse);
	}

}
