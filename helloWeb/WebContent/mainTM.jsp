<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%if (session.getAttribute("ValidMem")==null){ %>
<jsp:forward page="loginTM.jsp"></jsp:forward> 
<% 
}

String name= (String)session.getAttribute("name");
String id =(String)session.getAttribute("id");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1><%=name %>�� �ȳ��ϼ���</h1><br>
<form action="logoutTM.jsp" method="post">
	<input type="submit" value="�α׾ƿ�">&nbsp;&nbsp;&nbsp;<input type="button" value="��������" onclick="javascript:window:location='modifyTM.jsp'">
</form>











</body>
</html>