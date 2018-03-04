<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="objelOK.jsp" method="get">
아이디:<input type="text" name="id"><br>
비밀번호:<input type="password" name="pw">
<input type="submit" value="login">
</form>

<%

application.setAttribute("application_name", "application_value");//같은 어플리케이션구동기간에 존재하는 이름과 값설정
session.setAttribute("session_name", "session_value");// 세션 이름과 값설정
pageContext.setAttribute("page_name","page_value");//같은 페이지에서 사용가능한 이름과 갑설정
request.setAttribute("reqeust_name", "request_value");//같은 request(받는부분)요청에서 사용가능한 이름과 값설정
%>

</body>
</html>