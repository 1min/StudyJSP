<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%!
String a,b;
%>
<%
a=request.getParameter("id");
b=request.getParameter("pw");%>
</head>
<body>
아이디:<%=a %><br>
비밀번호:<%=b %>
</body>
</html>