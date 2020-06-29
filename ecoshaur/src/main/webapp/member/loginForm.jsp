<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>
<%@ include file="auth.jsp"%>
<%@ include file="../header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style>
 p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight: 800;
   }
   
</style>

<!-- 본문 시작 loginForm.jsp-->
<br>
<br>
<br>
<br>
<%
	if(s_id.equals("guest") 	||
	   s_pw.equals("guest") ||
	   s_grade.equals("guest"))
	{ // 로그인을 하지않은 경우
	// 쿠키값 가져오기------------------------------------------------
	Cookie cookies[] = request.getCookies();
	String c_id = "";
	if(cookies != null){ // 쿠키가 존재하는지?
		for(int i=0;i<cookies.length; i++){
			Cookie cookie = cookies[i];
			// 쿠키변수 c_id 인지?
			if(cookie.getName().equals("c_id") == true){
				c_id = cookie.getValue();
			}
		}// for end
	}// if end
	// -----------------------------------------------------------
%>

<h4>* 로 그 인 *</h4>
<div class="container" align="center">
  <div class="col-lg-4"></div>
  <div class="col-lg-5">

  <!-- 점보트론 -->
   <div class="jumbotron" style="padding-top: 20px;" >
   <!-- 로그인 정보를 숨기면서 전송post -->
   <form method="post" action="loginProc.jsp">
    <div class="form-group">
     <input type="text" class="form-control" value="<%=c_id%>" placeholder="아이디" name="id" maxlength="20" required>

    </div>

    <div class="form-group">
     <input type="password" class="form-control" placeholder="비밀번호" name="passwd" maxlength="20" required>
    </div>
    <input type="submit" class="btn btn-primary form-control" value="로그인">
	
	<tr>
	  <td colspan="2">
	     <input type="checkbox" name="c_id"  value="SAVE" <%if(!(c_id.isEmpty())){out.print("checked");}%>>아이디저장
	     &nbsp;&nbsp;
	     <a href="agreement.jsp">회원가입</a>
	     &nbsp;&nbsp;
	     아이디/비번찾기
	  </td>
	</tr>
	
   </form>
  </div>
 </div>
</div>

<%
  }else{
    //로그인 성공했다면
    out.println("<strong>" + s_id + "</strong>님");
    %>
    <br>
    <a href="logout.jsp" class="btn">
          <span class="glyphicon glyphicon-off"></span> 로그아웃 
    </a>
    
    <% 
    out.println("<br><br>");
    %>
    <a href="memberUpdate.jsp" class="btn btn-primary">
          <span class="glyphicon glyphicon-user"></span> 회원정보수정
     </a>

      <a href="memberDelForm.jsp" class="btn btn-danger">
          <span class="glyphicon glyphicon-remove"></span> 회원탈퇴 
      </a>
       
   <%
  }//if end
  %>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 본문 끝 -->		
<%@ include file="../e_footer.jsp" %>