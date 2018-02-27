<%@page import="com.javalec.ex.MemberDtoTM"%>
<%@page import="com.javalec.ex.MemberDaoTM"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%request.setCharacterEncoding("EUC-KR"); %>
<%
String id =(String)session.getAttribute("id");
MemberDaoTM dao = MemberDaoTM.getInstance();
MemberDtoTM dto = dao.getMember(id);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="members.js"></script>
</head>
<body>
<form action="modifyOKTM.jsp" method="post" name="reg_frm">
	아이디:<%=dto.getId() %><br>
	비밀번호:<input type="password" name="pw" size="20"><br>
	비밀번호 확인:<input type="password" name="pw_check" size="20"><br>
	이름:<%=dto.getName() %><br>
	메일:<input type="text" name="eMail" size="20" value="<%=dto.geteMail()%>"><br>
	주소:<input type="text" name="address" size="20" value="<%=dto.getAddress()%>"><br>
	<input type="button" value="수정" onclick="updateInfoConfirm()">&nbsp;&nbsp;&nbsp;
	<input type="reset" value="취소" onclick="javascript:window.location='loginTM.jsp'">

</form>
</body>
</html>