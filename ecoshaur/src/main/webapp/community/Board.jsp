<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice.jsp</title>
<style>
p {
	font-family: "Nanum Gothic", sans-serif;
	font-size: 30px;
	font-weight: 800;
}
</style>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean"
	rel="stylesheet">
</head>

<!-- 본문 시작 Notice.jsp-->
<body>
	<div class="container">
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel-body">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>작성일</th>
								<th>작성자</th>
								<th>조회수</th>
								<th>좋아요</th>
								<th>싫어요</th>
							</tr>
						</thead>
						<c:forEach var="dto" items="${list}">
							<tr>
								<td>${dto.postno}</td>
								<td><a href="../community/BRead.do?postno=${dto.postno}">${dto.title}</a></td>
								<td>${dto.post_date}</td>
								<td>${dto.id}</td>
								<td>${dto.view}</td>
								<td>${dto.good}</td>
								<td>${dto.bad}</td>
							</tr>
								
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>




<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!-- 본문 끝 -->
<%@ include file="../e_footer.jsp"%>