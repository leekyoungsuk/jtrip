<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
���� �����͸� �Է��� �� '����'��ư�� Ŭ���ϼ���
<form action="viewParameter.jsp" method="post">
�̸� : <input type="text" name ="name" size="10"><br/>
�ּ� : <input type="text" name ="address" size="30"><br/>
�����ϴ� ����:<br/>
	<input type="checkbox" name ="pet" class="inchkall" id="chkall">��ü����<br/>
	<input type="checkbox" name ="pet" value="holse" class="inchk">��
	<input type="checkbox" name ="pet" value="sheep" class="inchk">��
	<input type="checkbox" name ="pet" value="dog" class="inchk">������
	<input type="checkbox" name ="pet" value="pig" class="inchk">����
	<input type="checkbox" name ="pet" value="cat" class="inchk">�����
	<br/>
	<input type="submit" value="����">
</form>
</body>
</html>