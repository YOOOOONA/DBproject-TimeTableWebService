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
<title>수강신청 조회</title>
</head>
<body>
	<%@ include file="top2.jsp" %>
	<% if (session_id==null) response.sendRedirect("login.jsp"); %>
	<table width="75%" align="center" border>
	<br>
	<tr><th>과목번호</th><th>분반</th><th>과목명</th><th>시간</th><th>장소</th><th>학점</th><th>수강생</th></tr>
	
	<%
	String p_id = (String)session.getAttribute("user");

	%>
	<% 
		Connection myConn = null; 
		String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user="orange"; 
		String passwd="orange";
		String dbdriver = "oracle.jdbc.driver.OracleDriver";
	
		
		String c_id = "";
		int c_id_no = 0;
		String c_name = "";
		String t_time = "";
		String t_where = "";
		int c_unit = 0;
	
		try {
			Class.forName(dbdriver);
			myConn = DriverManager.getConnection (dburl, user, passwd);
		} catch(SQLException ex) {
			System.err.println("SQLException: " + ex.getMessage());
		}	
		
		String sql = "{? = call Date2EnrollYear(sysdate)}";
		CallableStatement yStmt = myConn.prepareCall(sql);
		yStmt.registerOutParameter(1, java.sql.Types.INTEGER);
		yStmt.execute();
		int nYear = yStmt.getInt(1);
		
		String sql2 = "{? = call Date2EnrollSemester(sysdate)}";
		CallableStatement eStmt = myConn.prepareCall(sql2);
		eStmt.registerOutParameter(1, java.sql.Types.INTEGER);
		eStmt.execute();
		int nSemester = eStmt.getInt(1);
		
		CallableStatement cstmt = myConn.prepareCall("{call selectTimeTable2(?,?,?,?)}");
		cstmt.setString(1, p_id);
		cstmt.setInt(2, nYear);
		cstmt.setInt(3, nSemester);
		cstmt.registerOutParameter(4, OracleTypes.CURSOR);
		
		cstmt.execute();
		
		ResultSet rs = (ResultSet)cstmt.getObject(4);
		
		while (rs.next()){
			c_id = rs.getString(1);
			c_id_no = rs.getInt(2);
			c_name = rs.getString(3);
			c_unit = rs.getInt(4);
			t_where = rs.getString(5);
			t_time = rs.getString(6);
						
	%>

	<tr>
	<td align="center"><span style="color:gray"><%= c_id %></span></td> <td align="center"><span style="color:gray"><%= c_id_no %></span></td>
	<td align="center"><span style="color:gray"><%= c_name %></span></td><td align="center"><span style="color:gray"><%= t_time %></span></td>
	<td align="center"><span style="color:gray"><%= t_where %></span></td><td align="center"><span style="color:gray"><%= c_unit %></span></td>
	<td align="center"><a href="check_st.jsp?c_id=<%= c_id %>&c_id_no=<%=c_id_no %>"><span style="color:blue">확인하기</span></a></td>
	</tr>
	

	<%
		
		}
		rs.close();
		myConn.close();
		cstmt.close();
		eStmt.close();
		
		
	%>
	</table>
	
</body>
</html>