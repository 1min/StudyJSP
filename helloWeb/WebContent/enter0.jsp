<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
request.setCharacterEncoding("EUC-KR");//한글깨짐방지
id=request.getParameter("id");
pw=request.getParameter("pw");
if(id.equals("나") && pw.equals("1234")){
	response.sendRedirect("login0.jsp");
}else{
	response.sendRedirect("join0.jsp");
}


%>
</body>
</html>