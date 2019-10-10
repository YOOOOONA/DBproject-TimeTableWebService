<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }

  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }

  th:nth-child(2n), td:nth-child(2n) {
    background-color: #bbdefb;
  }

  th:nth-child(2n+1), td:nth-child(2n+1) {
    background-color: #e3f2fd;
  }
  
</style>
<title>장바구니</title>
</head>
<body>
<%@ include file="top.jsp" %>
	<% if (session_id==null) response.sendRedirect("login.jsp"); %>
	<br>
	<table width="75%" align="center" bgcolor="#FFFF99" border>
	<tr>
	<td align="center"><a href="basket_insert.jsp">장바구니 추가</a></td>
	<td align="center"><a href="basket_show.jsp">장바구니 조회</a></td>
	</tr>
	</table>
</body>
</html>	