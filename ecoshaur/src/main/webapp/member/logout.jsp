<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 본문시작 logout.jsp -->
<%
	//로그아웃
	session.removeAttribute("s_id");
	session.removeAttribute("s_pw");
	session.removeAttribute("s_grade");
	
	//첫페이지로 이동
	response.sendRedirect("loginForm.do");
%>