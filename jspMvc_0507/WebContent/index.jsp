<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
// �� �غ��� : jQuery�� �����غ���........
	function goUrl(){
		document.getElementById("loginF").submit();
	}
</script>
</head>
<body>
	�޼��� : ${msg}
	<form method="post" action="login.kosta" id="loginF">
			<input type="hidden" name="cmd" value="login">
			
			<c:choose>
				<c:when test="${sessionScope.userid == null }">
					<input type="hidden" name="subcmd" value="loginForm">
				</c:when>
				<c:otherwise>
					<input type="hidden" name="subcmd" value="logout">
				</c:otherwise>
			</c:choose>
			
	</form>
	<c:if test="${sessionScope.userid != null }">	
	${sessionScope["userid"]}�� �ݰ����ϴ�.</c:if>
	
	<ul><c:choose>
			<c:when test="${sessionScope.userid == null }">
				<li><a href="javascript:goUrl()">�α���</a></li>
			</c:when>
			<c:otherwise>
		   		<li><a href="javascript:goUrl()">�α׾ƿ�</a></li>
			</c:otherwise>
		</c:choose>	
	</ul>
</body>
</html>