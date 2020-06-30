<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="ssi.jsp"%>
<%@ include file="auth.jsp"%>
<%@ include file="../eco.jsp"%>

<style>

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
        ma
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
<%
  if(s_id.equals("guest") || s_passwd.equals("guest") || s_mlevel.equals("guest")) {
    //로그인을 하지 않은 경우
    //쿠키-------------------------------
    //myweb서버에 의해 사용자PC에 저장된
    //모든 쿠키값 가져오기
    Cookie cookies[]=request.getCookies();
    String c_id="";
    if(cookies!=null){//쿠키가 존재하는지?
      for(int i=0; i<cookies.length; i++){
        Cookie cookie=cookies[i];
        //쿠키변수 c_id 인지?
        if(cookie.getName().equals("c_id")==true){
          c_id=cookie.getValue();
        }//if end
      }//for end
    }//if end
    //----------------------------------
%>
<div class="login-form">    
    <form name="loginfrm"
	      method="post"
	      action="loginProc.jsp"
	      onsubmit="return loginCheck(this)">
		<input type="image" src="../images/flower.png">
    	<h4 class="modal-title"></h4>
        <div class="form-group">
            <input type="text" name="id" value="<%=c_id%>" placeholder="아이디" required>
        </div>
        <div class="form-group">
            <input type="password" name="passwd" placeholder="비밀번호" required>
        </div>
        <div class="form-group small clearfix">
            <input type="checkbox" name="c_id"  value="SAVE" <%if(!(c_id.isEmpty())){out.print("checked");}%>>아이디저장
            <a href="#" class="forgot-link">아이디/비밀번호를 잊으셨나요?</a>
        </div> 
        <input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">              
    </form>			
    <div class="text-center small">회원이 아니신가요? <a href="agreement.jsp">회원가입</a></div>
</div>

<%
  }else{
    //로그인 성공했다면
    out.println("<strong>" + s_id + "</strong>님");
    out.println("<a href='logout.jsp'>[로그아웃]</a>");
    out.println("<br><br>");
    out.println("[회원정보수정]");
    out.println("[회원탈퇴]");    
  }//if end
%>
<!-- 본문끝 -->


<%@ include file="../footer.jsp"%>

