package com.javalec.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MembersAllService implements Service {

	public MembersAllService() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<MemberDtoTM> execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		MemberDaoTM dao = MemberDaoTM.getInstance();
		return dao.membersAll();
	
	}
	
	
}
