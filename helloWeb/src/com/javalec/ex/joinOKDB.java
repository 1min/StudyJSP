package com.javalec.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class joinOKDB
 */
@WebServlet("/joinOKDB")
public class joinOKDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Connection connection;
	private Statement stmt;
	
	private String name,id,pw,phone1,phone2,phone3,gender;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public joinOKDB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
		actionDo(request, response);//사용자 정의함수
	}

	private void actionDo(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");//한글깨짐방지
		
		name= request.getParameter("name");
		id= request.getParameter("id");
		pw=request.getParameter("pw");
		phone1=request.getParameter("phone1");
		phone2=request.getParameter("phone2");
		phone3=request.getParameter("phone3");
		gender=request.getParameter("gender");
		
		String query = "insert into member1 values('" + name + "', '" + id + "', '" + pw + "', '" + phone1 + "', '" + phone2 + "', '"+ phone3 + "', '" + gender + "')";
		//컬럼순서대로 values(1컬럼값 2컬럼값....)을 넣으면 member1(컬럼명)을 생략해도됨 중요한건 SQL문의 문자열데이터는 '' 작은따옴표 안에 들어가야함 큰따옴표X
		//큰따옴표는 자바의 문자열. 자바의 문자열을 ''작은따옴표에 연결연산자 "+변수+"를 통해 집어넣을수 있다 쿼리형식만 맞추면된다. ""가 ''안에서 감싸진게 아니라 규격만 맞춘거임 "'"+"'"된형태
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","dnjsxmf","dhtmaks1");
			stmt = connection.createStatement();
			int i=stmt.executeUpdate(query);
			if(i==1) {
				System.out.println("insert success");
				response.sendRedirect("joinResultDB.jsp");
			}else {
				System.out.println("insert fail");
				response.sendRedirect("joinDB.html");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(stmt!=null)stmt.close();
				if(connection!=null)connection.close();
			}catch(Exception e2) {e2.printStackTrace();}
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	
}
