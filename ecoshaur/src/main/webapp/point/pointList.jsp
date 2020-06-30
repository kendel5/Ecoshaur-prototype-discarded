<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../eco.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<!-- 본문 시작 pointList.jsp-->
<!-- <p>게시판</p><br> -->
<%-- <div class="container">
   <div class="row">
      <c:forEach var="dto" items="${list}">
<<<<<<< Updated upstream
         <table class="table ta"
                    <span>넘버 : ${dto.no}</span><br>
                	<span>ID : ${dto.id}</span><br>
                	<span>포인트 : ${dto.point}</span><br>
                	<span>포인트날짜 : ${dto.date}</span>
                 </div>
            </div>
        </div>
=======
		<table class="table table-hover">
			<tr>
				<th>프로필사진</th>
				<th>닉네임</th>
				<th>포인트</th>
				<th>등급</th>
			</tr>
			<tr>
             	<td>${dto.pro_name}</td>
             	<td>${dto.mem_name}</td>
             	<td>${dto.point}
            	<td>${dto.grade}</td>
			</tr>
		</table>
>>>>>>> Stashed changes
     </c:forEach>
   </div>
</div> --%>A 


<!-- 본문 끝 -->			
<%@ include file="../footer.jsp" %>