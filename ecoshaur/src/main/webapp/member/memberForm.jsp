<%@page import="java.sql.Timestamp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../header.jsp"%>

<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style>
 p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight: 800;
   }
   
   margin: 0 auto;
</style>

<!-- 본문 시작 memberForm.jsp-->
<br>
<br>
<br>
<br>
<div class="container">
<form class="form-horizontal"
	  name="regForm"
      method="post"
      action="memberProc."
      onsubmit="return memberCheck(this)" >
      
        <div class="py-5 text-center">
            <h4>회원가입</h4>
            <span style="color:red; font-weight: bold; font-size:120%;" class="font1">* 필수입력</span>
        </div>
        <div class="col-sm-1"></div><div class="col-sm-10">
            <h4 class="mb-3 text-left"><strong>회원정보</strong></h4>
            
                <div class="form-group text-left font1">
                    <div class="input-group">
                    	<span class="input-group-addon" style="min-width:120px;">* 아이디</span>
                        <input type="text" class="form-control" name="id" id="id" size="15" placeholder="아이디 중복확인을 해주세요" readonly>
                    	<div class="input-group-btn">
                     		<input class="btn btn-default" type="button" value="ID중복확인" onclick="idCheck()">
                    	</div>
                    </div>
                </div>
                
                <div class="form-group text-left">
                    <div class="input-group">
                    	<span class="input-group-addon font1" style="min-width:120px;">* 비밀번호</span>
                        <input type="pw" class="form-control" name="pw" id="pw" size="15" required>
                    </div>
                </div>
                
                <div class="form-group text-left">
                    <div class="input-group">
                    	<span class="input-group-addon font1" style="min-width:120px;">* 비밀번호 확인</span>
                        <input type="pw" class="form-control" name="repasswd" id="repasswd" size="15" required>
                    </div>
                </div>
                
                <div class="form-group text-left font1">
                    <div class="input-group">
                    	<span class="input-group-addon" style="min-width:120px;">* 이름</span>
                        <input type="text" class="form-control" name="mem_name" id="mem_name" size="15" required>
                    </div>
                </div>
                
                <div class="form-group text-left font1">
                    <div class="input-group">
                    	<span class="input-group-addon" style="min-width:120px;">* 생년월일</span>
                        <input type="text" class="form-control" name="birth" id="birth" size="15" required> ex)1990-01-01
                    </div> 
                </div> 
                
                <div class="form-group text-left font1">
                    <div class="input-group">
                    	<span class="input-group-addon" style="min-width:120px;">* 이메일</span>
                        <input type="email" class="form-control" name="email" id="email" readonly>
                        <div class="input-group-btn">
                     		<input class="btn btn-default" type="button" value="Email 중복확인" onclick="emailCheck()">
                    	</div>
                    </div>
                </div>

				<div class="form-group text-left font1">
                    <div class="input-group">
                    	<span class="input-group-addon" style="min-width:120px;">* 연락처</span>
                        <input type="text" class="form-control" name="contact_number" id="contact_number" size="15">
                    </div>
                </div>
                
                <div class="form-group text-left font1">
                    <div class="input-group">
                    	<span class="input-group-addon" style="min-width:120px;">* 우편번호</span>
                        <input type="email" class="form-control" name="zip" id="zip" size='7' readonly>
                        <div class="input-group-btn">
                     		<input type="button" value="주소찾기" class="btn btn-default" onclick="DaumPostcode()">
                    	</div>
                    </div>
                    <div class="input-group">
                    	<span class="input-group-addon" style="min-width:120px;">* 주소</span>
                        <input type="text" class="form-control" name="address" id="address" size='45' readonly>
                    	<span class="input-group-addon" style="min-width:100px;">나머지 주소</span>
                        <input type="text" class="form-control" name="address_r" id="address_r" size='45' >
                    </div>
                </div>
                
                
                <hr class="mb-4">
       
		</div><div class="col-sm-1"></div>
		<tr>
        <td colspan="2">
			<input type="submit" class="btn btn-outline-success" value="회원가입">
			<input type="reset" class="btn btn-outline-info" value="취소">
		</td>
		</tr>
		</form>
    </div>
	
	
<!-- ----- DAUM 우편번호 API 시작 ----- -->
<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 110px;position:absolute;top:50%;left:50%;margin-left:-150px;margin-left:-250px;z-index:3;">
  <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">

</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }
    
    function DaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
        	
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address1').value = fullAddr;

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
                
                $('#address2').focus();
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);
      

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>
<!-- ----- DAUM 우편번호 API 종료----- -->


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 본문 끝 -->		
<%@ include file="../e_footer.jsp" %>