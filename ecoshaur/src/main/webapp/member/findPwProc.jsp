<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>
<%@ include file="../mail/ssi.jsp"%>
<%@ include file="../header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style>
 p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight: 800;
   }
</style>

<!-- 본문 시작 findPwProc.jsp-->
<h3> * 비밀번호찾기 결과 * </h3>
<%
	String mname 		= request.getParameter("mname").trim();
	String email 		= request.getParameter("email").trim();
	int cnt = dao.memberFindPasswd(mname, email);

	if(cnt != 0){
//-------------------------임시비밀번호 만들고 DB수정하기---------------------------------------
		String pw = "";
		char[] charSet = new char[] { 	'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
										'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
										'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T',
										'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd',
										'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
										'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
										'y', 'z'};

		for (int i = 0; i < 10; i++) {
			int index = (int)((Math.random() * charSet.length));
			pw += charSet[index];
		}
		
		int cnt2 = dao.memberSamplepasswd(mname, email, pw);
		if(cnt2 != 0){
//-------------------------------이메일 보내기----------------------------------------------
			// 1) 메일서버(POP3/SMTP)지정하기
			String mailServer = "mw-002.cafe24.com";
			Properties props = new Properties();
			props.put("mail.smtp.host", mailServer);
			props.put("mail.smtp.auth", "true");
			
			// 2) 메일서버에서 인증받은 계정+비번
			Authenticator myAuth = new MyAuthenticator();	
	
			// 3) 1)과 2)가 유효한지 검증
			Session sess = Session.getInstance(props, myAuth);
			// out.print("메일 서버 인증 성공!");
	
			// 4) 메일보내기
			try{
				String content = "";
				
				content += "<p>";
				content += mname + "님의 임시비밀번호는 " + pw + "입니다";
				content += "</p>";
				
				// 받는사람 이메일 주소
				InternetAddress[] address={
						new InternetAddress(email) };
				
				Message msg = new MimeMessage(sess);// 메일관련 메세지 작성
				msg.setRecipients(Message.RecipientType.TO, address);// 받는 사람
				msg.setFrom(new InternetAddress("abc@naver.com"));// 보내는 사람
				msg.setSubject("임시 비밀번호 입니다");// 메일 제목
				msg.setContent(content, "text/html; charset=UTF-8");// 메일 내용
				msg.setSentDate(new Date());// 보낸 날짜
				Transport.send(msg);// 메일 전송		
					
				out.println("<script>");
				out.println("  alert('" + mname + "님의 이메일로 임시비밀번호를 발송하였습니다');");
				out.println("  location.href='loginForm.do'");
				out.println("</script>");
			}catch(Exception e){
				out.print("<p>메일 보내기 실패 : " + e + "</p>");
				out.print("<p><a href='javascript:history.back()'></a></p>");
			}
		}
		else{
			out.print("<p>임시비밀번호로 수정중 실패</p>");
		}
		
	}else{
		out.print("<p style='color:red'>이름이나 이메일이 없습니다</p>");
	}// if end
%>




<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 본문 끝 -->		
<%@ include file="../e_footer.jsp" %>