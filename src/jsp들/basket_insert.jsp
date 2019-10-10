<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*, java.util.*, oracle.jdbc.OracleTypes"%>
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
<title>장바구니 추가</title>
</head>
<body>
<%@ include file="basket.jsp" %>
<% if (session_id==null) response.sendRedirect("login.jsp"); %>
	<table width="90%" align="center" border>
	<form method = "post" action = "basket_verify.jsp">
	<br>
	<tr><th>과목번호</th><th>분반</th><th>과목명</th><th>시간</th><th>장소</th><th>학점</th><th>추가</th></tr>
	
	<%
	String s_id = (String)session.getAttribute("user");
	
	Connection conn = null; 
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
		conn = DriverManager.getConnection (dburl, user, passwd);
	} catch(SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage());
	}	
	
	CallableStatement cstmt = conn.prepareCall("{call ShowBasketCandidate(?,?)}");
	cstmt.setString(1, s_id);
	cstmt.registerOutParameter(2, OracleTypes.CURSOR);

	cstmt.execute();
	
	ResultSet rs = (ResultSet)cstmt.getObject(2);
	
	while (rs.next()){
		c_id = rs.getString(1);
		c_id_no = rs.getInt(2);
		c_name = rs.getString(3);
		t_where = rs.getString(4);
		t_time = rs.getString(5);
		c_unit = rs.getInt(6);
	%>
	<tr>
	<td align="center"><%= c_id %></td><td align="center"><%= c_id_no %></td>
	<td align="center"><%= c_name %></td><td align="center"><%= t_time %></td>
	<td align="center"><%= t_where %></td><td align="center"><%= c_unit %></td>
	<td align="center"><input type = "checkbox" name = "select" value = "<%=c_id%>,<%=c_id_no%>"></td>
	</tr>
	<%
	}
	cstmt.close();
	conn.close();
	%>
	</table>
	<br>
	<td><div align = "center"><input type = "submit" value = "저장"></div></td>
	
</form>

</body>
</html>