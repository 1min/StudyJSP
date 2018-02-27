<%@page import="com.javalec.ex.MemberDaoTM"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%request.setCharacterEncoding("EUC-KR"); %>
    <jsp:useBean id="dto" class="com.javalec.ex.MemberDtoTM"/>
    <jsp:setProperty name="dto" property="*"/> 
    <!-- 서블릿으로 해도되긴하는데 jsp태그랑 자바스크립트 때문에 jsp파일 사용하는듯 property는 각변수 명을 뜻함 dto의 필드변수들의 이름과 joinTM.jsp 폼에서 보내준 값들의 name이랑 이름이 같으면 property="*"해주면 자동으로 다셋팅됨 아니면 일일이 setProperty 여러줄 해줘야함 -->
    <%
    dto.setrDate(new Timestamp(System.currentTimeMillis()));//setDate의 매개변수가  객체라서 property로 못불러오고 파라미터에 객체를 셋팅해줘야함.
    MemberDaoTM dao = MemberDaoTM.getInstance();
    if(dao.confirmId(dto.getId())==MemberDaoTM.MEMBER_EXISTENT){ //똑같은 아이디가 하나이상 존재할경우
    %>
    <script language="javascript">
    alert("아이디가 이미 존재합니다.");
    history.back();//뒤로 돌아감 즉 뒷페이지가 아니라 입력하기 전인 공란으로 만듬
    </script>
    <% }else{
    int ri=dao.insertMember(dto);
    if(ri==MemberDaoTM.MEMBER_JOIN_SUCCESS){
    	session.setAttribute("id", dto.getId());
    %>
    <script language="javascript">
    alert("회원가입을 축하 합니다.");
    document.location.href="loginTM.jsp";
    </script>
    <%
    }else{
    %>
    <script language="javascript">
alert("회원가입에 실패했습니다.");
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