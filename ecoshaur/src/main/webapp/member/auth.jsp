<%@ page contentType="text/html; charset=UTF-8"%>
<%-- auth.jsp 로그인 상태 확인 페이지 --%>
<%
	String s_id = "";
	String s_pw = "";
	String s_grade = "";
	if(session.getAttribute("s_id")==null ||
	   session.getAttribute("s_pw")==null ||
	   session.getAttribute("s_grade")==null){
		//로그인을 하지 않았다면
		s_id = "guest";
		s_pw = "guest";
		s_grade = "guest";
	}else{
		//로그인을 성공했다면
		s_id = (String)session.getAttribute("s_id");
		s_pw = (String)session.getAttribute("s_pw");
		s_grade = (String)session.getAttribute("s_grade");
	}//if end
	
%>

