<%@page import="java.util.Enumeration"%>
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
Object obj1=session.getAttribute("mySessionName");//"mySessionName"란 이름의 세션불러옴
String mySessionName=(String)obj1;//getAttrubute의 반환값이 obj이므로 string으로 변환
out.println(mySessionName+"<br>");//mySessionName의 세션데이터 출력

Object obj2 = session.getAttribute("myNum");//"myNum"란 이름의 세션불러옴
Integer myNum=(Integer)obj2;//getAttrubute의 반환값이 obj이므로 string으로 변환
out.println(myNum+"<br>");//myNum의 세션데이터 출력

out.println("********************<br>");

String sName;
String sValue;

Enumeration enumeration = session.getAttributeNames();//enum 직렬화된 객체
while(enumeration.hasMoreElements()){//계속 데이터(담은 객체)가 있다면
	sName = enumeration.nextElement().toString();//다음객체를 문자열로 변환
	sValue = session.getAttribute(sName).toString();//getAttribute()반환값은 obj임
	out.println("sName"+sName+"<br>");
	out.println("sValue"+sName+"<br>");
}

out.print("**************<br>");

String sessionID=session.getId();//세션ID를가져옴
out.println("sessionID:"+sessionID+"<br>");//세션ID출력
int sessionInter = session.getMaxInactiveInterval();//세션유효시간
out.println("sessionInter"+sessionInter+"<br>");//톰캣web.xml에 설정된 세션유효시간 출력

out.println("******************<br>");

session.removeAttribute("mySessionName");//mySessionName이라는 세션을 삭제
Enumeration enumeration1= session.getAttributeNames();//모든 세션들을 직렬화
while(enumeration1.hasMoreElements()){
	sName=enumeration1.nextElement().toString();
	sValue=session.getAttribute(sName).toString();
	out.println("sName"+sName+"<br>");//세션이름(세션객체이름)출력
	out.println("sValue"+sValue+"<br>");//세션값출력
}

out.println("*****************<br>");

session.invalidate();//세션안 모든 데이터 삭제
if(request.isRequestedSessionIdValid()){
	out.println("session valid");
}else{
	out.println("session invalid");
}

%>
</body>
</html>