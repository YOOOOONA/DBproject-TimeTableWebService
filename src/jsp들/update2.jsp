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
<head><title>수강신청 사용자 정보 수정</title></head>
<script type="text/javascript">
	function home3(){
		alert("메인화면으로 돌아가기");
		location.href='main2.jsp';		
	}
</script>
   <body>
<%@ include file="top2.jsp" %>

   <table width="75%" align="center" border>
   <form method="post" action="update_verify2.jsp">
   <br>
   <tr>
   <br>
   <th>아이디</th><th>패스워드</th><th>학과</th><th>이메일</th>
   </tr>

   <%
   if (session_id==null) response.sendRedirect("login.jsp");
 
   Connection myConn = null;
   PreparedStatement pstmt = null;
   String mySQL = null;
   String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
   String user = "orange";
   String password = "orange";
   String dbdriver = "oracle.jdbc.driver.OracleDriver";
   
   String u_id = null;
   String u_pwd = null;
   String u_major = null;
   String u_sub = null;
   String u_email = null;
   String u_semester = null;
   
   ResultSet rs = null;


   Class.forName(dbdriver);
   myConn=DriverManager.getConnection(dburl, user, password);
   
   mySQL = "select p_id, p_pwd, p_major, p_email from professor where p_id = ?";
   pstmt = myConn.prepareStatement(mySQL);
   pstmt.setString(1, session_id);
   
   rs = pstmt.executeQuery();
   
   while(rs.next()){
      u_id = rs.getString("p_id");
      u_pwd = rs.getString("p_pwd");
      u_major = rs.getString("p_major");
      u_email = rs.getString("p_email");
  		
  
   %>
   <tr>
   <td align="center"><span style="color:gray"><%=u_id %></span></td>
   <td align="center"><span style="color:gray"><%=u_pwd %></span></td>
   <td align="center"><span style="color:gray"><%=u_major %></span></td>
   <td align="center"><span style="color:gray"><%=u_email %></span></td>
   </tr>
   <%
   }
   pstmt.close();
   myConn.close();
   %>
   
   <tr>
	   <td><input type="text" name="userID" value =<%=u_id %>></td>
	   <td><input type="text" name="userPassword" value = <%=u_pwd %>></td>
	   <td><input type="text" name="userMajor" value =<%=u_major %>></td>
	   <td><input type="text" name="userEmail" value =<%=u_email %>></td>
   </tr>
   
   

</table>
<br>
<td><div align="center">
<input type = "submit" value = "저장">
</form>
<input type = "button" value = "메인으로" onclick = 'home3()'></div></td>


</body></html>