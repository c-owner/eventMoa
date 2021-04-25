package com.eventmoa.app.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;

public class UserVerifyEmailAction implements Action {
	
	protected static final String HTTPS_PROTOCOLS = "TLSv1,TLSv1.1,TLSv1.2"; 
	
	static final String HOST = "smtp.naver.com";
	static final String USER = "eventmoa1515@naver.com";
	static final String PASSWORD = "@ventmoa15";

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		ActionForward forward = null;
		
		Random r = new Random();
		int dice = r.nextInt(4589362) + 49311;
		
		String userEmail = null;
		
		if (req.getParameter("email") != null ) {
			userEmail = req.getParameter("email");
		}
		
//		String host = "smtp.gmail.com";
//		String from = "eventmoa1515@gmail.com";
		String port = "465";
		String to = userEmail;
		String subject = "이벤트모아 사이트를 이용을 위한 회원가입 인증 메일입니다.";
		String content = "안녕하세요 회원님. 저희 홈페이지를 찾아주셔서 감사합니다."
				+ "<br> 인증번호  : "+ dice + " "
				+ "<br> 받으신 인증번호로 입력 해주세요. 감사합니다.";
		Properties p = new Properties();
		p.put("mail.smtp.user", to);
		p.put("mail.smtp.host", HOST);
		p.put("mail.smtp.port", port);
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.ssl.enable", "true");
		p.put("mail.smtp.socketFactory.port", port);
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
//		p.put("https.protocols", HTTPS_PROTOCOLS);
//		p.put("jsse.enableSNIExtension", "false");
		System.setProperty("https.protocols", HTTPS_PROTOCOLS);
//		System.setProperty("jsse.enableSNIExtension", "false");
		
		Session session = Session.getDefaultInstance(p, new javax.mail.Authenticator() 
				{
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(USER, PASSWORD);
					}
				});
		
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(USER));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			// 메일 제목
			message.setSubject("[이벤트 모아] 회원가입 인증번호 발송 메일입니다.");
			
			String tempPass = Integer.toString(dice);
			String msg =  "안녕하세요 회원님. 저희 홈페이지를 찾아주셔서 감사합니다."
					+ "<br> 인증번호  : "+ dice + " "
					+ "<br> 받으신 인증번호로 입력 해주세요. 감사합니다.";			
//			
			message.setContent(msg, "text/html; charset=utf-8");
			
			try {
				Transport.send(message);
				System.out.println("success Message Send to ' " +userEmail +" ' ");
				
//			Authenticator auth = new Gmail();
//			Session ses = Session.getInstance(p, auth);
//			ses.setDebug(true);
//			MimeMessage msg = new MimeMessage(ses);
//			msg.setSubject(subject); // 메일제목
//			Address fromAddr = new InternetAddress(from);
//			msg.setFrom(fromAddr); //  보내는 사람 
//			Address toAddr = new InternetAddress(to); 
//			msg.addRecipient(Message.RecipientType.TO, toAddr); 
//			
//			msg.setContent(content, "text/html;charset=UTF-8");
//			Transport.send(msg);
				

				String result = tempPass; 
				resp.setContentType("text/html;charset=UTF-8");
				PrintWriter script = resp.getWriter();
				script.println(result);
				script.close();
				return null;
			} catch (MessagingException e) {
				PrintWriter script = resp.getWriter();
				script.println(" error : " + e + " ");
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				PrintWriter script = resp.getWriter();
				script.println(" error : " + e + " ");
				e.printStackTrace();
			}
			return forward;
					
		
		
	}
	
	
}
