<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html><head><title>장바구니 추가 </title></head>
<body>
<%

String s_id = (String)session.getAttribute("user");

String[] sel_c = request.getParameterValues("select");
String sel_c_id = "";
int sel_c_id_no = 0;

Connection conn = null;
String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
String user="orange"; String passwd="orange";
String dbdriver = "oracle.jdbc.driver.OracleDriver";
try {
	Class.forName(dbdriver);
	conn = DriverManager.getConnection (dburl, user, passwd);
} catch(SQLException ex) {
	System.err.println("SQLException: " + ex.getMessage());
}
	

for (String val : sel_c){//sel_c 배열의 string 요소를 val변수에 하나씩 받음

	String[] sel_sp = val.split(",");

	sel_c_id = sel_sp[0];
	sel_c_id_no = Integer.parseInt(sel_sp[1]);

	CallableStatement cstmt = conn.prepareCall("{call InsertBasket(?, ?, ?)}");
	cstmt.setString(1, s_id);
	cstmt.setString(2, sel_c_id);
	cstmt.setInt(3, sel_c_id_no);
	
	cstmt.execute();
}

%>

<script>
location.href="basket_insert.jsp";
</script>
</body>
</html>