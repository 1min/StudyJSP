<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
dispacherjsp.jsp
<hr>
id:<%=request.getAttribute("id") %><br>
pw:<%=request.getAttribute("pw") %>


<form action="dest.jsp" method="post">
name:<input type="text" name="name" size="10">
<input type="submit" value="������">
</form>

<%-- <%
RequestDispatcher dispatcher = request.getRequestDispatcher("/dest.jsp");//���ӹ��� uri�� Path�� �־��� �� ���� ��������
		dispatcher.forward(request, response);
%> --%>
		

</body>
</html>