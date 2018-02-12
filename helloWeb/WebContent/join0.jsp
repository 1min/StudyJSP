<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
String id,pw;

%>

<%
id=request.getParameter("id");
pw=request.getParameter("pw");
%>

	아이디:<%=id%> 비번:<%=pw%>라고 잘못 입력한님 가입을하셔야죠.
	

</body>
</html>