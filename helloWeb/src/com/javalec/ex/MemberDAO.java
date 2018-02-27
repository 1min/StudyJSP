package com.javalec.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	//private String url ="jdbc:oracle:thin:@localhost:1521:orcl";
	//private String uid ="dnjsxmf";
	//private String upw = "dhtmaks1";
	
	private DataSource dataSource;//데이터 소스 객체생성
	
	public MemberDAO() {
		// TODO Auto-generated constructor stub
//	try {
//		Class.forName("oracle.jdbc.driver.OracleDriver");
//	}catch(Exception e) {
//		e.printStackTrace();
//	}
		try {
			Context context =new InitialContext();//context를 구하고 InitialContext생성 아마도 자식인듯
			dataSource =(DataSource)context.lookup("java:comp/env/jdbc/Oracle10g");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

public ArrayList<MemberDTO> memberSelect(){
	
	ArrayList<MemberDTO>dtos = new ArrayList<MemberDTO>();
	
	Connection con=null;
	Statement stmt=null;
	ResultSet rs=null;
	
	try {
		//con = DriverManager.getConnection(url,uid,upw);
		con=dataSource.getConnection();
		stmt = con.createStatement();
		rs= stmt.executeQuery("SELECT * FROM MEMBERS");
		
		while(rs.next()) {
			String name=rs.getString("name");
			String id=rs.getString("id");
			String pw=rs.getString("pw");
			String phone1=rs.getString("phone1");
			String phone2=rs.getString("phone2");
			String phone3=rs.getString("phone3");
			String gender=rs.getString("gender");
			
			MemberDTO dto= new MemberDTO(name,id,pw,phone1,phone2,phone3,gender);
			dtos.add(dto);
		}
	}catch(Exception e2){
		e2.printStackTrace();
	}finally {
		try{if(rs!=null)rs.close();
		if(stmt!=null)stmt.close();
		if(con!=null)con.close();
		}catch(Exception e3) {
		e3.printStackTrace();
	}
}
return dtos;
}


}

