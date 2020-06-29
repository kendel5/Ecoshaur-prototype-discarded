<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>
<%@ include file="../header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style>
 p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight: 800;
   }
</style>

<!-- 본문 시작 mypage.jsp-->
<div class="container">  
             <h3>마이페이지</h3>
                <div class="row">
 <%
			dto.setPw(pw);
			dto.setId(id);
			dto = dao.getMemberUpdate(dto);
			if(dto==null){
				out.print("<strong><p style='text-align:center'>알 수 없는 이유로 로그아웃되었습니다</p></strong>");
				out.print("<p style='text-align:center'><a href='logout.jsp'>[다시시도]</a></p>");
			}
			else{
%>                 
                      <div class="panel panel-default">
                      <div class="panel-heading">
                       <div class="panel-body">
                      <div class="col-md-4 col-xs-12 col-sm-6 col-lg-4">
                      
                       <img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" id="profile-image1" class="img-circle img-responsive"> 
                     
                 
                      </div>
                      <div class="col-md-8 col-xs-12 col-sm-6 col-lg-8" >
                          <div class="container" >
                            <h2><%= dto.getId()%></h2>
                            <p>이름:   <b><%= dto.getMem_name()%></b></p>
                          
                           
                          </div>
                           <hr>
                          <ul class="container details" >
                            <li><p><span class="fa fa-phone one" style="width:50px;"></span><%= dto.getContact_number()%></p></li>
                            <li><p><span class="fa fa-envelope one" style="width:50px;"></span><%= dto.getEmail()%></p></li>
                            <li><p><span class="fa fa-home one" style="width:50px;"></span><%= dto.getZip()%><br>
                            								 <p style="margin-left:50px;"><%= dto.getAddress()%><br>
                            								 <p style="margin-left:50px;"><%= dto.getAddress_r()%></p></li>
                            <li><p><span class="fa fa-briefcase one" style="width:50px;"></span><%
														
							%></p></li>
                          </ul>
                          <hr>
                          <div class="col-sm-5 col-xs-6 tital " >가입일 : <%= dto.getJoined_date()%></div>
                      </div>
                </div>
            </div>
            </div>
            <div class="btn-group">
		<button type='button'
		   class='btn btn-warning pull-center font1'
		   style='font-size:120%;'
		   onclick="location.href='logout.jsp'">로그아웃</button>
		<button type='button'
		   class='btn btn-info pull-center font1'
		   style='font-size:120%;'
		   onclick="location.href='memberUpdate.jsp'">회원정보수정</button>
	</div>
		<button type='button'
		   class='btn btn-danger pull-right font1'
		   style='font-size:120%;'
		   onclick="location.href='memberOut.jsp'">회원탈퇴</button>
		   <br><br>
		   
			<div class="col-sm-2"></div>
		</div>
	</div>
<%
	}
%>




<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 본문 끝 -->		
<%@ include file="../e_footer.jsp" %>