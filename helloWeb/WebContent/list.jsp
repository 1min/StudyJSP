<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<table width="500" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>제목</td>
			<td>날짜</td>
			<td>히트</td>
		</tr>
		<c:forEach items="${list}" var="dto"> <!-- ${list}는 dao가 반환한 dtos 그리고 dto는 그 하나하나 끝까지 arraylist의 길이만큼 -->
		<tr>
			<td>${dto.bId}</td>
			<td>${dto.bName}</td>
			<td>
				<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach><!-- 들여쓰기 -->
				<a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a></td><!-- id값에 맞는 (select)컨텐츠 가져오기 -->
			<td>${dto.bDate}</td><!-- 생성일 -->
			<td>${dto.bHit}</td><!-- 조회수 -->
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5"> <a href="write_view.do">글작성</a> </td>
		</tr>
	</table>
	
</body>
</html>