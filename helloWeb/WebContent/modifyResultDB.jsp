<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=session.getAttribute("name") %>님의 회원정보 수정이 정상 처리되었습니다<br>
<a href="logoutDB.jsp">로그아웃</a> &nbsp;&nbsp;<a href="modifyDB.jsp">정보수정</a>
</body>
</html>