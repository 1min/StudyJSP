<%@page import="com.javalec.ex.MemberDaoTM"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("EUC-KR"); %>
    <jsp:useBean id="dto" class="com.javalec.ex.MemberDtoTM"/>
    <jsp:setProperty name="dto" property="*"/> 
    <!-- �������� �ص��Ǳ��ϴµ� jsp�±׶� �ڹٽ�ũ��Ʈ ������ jsp���� ����ϴµ� property�� ������ ���� ���� dto�� �ʵ庯������ �̸��� joinTM.jsp ������ ������ ������ name�̶� �̸��� ������ property="*"���ָ� �ڵ����� �ټ��õ� �ƴϸ� ������ setProperty ������ ������� -->
    <%
    dto.setrDate(new Timestamp(System.currentTimeMillis()));//setDate�� �Ű�������  ��ü�� property�� ���ҷ����� �Ķ���Ϳ� ��ü�� �����������.
    MemberDaoTM dao = MemberDaoTM.getInstance();
    if(dao.confirmId(dto.getId())==MemberDaoTM.MEMBER_EXISTENT){ //�Ȱ��� ���̵� �ϳ��̻� �����Ұ��
    %>
    <script language="javascript">
    alert("���̵� �̹� �����մϴ�.");
    history.back();//�ڷ� ���ư� �� ���������� �ƴ϶� �Է��ϱ� ���� �������� ����
    </script>
    <% }else{
    int ri=dao.insertMember(dto);
    if(ri==MemberDaoTM.MEMBER_JOIN_SUCCESS){
    	session.setAttribute("id", dto.getId());
    %>
    <script language="javascript">
    alert("ȸ�������� ���� �մϴ�.");
    document.location.href="loginTM.jsp";
    </script>
    <%
    }else{
    %>
    <script language="javascript">
alert("ȸ�����Կ� �����߽��ϴ�.");
document.location.href="loginTM.jsp";
</script>
<%
    }
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