<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>

���̵�:<%=id%><br>
��й�ȣ:<%=pw %>

<hr>

���̵�:${id}<br>
���̵�:${param.id }<br>
��й�ȣ:${param.pw }<br>

���̵�:${param["id"]}<br><!-- ���� ���� ��� �ٸ� ǥ���� -->
��й�ȣ:${param["pw"]}

<hr>

applicationScope:${applicationScope.application_name }<br>
sessionScope:${sessionScope.session_name }<br>
pageScope:${pageScope.page_name }<br>
requestScope:${reqeustScope.request_name }

<hr>

context �ʱ�ȭ �Ķ����<br><!-- ������������ �����ִ� WEB-INF���� web.xml�� ������context�Ķ���� -->
${initParam.con_name }<br> <!-- web.xml�� context param�±׾ȿ� ������ con_name�� ���� �ҷ��� ���������� getServletContext().getInitParameter("con_name");��ü -->
${initParam.con_id }<br><!-- web.xml�� context param�±׾ȿ� ������ con_id�� ���� �ҷ��� -->
${initParam.con_pw }<br>

</body>
</html>