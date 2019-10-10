<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" %>
<%@page import="java.sql.*" %>
 
<%
 request.setCharacterEncoding("UTF-8");
 String id = request.getParameter("id");
 String pwd = request.getParameter("pwd");
 String name = request.getParameter("name");
 String major = request.getParameter("major");
 String sub = request.getParameter("sub");
 String email = request.getParameter("email");
 String semester = request.getParameter("semester");
 
 Connection conn=null; //DB연결
 PreparedStatement pstmt=null; //SQL문
 ResultSet re = null; //해제
 String dburl = "jdbc:oracle:thin:@localhost:1521:orcl";
 String user="orange"; 
 String passwd="orange";
 String dbdriver = "oracle.jdbc.driver.OracleDriver";
	
 
 
 try{
		Class.forName(dbdriver);
		conn = DriverManager.getConnection (dburl, user, passwd);
	  
		if(id.length()==5){//교수
			pstmt=conn.prepareStatement("Insert into professor values(?,?,?,?,?)");
		    pstmt.setString(1,id);
		    pstmt.setString(2,pwd);
		    pstmt.setString(3,name);
		    pstmt.setString(4,major);
		    pstmt.setString(5,email);
		    re=pstmt.executeQuery();
		}else{//학생
		    pstmt=conn.prepareStatement("Insert into student values(?,?,?,?,?,?,?)");
		    pstmt.setString(1,id);
		    pstmt.setString(2,pwd);
		    pstmt.setString(3,name);
		    pstmt.setString(4,major);
		    pstmt.setString(5,sub);
		    pstmt.setString(6,email);
		    pstmt.setString(7,semester);
		    re=pstmt.executeQuery();
		}
	    System.out.println("---------------------result------------------");//자꾸 여기서 끝남
	    
	    if(re.next()){  
	    	%>
	    	<script>
	    		alert("회원가입이 완료되었습니다.");	//메시지 알림 후
	    		//session.setAttribute("id", id);
	    		
	    	    location.href = "main.jsp";			  
	    	</script>

		<%}
   }catch(Exception e){
		%><script>
		alert("이미 존재하는 회원입니다.");	//메시지 알림 후
		
	    location.href = "joinForm.jsp";			  
	</script>
	<%
    e.printStackTrace();    
    }    %>
   
	    	<script>
	    		alert("회원가입이 완료되었습니다.읭읭?");	//메시지 알림 후
	    		//session.setAttribute("id", id);//이거하면 안돼..
	    		
	    	    location.href = "main.jsp";			  
	    	</script>

		
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 처리중</title>
</head>
<body>
 
</body>
</html>