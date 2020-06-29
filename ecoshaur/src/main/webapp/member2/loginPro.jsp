<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>
<%@ include file="../header.jsp"%>

<style>
 p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight:800;
   }
</style>

<!-- 본문시작 loginPro.jsp-->
<!-- <br><p>회원 로그인</p><br> -->

<div align="center">
<c:if test="${res==1}">
	<c:set var="memid" value="${sessionScope.s_id}" scope="session"/>
	<meta http-equiv="Refresh" content="0;url=/myweb/member2/loginForm.do">
</c:if>	

<c:if test="${res==0}">
	아이디 또는 비밀번호를 확인해주세요.<br>
	<a href="javascript:history.go(-1)">[돌아가기]</a>
</c:if>	
</div>


<!-- 본문끝 -->
<%@ include file="../footer.jsp"%>