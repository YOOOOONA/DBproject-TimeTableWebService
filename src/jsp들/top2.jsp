<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String session_id = (String) session.getAttribute("user");
String log;
if (session_id == null)
	log = "<a href=login.jsp>로그인</a>";
else log = "<a href=logout.jsp>로그아웃</a>"; 
%>
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
<table 
	width="75%" 
	align="center" 
	bgcolor="#FFFF99" 
	border
	>
<tr>
<td align="center"><b><%=log%></b></td>
<td align="center"><b><a href="update2.jsp">사용자 정보 수정</b></td>
<td align="center"><b><a href="select2.jsp">강의 목록 조회</b></td><!-- 이걸 누르면 전체 강의 과목(과목이름,과목코드,장소,시간,학점)뜨고/ 각 과목 누르면 전체 정원이랑 신청인원 뜨고 누가 신청했는지도 나오고/ 정원클릭하면 조절도 할 수 있게 만들기 -->
</tr>
</table>

<!-- 교수 입장의 수강신청 목록 -->