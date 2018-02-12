package com.javalec.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitPa
 */
@WebServlet("/InitPa")
public class InitPa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitPa() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @PostConstruct
    private void postcon() {
		// TODO Auto-generated method stub
    	System.out.println("PostConstruct");
	}
    
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	System.out.println("init");
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy");
	}
	@PreDestroy
	private void destroyer() {
		// TODO Auto-generated method stub
		System.out.println("PreDestroy");
	}
}
