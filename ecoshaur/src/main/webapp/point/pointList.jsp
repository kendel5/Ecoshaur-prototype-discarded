<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../header.jsp"%>
<%@ include file="ssi.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<!-- 본문 시작 pointList.jsp-->
<!-- <p>게시판</p><br> -->

<%
  ArrayList<PointDTO> list=dao.list();
  if(list==null){
    out.println("해당 자료가 존재하지 않습니다.");
  }else{
%>
       전체 글 갯수 : <%=list.size()%>
    <br>
    <table class="table table-hover">
    <tr>
       <th>넘버</th>
       <th>ID</th>
       <th>포인트</th>
       <th>포인트날짜</th>
    </tr>  
<%
    for(int i=0; i<list.size(); i++){
      dto=list.get(i);
%>
      <tr>
         <td><%=dto.getNo()%></td>
         <td><%=dto.getId()%></td>
         <td><%=dto.getPoint()%></td>
         <td><%=dto.getDate().substring(0,10)%></td>
      </tr>
<%      
    }//for end    
    out.print("</table>");    
  }//if end
%>

<!-- 본문 끝 -->			
<%@ include file="../footer.jsp" %>