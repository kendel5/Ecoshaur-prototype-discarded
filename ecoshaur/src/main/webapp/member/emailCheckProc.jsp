<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
 p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight:800;
   }
</style>

<title>idCheckProc.jsp</title>
</head>
<body>
<div style="text-align: center">
<br><br><br><p>이메일 중복 확인 결과</p><br>
<%
String email=request.getParameter("email").trim();
int cnt=dao.duplecateEmail(email);
out.println("입력Email : <strong>" + email + "</strong>"); 
if(cnt==0){
  out.println("<p>사용 가능한 이메일입니다</p>"); 
  out.println("<a href='javascript:apply(\"" + email + "\")'>[적용]</a>"); 
%>
  <script>
  function apply(email){
	//중복이 확인된 email을 부모창(opener)에 적용
	opener.regForm.email.value=email;
	window.close();
  }//apply() end
  </script>
<%  
}else{
  out.println("<p style='color:red'>해당 이메일은 사용할 수 없습니다!!</p>");
}//if end
%>
  <hr>
  <a href="javascript:history.back()">[다시검색]</a>
  &nbsp;&nbsp;
  <a href="javascript:window.close()">[창닫기]</a>
</div>
  
</body>
</html>



