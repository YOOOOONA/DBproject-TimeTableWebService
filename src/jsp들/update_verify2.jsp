<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
<head><title> 교수님 정보 수정 </title></head>
<body>
<%

   request.setCharacterEncoding("UTF-8");
   String userID=request.getParameter("userID");
   String userPassword=request.getParameter("userPassword");
   String userMajor=request.getParameter("userMajor");
   String userEmail=request.getParameter("userEmail");
   

   Connection myConn = null; String result = null;
   String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
   String user="orange"; 
   String passwd="orange";
   String dbdriver = "oracle.jdbc.driver.OracleDriver";
   try {
      Class.forName(dbdriver);
      myConn = DriverManager.getConnection (dburl, user, passwd);
   } catch(SQLException ex) {
      System.err.println("SQLException: " + ex.getMessage());
   }   

   String sMessage = "수정되었습니다";
   
   PreparedStatement stmt = myConn.prepareStatement("UPDATE professor SET p_id = ?, p_pwd = ?, p_major = ?,  p_email = ? WHERE p_id = ?");
   stmt.setString(1, userID);
   stmt.setString(2, userPassword);
   stmt.setString(3, userMajor);
   stmt.setString(4, userEmail);
   stmt.setString(5, userID);
   
         
   try {
      stmt.executeUpdate();
      
   } catch(SQLException ex) {
      
      if (ex.getErrorCode() == 20004) sMessage="암호는 4자리 이상이어야 합니다"; //여기선 에러코드에 - 안 붙임
      else if (ex.getErrorCode() == 20005) sMessage="암호에 공란은 입력되지 않습니다.";
      else sMessage="잠시 후 다시 시도하십시오";
   
   }

   %>
   
<script>
   alert("<%= sMessage %>");
   location.href = "update2.jsp";
</script>

   <%
   stmt.close();
   myConn.close();
   %>
 
</body>
</html>