<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%if(session.getAttribute("VaildMem")!=null){ //VaildMem������ �����ִ°�� �� �̹� �α��������� main.TM.jsp�������� ����%>
<jsp:forward page="mainTM.jsp"></jsp:forward> <!-- mainTM.jsp�κ����� -->
<% } %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="loginOKTM.jsp" method="post">
���̵�:<input type="text" name="id" value="<%if(session.getAttribute("id")!=null) out.println(session.getAttribute("id"));%>"><br/> <!-- �α����� ������ �ִ°�� id�� ä���� -->
��й�ȣ:<input type="password" name="pw"><br>
<input type="submit" value="�α���"> &nbsp;&nbsp;<input type="button" value="ȸ������" onclick="javascript:window.location='joinTM.jsp'">
<!-- onclick �κ��� �ڹٽ�ũ��Ʈ �ڵ��̸� ȸ������ Ŭ���� joinTM.jsp�� ������ -->
</form>
</body>
</html>