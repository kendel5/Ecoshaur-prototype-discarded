<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<!-- 본문시작 mailForm.jsp -->
<div class="container">
 <h3> 메일 보내기 </h3>
 <form method="post" action="mailProc.do">
 <table class="table">
			<tr style="font-family: 'NanumSquare', sans-serif; font-size: 120%;">
				<th>받는사람</th>
				<td><input type="text" name="to" required class="form-control"></td>
			</tr>
			<tr style="font-family: 'NanumSquare', sans-serif; font-size: 120%;">
				<th>보내는사람</th>
				<td><input type="text" name="from" required class="form-control"></td>
			</tr>
			<tr style="font-family: 'NanumSquare', sans-serif; font-size: 120%;">
				<th>제목</th>
				<td><input type="text" name="subject" size="30" maxlength="100"
					required class="form-control"></td>
			</tr>
			<tr style="font-family: 'NanumSquare', sans-serif; font-size: 120%;">
				<th>내용</th>
				<td>
					<textarea class="form-control" id="p_content" name="content"></textarea>
					<script type="text/javascript">
	 					  CKEDITOR.replace('p_content'
	             		   , {height: 500                                                  
	               		  });
				</script>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="메일보내기"
					class="btn btn-success"> <input type="reset" value="취소"
					class="btn btn-success"></td>
			</tr>
		</table>
 </form>
 </div>
<!-- 본문끝 -->
<%@ include file="../e_footer.jsp" %>