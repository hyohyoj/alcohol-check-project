<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("_id");
	String pw = request.getParameter("_pw");
	
	if(id == null) id = "";
	if(pw == null) pw = "";
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		
		String sql = "select * from users"
				+ " where uid = '" + id + "'"
				+ " and upw = '" + pw + "'";

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_C", "root", "1234");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			String name = rs.getString("uname");
			String uno = rs.getString("uno");
			session.setAttribute("__name", name);
			session.setAttribute("__uno", uno);
			response.sendRedirect("Map.jsp");
		}else {
			response.sendRedirect("Login_Fail.jsp");
		}
		
		rs.close();
		stmt.close();
		conn.close();
	}catch(Exception e) {
		response.sendRedirect("pages-error-404.html");
		e.printStackTrace();
	}
%>
</body>
</html>