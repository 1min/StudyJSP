package com.javalec.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginOKDB
 */
@WebServlet("/LoginOKDB")
public class LoginOKDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private ResultSet resultSet;
	private Connection connection;
	private Statement stmt;
	
	private String name,id,pw,phone1,phone2,phone3,gender;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginOKDB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request,response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		id=request.getParameter("id");
		pw=request.getParameter("pw");
		
		String query="select * from member1 where id='"+id+"' and pw='"+pw+"'";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "dnjsxmf", "dhtmaks1");
			stmt = connection.createStatement();
			resultSet= stmt.executeQuery(query);
			
			while(resultSet.next()) {
				name=resultSet.getString("name");
				id=resultSet.getString("id");
				pw=resultSet.getString("pw");
				phone1=resultSet.getString("phone1");
				phone2=resultSet.getString("phone2");
				phone3=resultSet.getString("phone3");
				gender=resultSet.getString("gender");
			}
			
			HttpSession httpSession=request.getSession();//브라우저 하나당 하나의 덩어리 세션이 존재함
			httpSession.setAttribute("name", name);//name 세션에는 name 데이터가 들어감
			httpSession.setAttribute("id", id);//id 세션에는 id 데이터가 들어감
			httpSession.setAttribute("pw", pw);//pw 세션에는 pw 데이터가 들어감
			
			response.sendRedirect("loginResultDB.jsp");//세션을 실어서 loginResultDb.jsp로보냄
		}catch(Exception e){
			e.printStackTrace();
			
		}finally {
			try {
				if(resultSet !=null)resultSet.close();
				if(stmt != null)stmt.close();
				if(connection !=null)stmt.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
