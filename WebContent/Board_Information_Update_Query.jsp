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

	int bno =Integer.parseInt(request.getParameter("_bno"));
	String uno1= request.getParameter("_uno");
//	int uno  = Integer.parseInt(uno1);
	int uno  = 32001;
	String cp= request.getParameter("_cp");
	String bcontent=request.getParameter("_bcontent");
	String btitle=request.getParameter("_btitle");
	
	out.println(bcontent);
	
//	String id= (String)session.getAttribute("__id");
	

	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/testdb_C","root","1234");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("Update board set btitle='"+btitle+"',uno='"+uno+"',cp='"+cp+"',bcontent='"+bcontent+"',btitle='"+btitle+"',bdate=default where bno="+bno+"");
		stmt.close();
		conn.close();
		response.sendRedirect("Board_Management.jsp");
		}catch(Exception e){
		e.printStackTrace();

	}
		
%>
</body>
</html>