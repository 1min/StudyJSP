<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:set var="vatName" value="varValue"/>
vatName : <c:out value="${vatName}"/><br>
<hr>
<c:remove var = "vatName"/>
vatName : <c:out value="${vatName}"/>

<hr>

<c:catch var="error">
	<%=2/0 %>
</c:catch>
<br>
<c:out value="${error}"/><br>

<hr>

<c:if test="${1+2==3}">
1+2=3
</c:if>

<c:if test="${1+2!=3}">
1+2!=3
</c:if>

<hr>

<c:forEach var="fEach" begin="0" end="30" step="3"> <!-- 0부터30까지 0<=30임 -->
${fEach }
</c:forEach>

</body>
</html>