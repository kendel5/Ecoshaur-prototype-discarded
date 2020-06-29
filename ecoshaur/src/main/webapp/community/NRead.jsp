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
								<th>말머리</th>
								<th>제목</th>
								<th>내용</th>
								<th>이미지</th>
								<th>파일크기</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
							<tr>
								<td>${dto.postno}</td>
								<td>${dto.head}</td>
								<td>${dto.title}</td>
								<td>${dto.contents}</td>
								<td>${dto.image_name}</td>
								<td>${dto.image_size}</td>
								<td>${dto.post_date}</td>
								<td>${dto.view}</td>								
							</tr>								
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