<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
 p {
    font-family: "Nanum Gothic", sans-serif;
    font-size: 30px;
    font-weight:800;
   }
</style>

<title>idCheckForm.jsp</title>
</head>
<body>
<div style="text-align: center">
<br><br><br><p>아이디 중복 확인</p><br>
  <form method="post"
        action="idCheckProc.jsp"
        onsubmit="return blankCheck(this)">
        아이디:
    <input type="text" name="id"
           maxlength="10" autofocus>
    <input type="submit" value="중복확인">
  </form>
</div>
  
<script>
function blankCheck(f){
 var id=f.id.value;
 id=id.trim();
 if(id.length<5){
  alert("아이디는 5글자 이상 입력해 주세요");
  return false;
 }//if end
 return true;
}//end
</script>

</body>
</html>



