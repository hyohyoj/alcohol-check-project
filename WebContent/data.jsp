<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="javamysql.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String r_lat= request.getParameter("r_lat");
	String r_lng=request.getParameter("r_lng");
	String rme=request.getParameter("rme");
	String deviceid=request.getParameter("aid");
	String aph=request.getParameter("aph");
	//싱글톤 방식으로 자바 클래스를 불러옵니다.
	ConnectDB connectDB = ConnectDB.getInstance();
	String returns = connectDB.connectionDB(r_lat, r_lng, rme, deviceid, aph);
	out.print(returns);
%>
</body>
</html>