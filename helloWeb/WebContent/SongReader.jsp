<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�뷡 ����</title>
</head>
<body>
<h2>
���� �̸� : <% String filename=request.getParameter("FILENAME"); %>
<%= filename %></h2>
<%
	BufferedReader reader = null;
	try {
		String filepath = application.getRealPath("/WEB-INF/songs/" + filename);

		reader = new BufferedReader(new FileReader(filepath));
		
		while (true) {
			String str = reader.readLine();
			if (str == null)
				break;

			out.print(str + "<br>");
		}
	} catch (IOException ioe) {
		out.println("������ ã�� ���Ͽ����ϴ�.");
	} finally {
		try {
			reader.close();
		} catch (Exception e) {

		}
	}
%>
</body>
</html>