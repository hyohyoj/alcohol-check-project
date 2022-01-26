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
	String rno = request.getParameter("_rno");

	if(rno == null) rno = "";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_C", "root", "1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from report where rno = " + rno);
		
		if(rs.next()) {
			stmt.executeUpdate("update report set rcheck = true where rno = " + rno);
			response.sendRedirect("Map.jsp");
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