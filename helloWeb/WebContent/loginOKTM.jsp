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
	
	MemberDaoTM dao = MemberDaoTM.getInstance();//��ü����
	int checkNum = dao.userCheck(id, pw);
	if(checkNum == -1){
%>
<script type="text/javascript">
alert("���̵� �������� �ʾƿ�");
history.go(-1);
</script>
<%
	}else if(checkNum==0){
%>
<script type="text/javascript">
alert("��й�ȣ�� Ʋ����");
history.go(-1);
</script>
<%
}else if(checkNum==1){
	MemberDtoTM dto = dao.getMember(id);
	
	if(dto==null){//�����ͼ� �������� �迡 �ѹ��� ���� ������ ��ħ �� getMember�� �������� �������� dto�� ���������
%>
<script type="text/javascript">
alert("�������� �ʴ� ȸ���Դϴ�");
history.go(-1);
</script>
<%
	}else{
		String name =dto.getName();
		session.setAttribute("id",id);
		session.setAttribute("name", name);
		session.setAttribute("ValidMem", "yes");//�̹� �α��� �ߴ��� Ȯ�ο뵵
		response.sendRedirect("mainTM.jsp");
	}
}
%>

</body>
</html>