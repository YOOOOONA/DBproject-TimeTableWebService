<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html><head><title>장바구니 수강신청 </title></head>
<body>
<%

String s_id = (String)session.getAttribute("user");

String[] sel_c = request.getParameterValues("select");
String[] del_c = request.getParameterValues("delete");
String sel_c_id = "";
int sel_c_id_no = 0;
String del_c_id = "";
int del_c_id_no = 0;
String result = "";

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

if(sel_c != null){
	for (String val : sel_c){//sel_c 배열의 string 요소를 val변수에 하나씩 받음

		String[] sel_sp = val.split(",");

		sel_c_id = sel_sp[0];
		sel_c_id_no = Integer.parseInt(sel_sp[1]);
		
		CallableStatement cstmt = conn.prepareCall("{call InsertEnroll(?,?,?,?)}");
		cstmt.setString(1, s_id);
		cstmt.setString(2, sel_c_id);
		cstmt.setInt(3, sel_c_id_no);
		cstmt.registerOutParameter(4, java.sql.Types.VARCHAR);
		try {
			cstmt.execute();
			result = cstmt.getString(4);
		} catch(SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage());
		}
		
		cstmt = conn.prepareCall("{call DeleteBasket(?, ?, ?)}");
		cstmt.setString(1, s_id);
		cstmt.setString(2, sel_c_id);
		cstmt.setInt(3, sel_c_id_no);
	
		try {
			cstmt.execute();
		} catch(SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage());
		}
		
	}
	%>
	
	<script>
	alert("<%=result%>");
	</script>
	
	<% 
}
	%>
<% 	
if(del_c != null){
	for (String val : del_c){//sel_c 배열의 string 요소를 val변수에 하나씩 받음

		String[] del_sp = val.split(",");

		del_c_id = del_sp[0];
		del_c_id_no = Integer.parseInt(del_sp[1]);

		CallableStatement cstmt = conn.prepareCall("{call DeleteBasket(?, ?, ?)}");
		cstmt.setString(1, s_id);
		cstmt.setString(2, del_c_id);
		cstmt.setInt(3, del_c_id_no);
	
		cstmt.execute();
	}
	
	%>
	
	<script>
	alert("해제되었습니다.");
	</script>
	
	<% 
}

%>

<script>
location.href="basket_show.jsp";
</script>
</body>
</html>