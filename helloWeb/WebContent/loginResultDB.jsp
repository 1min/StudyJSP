<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!String name,id,pw; %>

<%
	name=(String)session.getAttribute("name");//session ��ü�� �ڵ����� �������
	id=(String)session.getAttribute("id");
	pw=(String)session.getAttribute("pw");
%>
<%=name%>�� �ȳ��ϼ���<br>
<a href="modifyDB.jsp">ȸ������ ����</a>
</body>
</html>