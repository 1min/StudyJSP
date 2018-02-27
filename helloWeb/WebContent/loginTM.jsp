<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%if(session.getAttribute("VaildMem")!=null){ //VaildMem세션이 남아있는경우 즉 이미 로그인했으면 main.TM.jsp페이지로 보냄%>
<jsp:forward page="mainTM.jsp"></jsp:forward> <!-- mainTM.jsp로보내줌 -->
<% } %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="loginOKTM.jsp" method="post">
아이디:<input type="text" name="id" value="<%if(session.getAttribute("id")!=null) out.println(session.getAttribute("id"));%>"><br/> <!-- 로그인한 전적이 있는경우 id를 채워줌 -->
비밀번호:<input type="password" name="pw"><br>
<input type="submit" value="로그인"> &nbsp;&nbsp;<input type="button" value="회원가입" onclick="javascript:window.location='joinTM.jsp'">
<!-- onclick 부분은 자바스크립트 코드이며 회원가입 클릭시 joinTM.jsp로 보내줌 -->
</form>
</body>
</html>