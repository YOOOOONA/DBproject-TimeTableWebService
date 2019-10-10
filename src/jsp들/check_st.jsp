<!-- 교수가 전체 과목목록 중에서 신청자명단을 확인하고자할때 눌러서 오는 창. 여기엔 전체학생 명단확인과 정원확인 및 변동이 가능해야함 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*, java.util.*, java.text.*, oracle.jdbc.OracleTypes"%>
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
<title>수강생 확인</title>
</head>
<body>
	<%@ include file="top2.jsp" %>
	<% if (session_id==null) response.sendRedirect("login.jsp");
	String p_id = (String)session.getAttribute("user");
	String c_id = request.getParameter("c_id");
	int c_id_no = Integer.parseInt(request.getParameter("c_id_no"));
	%>

<table width="75%" align="center" border>
	<br>
	<tr><th>과목번호</th><th>분반</th><th>과목명</th><th>정원</th><th>수강 인원</th></tr>

<% 
Connection myConn = null; 
String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
String user="orange"; 
String passwd="orange";
String dbdriver = "oracle.jdbc.driver.OracleDriver";

String c_name = "";//과목명
int t_max = 0;//정원
String s_id = "";//학생 아이디
String s_major = "";//학생 전공
int s_num = 0;//신청인원 수 

try {
	Class.forName(dbdriver);
	myConn = DriverManager.getConnection (dburl, user, passwd);

} catch(SQLException ex) {
	System.err.println("SQLException: " + ex.getMessage());
}	


String sql = "select t_max from teach where c_id = '"+ c_id + "' and c_id_no = '" + c_id_no + "'";
Statement stmt = myConn.createStatement();
ResultSet rs = stmt.executeQuery(sql);

while(rs.next()){
	t_max = rs.getInt("t_max");
}

sql = "select c_name from course where c_id = '"+ c_id + "' and c_id_no = '" + c_id_no + "'";
rs = stmt.executeQuery(sql);
while(rs.next()){
	c_name = rs.getString("c_name");
}

PreparedStatement pstmt = myConn.prepareStatement("select count(*) s_num from enroll where c_id = ? and c_id_no = ?");
pstmt.setString(1, c_id);
pstmt.setInt(2, c_id_no);
rs = pstmt.executeQuery();

while(rs.next()){
	s_num = rs.getInt("s_num");
}

	%>

<tr>
<td align = "center"><%=c_id%></td>
<td align = "center"><%=c_id_no%></td>
<td align = "center"><%=c_name%></td>
<td align = "center"><%=t_max%></td>
<td align="center"><%=s_num %></td>
	</tr>
	
	
	<table width="75%" align="center" border>
	<br>
	<tr><th>수강생 학번</th><th>수강생 전공</th></tr>

	<%
	sql = "select s.s_id, s.s_major from student s where s.s_id in (select e.s_id from enroll e where c_id = ? and c_id_no = ?)";
PreparedStatement pstmt2 = myConn.prepareStatement(sql);
pstmt2.setString(1, c_id);
pstmt2.setInt(2, c_id_no);

rs = pstmt.executeQuery(sql);

while(rs.next()){
	s_id = rs.getString(1);
	s_major = rs.getString(2);
	%>
		<tr>
		<td align="center"><%=s_id %></td>
		<td align="center"><%=s_major %></td>
		</tr>   
	<%
	}
	stmt.close();

	myConn.close();
	%>
	<form action = "check_st_verify.jsp" method = post>
	<table width="75%" align="center" border>
	<br>
	<tr>
	<td>정원 수정</td><td><input type="text" name = "changed_max" value = "<%=t_max%>"></td>
	<input type = "hidden" name = "c_id" value = <%=c_id%>>
	<input type = "hidden" name = "c_id_no" value = <%=c_id_no%>>
	</tr>   
	</table>
	<br>
	<div align = "center"><td align="center"><input type = "submit" value = "변경"></td></div>
	
</form>
</table>
</body>
</html>