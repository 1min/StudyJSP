<%@page import="com.javalec.ex.MemberDaoTM"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>

<jsp:useBean id="dto" class="com.javalec.ex.MemberDtoTM" scope="page" />
<jsp:setProperty name="dto" property="*" /><!-- 바로이전 폼에 뿌려준 데이터를 dto에 모두 뿌리기 -->

<%
	String id = (String)session.getAttribute("id");
	dto.setId(id);
	
	MemberDaoTM dao = MemberDaoTM.getInstance();
	int ri = dao.updateMember(dto);
	
	if(ri == 1) {
%>
	<script language="javascript">
		alert("정보수정 되었습니다.");
		document.location.href="mainTM.jsp";
	</script>
<%
	} else {
%>
	<script language="javascript">
		alert("정보수정 실패 입니다.");
		history.go(-1);
	</script>
<%
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>