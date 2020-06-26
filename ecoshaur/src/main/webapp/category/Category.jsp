<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

 <jsp:include page="../header.jsp"></jsp:include>
 
<!-- 헤더  -->
 <%@ include file="../header.jsp" %> 

<!-- 본문 시작 template.jsp-->
<br><br><br><br><br><br><br><br>




<div class="container">

   <nav class="category">
      <div class="list">
         <ul class="menu">
            <li class="active"><strong>전체보기</strong></li>
            <li> <a href="CategoryDT">컴퓨터</a> </li>
            <li> <a href="/dp/dpCat.do?dpCatCd=S001026000">TV/음향기기</a> </li>
            <li> <a href="/dp/dpCat.do?dpCatCd=S001001000">콘솔/게이밍</a></li>
            <li><a href="/dp/dpCat.do?dpCatCd=S001002000">카메라</a></li>
         </ul>
      </div>
   </nav>
        <div class="row">
        
          <c:forEach var="dto" items="${list}">
            <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                <div class="card">
                    <img class="card-img-top" src="https://picsum.photos/200/150/?random">
                    <div class="card-block">
                        <h4 class="card-title">${dto.category_code}</h4>
                        <div class="meta">
                            <a href="#">Friends</a>
                        </div>
                        <div class="card-text">
                            Tawshif is a web designer living in Bangladesh.
                        </div>
                    </div>
                    <div class="card-footer">
                        <span class="float-right">Joined in 2013</span>
                        <span><i class=""></i>75 Friends</span>
                    </div>
                </div>
            </div>
            </c:forEach>
            
            
        </div>
</div>


<br><br><br><br><br>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 본문 끝 -->      
<%@ include file="../e_footer.jsp" %>