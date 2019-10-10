<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <meta charset="UTF-8"> <title>수강신청 시스템 로그인</title> </head>
<!-- 여기잉이이이 -->
<style>
  table {
    width: 80%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    border-left:none;
    border-right:none;
  }
  a { text-decoration:none }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
    border-left:none;
    border-right:none;
  }
  th:nth-child(2n), td:nth-child(2n) {
    background-color: #bbdefb;
  }
  th:nth-child(2n+1), td:nth-child(2n+1) {
    background-color: #e3f2fd;
  }
</style>
<!-- 여기까지 -->
<script type="text/javascript">
	function home1(){
		alert("메인화면으로 돌아가기");
		location.href='main.jsp';
		
	}
</script>
<body>

<table width="75%" align="center" bgcolor="#FFFF99" border>
<tr> 
	<br><br><br><br><br><br><br><br><br>
	<td colspan = "3"><div align="center"><span style="font:bold">아이디와 패스워드를 입력하세요</span></div></td>
</tr>
</table>
<br>
<table width="75%" align="center" border>
	<form method="post" action="login_verify.jsp">
		<tr>
		<td><div align="right"><span style=" font: bold 1.05em/1em Georgia ; color: gray;">아이디</span></div></td>
		<td><div align="center"><input type="text" name="userID"></div></td>
		</tr> 
		<tr>
		<td><div align="right"><span style=" font: bold 1.05em/1em Georgia ; color: gray;">패스워드</span></div></td>
		<td><div align="center"><input type="password" name="userPassword"></div></td>
		</tr>
	
</table>
<br>
	
		<tr><td colspan=2><div align="center">
			<INPUT TYPE="SUBMIT" NAME="Submit" VALUE="로그인"> 
			<INPUT TYPE="RESET" VALUE="취소">
			<INPUT TYPE="button" VALUE="메인으로" onclick='home1()'>
			<a href ="joinForm.jsp">회원가입</a>  <!-- 회원가입을 누르면 a태그를 통해서 joinForm으로 이동한다. -->
			<a href ="find.jsp">아이디/비밀번호 찾기</a>
			
		</div></td>
		</tr>
	</form>

</body>
</html>
