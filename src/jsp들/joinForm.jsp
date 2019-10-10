<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="NewFile.css">
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

<title>회원가입</title>
</head>

<script type="text/javascript">
	function home(){
		alert("로그인화면으로 돌아가기");
		location.href='login.jsp';
		
	}
</script>
<body>
<form name="Join" action="joinProcess.jsp" method="post">
<center>
<table border=1>
	<tr>
		<br><br>
		<td colspan="2" align=center >
	 	<b><font size=5>회원가입</font></b>
	 	</td>
	 	<br><br>
	</tr>
	 <tr><td align=center><b>아이디  </b></td><td><input type="text" name="id"></td></tr>
	 <tr><td align=center><b>비밀번호  </b></td><td><input type="password" name="pwd"></td></tr>
	 <tr><td align=center><b>이름  </b></td><td><input type="text" name="name"></td></tr>
	 <tr><td align=center><b>제 1 전공  </b></td><td><input type="text" name="major" size=15></td></tr>
	 <tr><td align=center><b>다중 전공  </b></td><td><input type="text" name="sub" size=15></td></tr>
	 <tr><td align=center><b>이메일  </b></td><td><input type="text" name="email" size=30></td></tr>
	 <tr><td align=center><b>학기  </b></td><td><input type="text" name="semester"></td></tr>
	 <tr>
		<td colspan="2" align=center>
		<input type="submit" color="green" value="회원가입"> <!-- 회원가입을 하면 joinProcess.jsp로 넘어가게된다. -->
		<input type="button" value="로그인" onclick='home()'> 
		</td>
	 </tr>
 
</table>
</center>
</form>
</body>
</html>