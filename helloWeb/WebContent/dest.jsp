<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
id:<%=request.getAttribute("id") %><br>
pw:<%=request.getAttribute("pw") %><br>
name:<%=request.getAttribute("name") %><br>
name:<%=request.getParameter("name") %>
</body>
</html>