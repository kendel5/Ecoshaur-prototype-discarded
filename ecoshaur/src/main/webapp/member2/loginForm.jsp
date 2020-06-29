<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>
<%@ include file="auth.jsp"%>
<%@ include file="../header.jsp"%>

<style>
p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight: 800;
   }
   
    body {
       color: #000;
	   font-family: 'Varela Round', sans-serif;
	}
	

	.form-control {
		box-shadow: none;
		border-color: #ddd;
	}
	.form-control:focus {
		border-color: #4aba70; 
	}
	.login-form {
        width: 350px;
		margin: 0 auto;
		padding: 30px 0;
	}
    .login-form form {
        color: #434343;
		border-radius: 1px;
    	margin-bottom: 15px;
        background: #fff;
		border: 1px solid #f3f3f3;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
	}
	.login-form h4 {
		text-align: center;
		font-size: 22px;
        margin-bottom: 20px;
	}
    .login-form .avatar {
        color: #fff;
		margin: 0 auto 30px;
        text-align: center;
		width: 80px;
		height: 80px;
		border-radius: 50%;
		z-index: 9;
		padding: 15px;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
    .login-form .avatar i {
        font-size: 62px;
    }
    .login-form .form-group {
        margin-bottom: 20px;
    }
	.login-form .form-control, .login-form .btn {
		min-height: 40px;
		border-radius: 2px; 
        transition: all 0.5s;
	}
	.login-form .close {
        position: absolute;
		top: 15px;
		right: 15px;
	}
	.login-form .btn {
		background: #00D7FF;
		border: none;
		line-height: normal;
	}
	.login-form .btn:hover, .login-form .btn:focus {
		background: 	#DC143C;
	}
    .login-form .checkbox-inline {
        float: left;
    }
    .login-form input[type="checkbox"] {
        margin-top: 2px;
    }
    .login-form .forgot-link {
        float: right;
    }
    .login-form .small {
        font-size: 13px;
    }
    .login-form a {
        color: 	#DC143C;
    }  
} 
</style>

<!-- 본문시작 loginForm.jsp -->
<div class="login-form" align="center">
<!-- <p>로그인</p><br> -->
<c:if test="${empty sessionScope.memid}">
<%
	Cookie[] cookies=request.getCookies();
	String c_id="";
	if(cookies!=null){
	  for(int idx=0; idx<cookies.length; idx++){
	    Cookie item=cookies[idx];
	    if(item.getName().equals("c_id")==true){
	      c_id=item.getValue();
	    }//if end
	  }//for end
	}//if end
%>
	<form name="loginfrm" method="post" action="./loginPro.do" onsubmit="return loginCheck(this)">
	<input type="image" src="../images/Train.JPG">
    <h4 class="modal-title"></h4>
        <div class="form-group">
            <input type="text" name="id" placeholder="Username" required>
        </div>
        <div class="form-group">
            <input type="password" name="passwd" placeholder="Password" required>
        </div>
        <div class="form-group small clearfix">
            <input type="checkbox" name="c_id" value="SAVE" <%if(!c_id.isEmpty()){out.print("checked");} %>> 아이디 저장
            <a href="#" class="forgot-link">아이디/비밀번호를 잊으셨나요?</a>
        </div> 
        <input type="submit" class="btn btn-primary btn-block btn-lg" value="login">              
    </form>			
    <div class="text-center small">회원이 아니신가요? <a href="agreement.jsp">회원가입</a></div>
</c:if>
<c:if test="${sessionScope.memid!=null}">
	${sessionScope.memid} 님이 방문하셨습니다.
		<form method="post" action="./logout.do">
			<input type="submit" class="btn btn-primary" value="로그아웃">
		</form>
		<form method="post" action="./modifyForm.do">
			<input type="hidden" name="id" value="${sessionScope.memid}">
			<input type="submit" class="btn btn-primary" value="회원정보변경">
		</form>
		<form method="post" action="./withdraw.do">
			<input type="submit" class="btn btn-primary" value="회원탈퇴">
		</form>
</c:if>
</div>
<!-- 본문끝 -->
<%@ include file="../footer.jsp"%>

