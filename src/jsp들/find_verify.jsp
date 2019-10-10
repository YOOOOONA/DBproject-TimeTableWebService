<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기 중</title>
</head>
<body>
	<%@ include file="find.jsp" %>

	<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String id = "";
	String pwd = "";

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
	
	String sql = "select s_id, s_pwd from student where s_name = ? and s_email = ?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, name);
	stmt.setString(2, email);
	ResultSet rs = stmt.executeQuery();
	if(rs.next()){
		id = rs.getString(1);
		pwd = rs.getString(2);
		
	
	%>
	
	<p align = "center">
	<%=name %>님의 아이디는 <b><%=id%></b>이고 
	비밀번호는 <b><%=pwd %></b>입니다.
	</p>

<% 
}
else{
	
	sql = "select p_id, p_pwd from professor where p_name = ? and p_email = ?";
	stmt = conn.prepareStatement(sql);
	stmt.setString(1, name);
	stmt.setString(2, email);
	rs = stmt.executeQuery();
	if (rs.next()){
		id = rs.getString(1);
		pwd = rs.getString(2);
		
		%>
		
		<p align = "center">
		<%=name %>님의 아이디는 <b><%=id%></b>이고 
		비밀번호는 <b><%=pwd %></b>입니다.
		</p>

	<% 
	}else{
		%>
		<p align = "center">
		해당되는 정보가 조회되지 않습니다. 다시 입력해주세요.
		</p>
			
		<%
	}

}

stmt.close();
conn.close();
%>
	<div align = "center">
	<button type = "button" onclick="location.href='main.jsp'">메인으로 돌아가기</button>

</body>
</html>