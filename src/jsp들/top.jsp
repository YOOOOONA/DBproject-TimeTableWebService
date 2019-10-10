
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String session_id = (String) session.getAttribute("user"); //login_verify.jsp에서 session.putValue로 만들었던 session 속성 user의 값 가져옴
String log;
if (session_id == null)
log = "<a href=login.jsp>로그인</a>";
else log = "<a href=logout.jsp>로그아웃</a>"; %>
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
<table width="75%" align="center" bgcolor="#FFFF99" border>
<tr>
<td align="center"><b><%=log%></b></td>
<td align="center"><b><a href="update.jsp">사용자 정보 수정</b></td>
<td align="center"><b><a href="insert.jsp">수강신청 입력</b></td>
<td align="center"><b><a href="select.jsp">수강신청 조회</b></td>
<td align="center"><b><a href="joinForm.jsp">회원가입</b></td>
<td align="center"><b><a href="basket.jsp">장바구니</b></td>
</tr>
</table>
