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
	function home2(){
		alert("메인화면으로 돌아가기");
		location.href='main.jsp';		
	}
</script>
   <body>
<%@ include file="top.jsp" %>


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
   
   mySQL = "select s_id, s_pwd, s_major, s_sub, s_email, s_semester from student where s_id = ?";
   pstmt = myConn.prepareStatement(mySQL); 
   pstmt.setString(1, session_id);
   
   rs = pstmt.executeQuery();
   
   while(rs.next()){
      u_id = rs.getString("s_id");
      u_pwd = rs.getString("s_pwd");
      u_major = rs.getString("s_major");
      u_sub = rs.getString("s_sub");
      u_email = rs.getString("s_email");
      u_semester = rs.getString("s_semester");
  		
        
   %>
   
   <%
   }
 
   pstmt.close();
   myConn.close();
   %>
   
   <table align="center" border>
   <form method="post" action="update_verify.jsp">
   <br><br>
   <tr>
   <th>아이디</th><th>패스워드</th><th>학과</th>
   </tr>
   <tr>
   <br>
   <td align="center"><span style="color:gray"><%=u_id %></span></td>
   <td align="center"><span style="color:gray"><%=u_pwd %></span></td>
   <td align="center"><span style="color:gray"><%=u_major %></span></td>
   </tr>
   <tr>
	   <td><input type="text" name="userID" value =<%=u_id %>></td>
	   <td><input type="text" name="userPassword" value = <%=u_pwd %>></td>
	   <td><input type="text" name="userMajor" value =<%=u_major %>></td>
   </tr>
   <table align="center" border>
   <form method="post" action="update_verify.jsp">
   
   <tr>
   <br>
  <th>복수/부/연계전공</th><th>이메일</th><th>현재학기</th>
   </tr>
   <tr>
   
   <td align="center"><span style="color:gray"><%=u_sub %></span></td>
   <td align="center"><span style="color:gray"><%=u_email %></span></td>
   <td align="center"><span style="color:gray"><%=u_semester %></span></td>
   </tr>   
   
   <tr>
	   <td><input type="text" name="userSub" value =<%=u_sub %>></td>
	   <td><input type="text" name="userEmail" value =<%=u_email %>></td>
	   <td><input type="text" name="userSemester" value =<%=u_semester %>></td>
   </tr>
  
   
</table>
<br>
<td><div align="center">
<input type = "submit" value = "저장">
</form>
<input type = "button" value = "메인으로" onclick = 'home2()'></div></td>
   

</body></html>