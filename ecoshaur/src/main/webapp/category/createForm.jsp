<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">




<!-- 본문 시작 template.jsp-->
<br><br><br><br><br><br><br><br>


	<div class='title'>음원 등록</div>
	<form method="post" action="createForm.do"  onsubmit="return mediaCheck(this)" enctype="multipart/form-data">
		<table align='center' border='1px' cellspacing='0px' cellpadding='5px'>
			<tr>
				<th>포스터</th>
				<td><input type='file' name='posterMF' size='50' accept=".gif, .png, .jpg"></td>
			</tr>
		</table>

		<div class='bottom'>
			<input type='submit' value='등록'>
			<input type='button' value='음원목록' onclick="location.href='./list.do'">
			<input type='button' value='HOME' onclick="location.href='../mediagroup/list.do'">
		</div>

	</form>
<br><br><br><br><br>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 본문 끝 -->		
<%@ include file="../e_footer.jsp" %>