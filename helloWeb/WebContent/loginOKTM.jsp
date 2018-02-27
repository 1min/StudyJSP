<%@page import="com.javalec.ex.MemberDtoTM"%>
<%@page import="com.javalec.ex.MemberDaoTM"%>
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
	request.setCharacterEncoding("EUC-KR"); 
	String id =request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDaoTM dao = MemberDaoTM.getInstance();//객체생성
	int checkNum = dao.userCheck(id, pw);
	if(checkNum == -1){
%>
<script type="text/javascript">
alert("아이디가 존재하지 않아요");
history.go(-1);
</script>
<%
	}else if(checkNum==0){
%>
<script type="text/javascript">
alert("비밀번호가 틀려요");
history.go(-1);
</script>
<%
}else if(checkNum==1){
	MemberDtoTM dto = dao.getMember(id);
	
	if(dto==null){//데이터셋 가져오는 김에 한번더 검증 과정을 거침 즉 getMember의 쿼리문이 에러나서 dto에 못담을경우
%>
<script type="text/javascript">
alert("존재하지 않는 회원입니다");
history.go(-1);
</script>
<%
	}else{
		String name =dto.getName();
		session.setAttribute("id",id);
		session.setAttribute("name", name);
		session.setAttribute("ValidMem", "yes");//이미 로그인 했는지 확인용도
		response.sendRedirect("mainTM.jsp");
	}
}
%>

</body>
</html>