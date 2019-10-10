<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수강인원 확인</title>
</head>
<body>
	<%

	Connection conn = null;
	String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user="orange"; 
	String passwd="orange";
	String dbdriver = "oracle.jdbc.driver.OracleDriver";
	try {
		Class.forName(dbdriver);
		conn = DriverManager.getConnection (dburl, user, passwd);
	} catch(SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage());
	}
	
	
	String t_max = request.getParameter("changed_max");
	String c_id = request.getParameter("c_id");
	int c_id_no = Integer.parseInt(request.getParameter("c_id_no"));

	String sql = "update teach set t_max = ? where c_id = ? and c_id_no = ?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, t_max);
	pstmt.setString(2, c_id);
	pstmt.setInt(3, c_id_no);
	
	pstmt.execute();
	
	%>
<script>
	alert("정원이 변경되었습니다.");
	location.href="select2.jsp";
</script>

</body>
</html>