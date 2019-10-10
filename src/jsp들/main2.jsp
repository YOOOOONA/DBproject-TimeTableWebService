<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <meta charset="EUC-KR">
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
<title>데이터베이스를 활용한 수강신청 시스템입니다.</title> </head>
<body>
<%@ include file="top2.jsp"%>
<table width="75%" align="center" height="100%">
</table>
<table width="75%" align="center" height="100%">
<br><br>
<% if (session_id != null) { %>
<tr> <td align="center"><span style="color:gray;"><%=session_id%>교수님 방문을 환영합니다.</span></td> </tr>
<% } else { %>
<tr> <td align="center"><span style="color:red;">로그인한 후 사용하세요.</span></td> </tr>
<% } %>
 </table></body> </html>

	