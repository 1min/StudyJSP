<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="member" class="com.javalec.ex.MemberInfo" scope="page"></jsp:useBean>
    <jsp:setProperty name="member" property="name" value="ȫ�浿"/>
    <jsp:setProperty name="member" property="id" value="abc"/>
    <jsp:setProperty name="member" property="pw" value="123"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
�̸�: <jsp:getProperty name="member" property="name"/><br> <!-- jsp�±׹��� -->
���̵�: <jsp:getProperty name="member" property="id"/><br>
��й�ȣ: <jsp:getProperty name="member" property="pw"/><br>

<hr>

�̸�: ${member.name }<br> <!-- EL���� -->
���̵�: ${member.id }<br>
��й�ȣ: ${member.pw }<br>
<%!int dnjsxmf=3; %>
�׽�Ʈ0:<%=dnjsxmf %><br>
�׽�Ʈ1:${dnjsxmf}<br>
�׽�Ʈ2:${"dnjsxmf"}<br>
�׽�Ʈ3:${true}<br>
�׽�Ʈ4:${111}<br>
</body>
</html>