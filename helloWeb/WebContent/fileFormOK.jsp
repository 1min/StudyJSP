<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%

String path=request.getRealPath("fileFolder");//WebConten안의 사용자정의 업로드 파일용 폴더 주소 즉이름

int size=1024*1024*10;//10M 최대 10메가 까지 업로드가능하게 *100해주면 100M까지 가능할듯
String file = "";// 업로드한 파일이름 담을용도
String oriFile = "";//원본파일 파일 중복으로인한 덮어쓰기 방지를 위해 중복이름이 발생할경우 뒤에 들어온 파일이 파일이름(1)처럼 인덱스가 붙게 만듬 oriFile은 인덱스가 붙기전 실제파일이름

try{//파일 업로드하는부분
	MultipartRequest multi = new MultipartRequest(request, path, size,"EUC-KR",new DefaultFileRenamePolicy());
	//request는 request객체고 path는 얼로드파일용 폴더주소 9줄에 만든거 size는 최대파일크기제한 11줄에 있음, "EUC-KR"은 인코딩타입, new DefalutFileRenamePolicy()는 이름이 중복된 파일이
	//발생할경우 파일이름(1) 파일이름(2)처럼 인덱스를 붙여주기 위한 객체
	
	Enumeration files = multi.getFileNames();//업로드된 파일이름들을 가져옴
	String str =(String)files.nextElement();//nextElement는 커서를 한칸이동인데 커서는 0부터 시작 즉 첫번째 파일이름을 가져옴
	
	file=multi.getFilesystemName(str);//파일이름
	oriFile=multi.getOriginalFileName(str);//실제파일이름
	//솔직이 이jsp파일 코드에서 file,oriFile부분을 쓰는거 같지않음 MultipartRequest부분에서 파일업로드시킨걸 저장하는 용도 같음
}catch(Exception e){
	e.printStackTrace();
}


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
파일 업로드가 완료 되었소
</body>
</html>