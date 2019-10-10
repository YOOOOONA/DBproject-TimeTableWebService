<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>아이디/비밀번호 찾기</title>
</head>
<body>
	<form method = post action = "find_verify.jsp">
	<br><br><br><br><br><br><br><br><br>
	<table width="75%" align="center" border>
		<tr><th colspan = "3">본인 확인을 위해 이름과 이메일을 입력해주세요</th></tr>
	</table>
	<table width="75%" align="center" border>
		<br>
		<tr>
		<td><div align="right"><span style=" font: bold 1.05em/1em Georgia ; color: gray;">이름</span></div></td>
		<td><input type = "text" name = "name"></td>
		</tr>
		<tr>
		<td><div align="right"><span style=" font: bold 1.05em/1em Georgia ; color: gray;">e-mail</span></div></td>
		<td><input type = "text" name = "email"></td>
		</tr>
	</table>
		<br>
		
		<tr>
		<td><div align="center"><input type = "submit" name = "submit" value = "확인">
		<input type = "reset" name = "reset" value="취소"></div></td>
	
	</form>
</body>
</html>