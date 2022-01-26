<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String s_uno = (String)session.getAttribute("__uno");
	String pw = request.getParameter("_pw");
	String checkPw = "";
	
	if(pw == null) pw = "";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_C", "root", "1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from users where uno = " + s_uno);
		
		if(rs.next()) {
			checkPw = rs.getString("upw");
		}
		
		if(checkPw.equals(pw)) {
			response.sendRedirect("User_Update.jsp");
		}
		else {
			response.sendRedirect("User_Pw_Check_Fail.jsp");
		}
		
		stmt.close();
		conn.close();

	}catch(Exception e) {
		response.sendRedirect("pages-error-404.html");
		e.printStackTrace();
	}
%>


</body>
</html>