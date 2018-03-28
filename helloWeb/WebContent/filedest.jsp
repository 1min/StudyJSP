<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.File" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>노래 목록</title>
</head>
<body>
<h2>노래 파일 목록</h2> 
<%
 	File song = new File(application.getRealPath("/WEB-INF/songs"));
 	String[] lists = song.list();
 	for (String list : lists) {
 		out.print("<a href='SongReader.jsp?FILENAME=" + list + "'>" + list + "<BR></a>");
 	}
 %> 
</body>
</html>