<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%-- jsp ���� ��ü �߿� ������� 4����
		pageContext - ���� ������ �������� ����
		request - A,B������ ������ ���� - forward���� ����
		session- session���� ���� �� �׷� ������������ ���� A,B,C, . . .
		application - ��ü ���������� ������ ����
 --%>
 <%
 		//setAttribute("paramName","value"): ��������� ���� ����
 		pageContext.setAttribute("page","test1");
 		request.setAttribute("req", "test2");
 		session.setAttribute("sess","test");
 		application.setAttribute("email", "javabook@naver.com");
 %>
</head>
<body>
<a href="ex6_res.jsp">test</a>
</body>
</html>