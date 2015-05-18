package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.IndexAction;



@WebServlet("*.kosta")
public class ControllServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doService(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doService(request,response);
	}
	protected void doService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		// � ������� �Ѿ���� doService�� �ͼ� �����̵ȴ�.
		//1.����ڷ� ���� ��û�� �޴´�.
		String cmd= request.getParameter("cmd");
		// ���� cmd��� �̸����� (����ڷ� ���� ��û�� �ִ�.)
		if(cmd != null){
			
			Action action = ActionFactory.getaa().getCmd(cmd);
			ActionForward af = action.execute(request, response);
			if(af.isMethod()){
				response.sendRedirect(af.getUrl());
			}else{
				//forward
				RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
		}else{
			//��û�� ���ٸ� ó���� ����....
		}
	}

}
