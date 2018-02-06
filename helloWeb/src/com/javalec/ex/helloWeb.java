package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class helloWeb
 */
@WebServlet("/hWEB")
public class helloWeb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public helloWeb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("helloWeb~~~~ get git test");
		response.setContentType("text/html;charset=euc-kr");
		
		PrintWriter writer = response.getWriter();//브라우저에 출력하기위한 스트림

		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>get방식 입니다</h1>");		
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("helloWeb~~~~ post");
		
		response.setContentType("text/html;charset=euc-kr");
		
		PrintWriter writer = response.getWriter();//브라우저에 출력하기위한 스트림

		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>post방식 입니다</h1>");		
		writer.println("</body>");
		writer.println("</html>");

		writer.close();
	}

}
