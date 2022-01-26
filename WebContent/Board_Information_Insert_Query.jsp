<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
    <% request.setCharacterEncoding("euc-kr"); %>
<%
	String rno= request.getParameter("_rno");
	String uno= (String)session.getAttribute("__uno");

	String cp= request.getParameter("_cp");
	String bcontent=request.getParameter("_bcontent");
	String btitle=request.getParameter("_btitle");

	out.println(rno);
	out.println(uno);
	
//	String id= (String)session.getAttribute("__id");
%>



<%
try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_C","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("insert into board(rno,uno,cp,bcontent,btitle) values("+rno+","+uno+",'"+cp+"','"+bcontent+"','"+btitle+"')");
		stmt.close();
		conn.close();
		response.sendRedirect("Report_Management.jsp");
		}catch(Exception e){
		e.printStackTrace();

	}

%>
</body>
</html>