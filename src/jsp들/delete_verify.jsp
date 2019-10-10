<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html><head><title> 수강신청 취소 처리 </title></head>
<body>
<%
	String s_id = (String)session.getAttribute("user");
	String c_id = request.getParameter("c_id");
	int c_id_no = Integer.parseInt(request.getParameter("c_id_no"));
%>
<%
	Connection myConn = null; String result = null;
	String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user="orange"; String passwd="orange";
	String dbdriver = "oracle.jdbc.driver.OracleDriver";
	try {
		Class.forName(dbdriver);
		myConn = DriverManager.getConnection (dburl, user, passwd);
	} catch(SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage());
	}

	CallableStatement cstmt = myConn.prepareCall("{call deleteEnroll(?,?,?,?)}");//깔끔하게 지우기
	cstmt.setString(1, s_id);
	cstmt.setString(2, c_id);
	cstmt.setInt(3, c_id_no);
	cstmt.registerOutParameter(4, java.sql.Types.VARCHAR);
	try {
		cstmt.execute();
		result = cstmt.getString(4);
%>
<script>
	alert("<%= result %>");
	location.href="select.jsp";//취소가 되고나면 다시 수강과목 목록을 보여줘야지
</script>
<%
	} catch(SQLException ex) {
	System.err.println("SQLException: " + ex.getMessage());
	}
	finally {
		if (cstmt != null)
			try { myConn.commit(); cstmt.close(); myConn.close(); }
			catch(SQLException ex) { }
	}
%>
</form></body></html>