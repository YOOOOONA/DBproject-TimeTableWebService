<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String userID = request.getParameter("userID");
String id = null;
String userPassword = request.getParameter("userPassword");
int check = -1;
Connection myConn = null;
Statement stmt = null;
String mySQL = null;
Statement pstmt = null;//
String mySQL2 = null;//
String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
String user = "orange";
String passwd = "orange";
String dbdriver = "oracle.jdbc.driver.OracleDriver";
Class.forName(dbdriver);
myConn = DriverManager.getConnection(dburl, user, passwd);
stmt = myConn.createStatement();
pstmt = myConn.createStatement();//
mySQL = "select s_id from student where s_id='" + userID + "' and s_pwd='"+ userPassword + "'";
mySQL2 = "select p_id from professor where p_id ='"+ userID +"' and p_pwd='"+ userPassword +"'";//

ResultSet myResultSet = stmt.executeQuery(mySQL);
ResultSet myResultSet2 = pstmt.executeQuery(mySQL2);//

if(myResultSet != null){
	if(myResultSet.next())
	{
		id = myResultSet.getString("s_id");
		if(userID.equals(id))
			check = 1;
	}
}//student아이디 체크
if(myResultSet2 != null){
	if(myResultSet2.next())
	{
		id = myResultSet2.getString("p_id");
		if(userID.equals(id))
			check = 1;
	}
}//professor아이디 체크

if(check == 1)//아이디가 있으면 비밀번호확인해야지
{

	try{
		session.setAttribute("user",id);
		session.setAttribute("session_pw", userPassword);
		
		if(id.length()==5){%>
			<script>
				alert("교수 전용 화면으로 전환합니다.");	//메시지 알림 후
			    location.href = "main2.jsp";			  //정보 다시 입력 받음.
			</script>
	  <%}%>
		<script>
		alert("학생 전용 화면으로 전환합니다.");	//메시지 알림 후
	    location.href = "main.jsp";			  //정보 다시 입력 받음.
	</script>
<%
	}catch (Exception e) { System.out.println(e); }
} else{					//사용자 정보가 없을 때
	%>
	<script>
		alert("사용자아이디 혹은 암호가 틀렸습니다");	//메시지 알림 후
	    location.href = "login.jsp";			  //정보 다시 입력 받음.
	</script>
	<%	}	stmt.close();
	  		myConn.close();	%>
