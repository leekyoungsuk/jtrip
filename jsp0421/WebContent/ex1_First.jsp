<%@page import="jsp0421.FirstModel"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%><%--�� ���� �ݵ�� �־�� �Ѵ�. --%>
    <%--jsp �ּ� --%>
    <%--page ������ : �ʼ� ������, WAS�� ���� ������ ������ �ǵ��ϴµ� ���(web.xml)��
    		����ߴ� ������ ������ ����Ѵ�.
    		������ ũ��, ���������� ���� �߰����� ������ ������ �� �ִ�. 
    		jsp�� �ᱹ �������� ��ȯ�Ǿ� Container�� ���ؼ� ������ �ȴ�.
    		��ũ��Ʈ ��Ұ� 3������ �ִ�.(���丸 ������ �ֱ� �ٶ� ������ �̷������� �α׷��ϸ� ��Խ��ϴ�.)
    			*����� - ������� , ��ũ��Ʈ�� - ����(doget, dopost)�� local ���� 
    			, ǥ���� - out.println() �ȿ��� ���� ���
    	//�����: �������, ex1_FirstServlet.class �������� �� Ŭ������    	
    	//			   ��� ������ ���� �� �����̴�. ���� ��������� �޼���� ���� �� �ִ�.
    	//		 	   �׷��� ���⿡ �̷������� ���α׷����ϸ� ���������� ����� ����� �ڵ尡 �ȴ�.
    	//�̷��� �� �� �ִٰ� �˰� �ְ� �����ִ°�
    --%>
    <%--����ο� �ڵ��� ���ϴ� ������ ���뼺�� �ȵ� --%>
    <%
    		//�и��ߴ� ��ü�� ����.
    		FirstModel fm = new FirstModel();
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
p{width: 300px; background: orange;}
</style>
</head>
<body>
	<%//service���� - local���� 
		String msg = fm.printMsg("����");
		out.println("<p>"+msg+"</p>"); //������ PrintWriter�� ���� ȣ�� 36��° ���̶� ����.
	%>
	<%-- out.println�� ���󿡼� ���� ����ϱ� ���ؼ� ǥ�������� ��� --%>
	<p><%=msg	%></p>
</body>
</html>