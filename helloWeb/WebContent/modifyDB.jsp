<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
Connection connection;
Statement statement;
ResultSet resultSet;

String name,id,pw,phone1,phone2,phone3,gender;
%>
<%
	id=(String)session.getAttribute("id");//로그인한 세션으로 찾는거기 때문에 세션 유효기간안에 해야함(디폴트 30분)
	
	String query="select * from member1 where id='"+id+"'";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "dnjsxmf", "dhtmaks1");
	statement = connection.createStatement();
	resultSet= statement.executeQuery(query);
	
	while(resultSet.next()){
		name=resultSet.getString("name");
		pw =resultSet.getString("pw");
		phone1=resultSet.getString("phone1");
		phone2=resultSet.getString("phone2");
		phone3=resultSet.getString("phone3");
		gender=resultSet.getString("gender");
	}

%>
<form action="ModifyOKDB" method="post">
이름:<input type="text" name="name" size="10" value=<%=name %>><br><!-- value값으로 jsp태그면""안해줘도됨 -->
아이디:<%=id %><br>
비밀번호:<input type="text" name="pw" size="10"><br>
전화번호:<select name="phone1">
<option value="010">010</option><!-- 콤보박스 -->
	<option value="016">016</option>
	<option value="017">017</option>
	<option value="018">018</option>
	<option value="019">019</option>
	<option value="011">011</option>
</select> -
<input type="text" name="phone2" size="5" value=<%=phone2 %>> - <input type="text" name="phone3" size="5" value=<%=phone3 %>><br>
<% 
if(gender.equals("man")){

%>
성별구분:<input type="radio" name="gender" value="man" checked="checked">남 &nbsp;<input type="radio" name="gender" value="woman">여<br>
<%
//jsp안에 html 넣기
}else{
%>
성별구분:<input type="radio" name="gender" value="man">남 &nbsp;<input type="radio" name="gender" value="woman" checked="checked">여<br>
<%
		}
%>
		<input type="submit" value="정보수정"> <input type="reset" value="취소">
</form>

</body>
</html>