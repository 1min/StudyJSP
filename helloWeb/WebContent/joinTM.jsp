<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script language="javascript" src="members.js"></script>
<form action="joinOKTM.jsp" method="post" name="reg_frm">
아이디:<input type="text" name="id" size="20"><br>
비밀번호:<input type="password" name="pw" size="20"><br>
비밀번호 확인:<input type="password" name="pw_check" size="20"><br>
이름:<input type="text" name="name" size="20">
메일:<input type="text" name="eMail" size="20"><br>
주소:<input type="text" name="address" size="50"><br>
<input type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp;  <input type="reset" value="취소" onclick="javascript:window.location='loginTM.jsp'">

<!-- onclick="infoConfirm()"메소드는 form에 사용자정의 자바스크립트 member.js안의 메소드이며 역할은 폼이 채워져있는지 확인하고 채워져있으면 submit하고 아니면 alert띄우고 빈폼에 포커스 띄워줌 -->
</form>
</body>
</html>