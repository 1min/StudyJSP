package com.javalec.ex.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.command.BCommand;
import com.javalec.ex.command.BContentCommand;
import com.javalec.ex.command.BDeleteCommand;
import com.javalec.ex.command.BListCommand;
import com.javalec.ex.command.BModifyCommand;
import com.javalec.ex.command.BReplyCommand;
import com.javalec.ex.command.BWriteCommand;

/**
 * Servlet implementation class bFrontController
 */
@WebServlet("*.do")
public class bFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public bFrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("actionDo");

		request.setCharacterEncoding("EUC-KR");

		String viewPage = null;
		BCommand command = null;
		
		String uri= request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		if(com.equals("/write_view.do")) {//웹 브라우저에서 글쓰기 UI화면
			viewPage = "write_view.jsp";
		}else if(com.equals("/write.do")){//'write.do'요청이 들어오면 해당 Command를 생성하여적절한 로직을 싱행 후 'list.do'페이지로 포워딩함
			command = new BWriteCommand();
			command.excute(request,response);
			viewPage="list.do";
		}else if(com.equals("/list.do")) {
			command = new BListCommand();
			command.excute(request,response);
			viewPage="list.jsp";
		}else if(com.equals("/content_view.do")) {
			command = new BContentCommand();
			command.excute(request,response);
			viewPage="content_view.jsp";
		}else if(com.equals("/modifiy.do")) {
			command = new BModifyCommand();
			command.excute(request,response);
			viewPage="list.do";
		}else if(com.equals("/delete.do")) {
			command = new BDeleteCommand();
			command.excute(request,response);
			viewPage="list.do";
		}else if(com.equals("/reply_view.do")) {
			command = new BReplyCommand();
			command.excute(request,response);
			viewPage="list.do";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
		
		
	}
}
