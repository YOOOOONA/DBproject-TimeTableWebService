<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
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
<head><title>수강신청 입력</title></head>
<body>
	<%@ include file="top.jsp" %>
	<% if (session_id==null) response.sendRedirect("login.jsp"); %>
	<table width="90%" align="center" border>
	<br>
	<tr><th>과목번호</th><th>분반</th><th>과목명</th><th>시간</th><th>장소</th><th>학점</th><th>수강신청</th></tr>
	
	<%
		Connection myConn = null; 
		Statement stmt = null;
		ResultSet myResultSet = null; //널로 초깅화
		String mySQL = "";
		String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user="orange"; 
		String passwd="orange";
		String dbdriver = "oracle.jdbc.driver.OracleDriver";
		
		
		try {
			Class.forName(dbdriver);
			myConn = DriverManager.getConnection (dburl, user, passwd);
			stmt = myConn.createStatement();//stmt설정했지
		} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}
		
		String sql = "{? = call Date2EnrollYear(sysdate)}";
		CallableStatement yStmt = myConn.prepareCall(sql);//ystmt 콜러블로 불렀지
		yStmt.registerOutParameter(1, java.sql.Types.INTEGER);
		yStmt.execute();//statement실행
		int nYear = yStmt.getInt(1);//statement결과 인트에 넣어줬지
		
		String sql2 = "{? = call Date2EnrollSemester(sysdate)}";
		CallableStatement eStmt = myConn.prepareCall(sql2);//estmt 콜러블로 불렀지
		eStmt.registerOutParameter(1, java.sql.Types.INTEGER);
		eStmt.execute();
		int nSemester = eStmt.getInt(1);//nSemester로 스테이트 결과 넣어줬지
		
		mySQL = "select c.c_id, c.c_id_no, c_name, c_unit, t_time, t_where from course c, teach t where c.c_id = t.c_id and c.c_id_no = t.c_id_no and (t.c_id, t.c_id_no ) in (select t.c_id, t.c_id_no from teach t where t_year ='" +  nYear + "'and t_semester ='" + nSemester + "'and (c_id, c_id_no) not in (select c_id, c_id_no from enroll where s_id='" + session_id + "') )";
		
		
		myResultSet = stmt.executeQuery(mySQL);//resultSet에  stmt쿼리 실행 결과 넣었고
		
		if (myResultSet != null) {//result값이 null이 아니면 
			while (myResultSet.next()) {//값 받아오자
				
				String c_id = myResultSet.getString("c_id");//id컬럼 받아오고
				int c_id_no = myResultSet.getInt("c_id_no");
				String c_name = myResultSet.getString("c_name");
				String t_time = myResultSet.getString("t_time");
				String t_where = myResultSet.getString("t_where");
				int c_unit = myResultSet.getInt("c_unit");
	%>
<tr>
<td align="center"><span style="color:gray"><%= c_id %></span></td><td align="center"><span style="color:gray"><%= c_id_no %></span></td>
<td align="center"><span style="color:gray"><%= c_name %></span></td><td align="center"><span style="color:gray"><%= t_time %></span></td>
<td align="center"><span style="color:gray"><%= t_where %></span></td><td align="center"><span style="color:gray"><%= c_unit %></span></td>
<td align="center"><a href="insert_verify.jsp?c_id=<%= c_id %>&c_id_no=<%=c_id_no %>"><span style="color:blue">신청</span></a></td>
</tr>
<%
			}
		}
stmt.close(); myConn.close();
%>
</table></body></html>