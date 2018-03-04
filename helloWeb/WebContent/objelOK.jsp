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

아이디:<%=id%><br>
비밀번호:<%=pw %>

<hr>

아이디:${id}<br>
아이디:${param.id }<br>
비밀번호:${param.pw }<br>

아이디:${param["id"]}<br><!-- 위와 같은 결과 다른 표기방식 -->
비밀번호:${param["pw"]}

<hr>

applicationScope:${applicationScope.application_name }<br>
sessionScope:${sessionScope.session_name }<br>
pageScope:${pageScope.page_name }<br>
requestScope:${reqeustScope.request_name }

<hr>

context 초기화 파라미터<br><!-- 전페이지에서 쓸수있는 WEB-INF안의 web.xml에 저장한context파라미터 -->
${initParam.con_name }<br> <!-- web.xml의 context param태그안에 저장한 con_name의 값을 불러옴 서블릿에서의 getServletContext().getInitParameter("con_name");대체 -->
${initParam.con_id }<br><!-- web.xml의 context param태그안에 저장한 con_id의 값을 불러옴 -->
${initParam.con_pw }<br>

</body>
</html>