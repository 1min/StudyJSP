<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%
String id=request.getParameter("id");
String pw=request.getParameter("pw");
%>

<body>
	아이디:<%=id%> 비번:<%=pw%>님 환영합니다. 접속하셨습니다.
	
</body>
</html>