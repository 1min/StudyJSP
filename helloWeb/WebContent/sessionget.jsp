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
Object obj1=session.getAttribute("mySessionName");//"mySessionName"�� �̸��� ���Ǻҷ���
String mySessionName=(String)obj1;//getAttrubute�� ��ȯ���� obj�̹Ƿ� string���� ��ȯ
out.println(mySessionName+"<br>");//mySessionName�� ���ǵ����� ���

Object obj2 = session.getAttribute("myNum");//"myNum"�� �̸��� ���Ǻҷ���
Integer myNum=(Integer)obj2;//getAttrubute�� ��ȯ���� obj�̹Ƿ� string���� ��ȯ
out.println(myNum+"<br>");//myNum�� ���ǵ����� ���

out.println("********************<br>");

String sName;
String sValue;

Enumeration enumeration = session.getAttributeNames();//enum ����ȭ�� ��ü
while(enumeration.hasMoreElements()){//��� ������(���� ��ü)�� �ִٸ�
	sName = enumeration.nextElement().toString();//������ü�� ���ڿ��� ��ȯ
	sValue = session.getAttribute(sName).toString();//getAttribute()��ȯ���� obj��
	out.println("sName"+sName+"<br>");
	out.println("sValue"+sName+"<br>");
}

out.print("**************<br>");

String sessionID=session.getId();//����ID��������
out.println("sessionID:"+sessionID+"<br>");//����ID���
int sessionInter = session.getMaxInactiveInterval();//������ȿ�ð�
out.println("sessionInter"+sessionInter+"<br>");//��Ĺweb.xml�� ������ ������ȿ�ð� ���

out.println("******************<br>");

session.removeAttribute("mySessionName");//mySessionName�̶�� ������ ����
Enumeration enumeration1= session.getAttributeNames();//��� ���ǵ��� ����ȭ
while(enumeration1.hasMoreElements()){
	sName=enumeration1.nextElement().toString();
	sValue=session.getAttribute(sName).toString();
	out.println("sName"+sName+"<br>");//�����̸�(���ǰ�ü�̸�)���
	out.println("sValue"+sValue+"<br>");//���ǰ����
}

out.println("*****************<br>");

session.invalidate();//���Ǿ� ��� ������ ����
if(request.isRequestedSessionIdValid()){
	out.println("session valid");
}else{
	out.println("session invalid");
}

%>
</body>
</html>