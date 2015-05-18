<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script> 
<script src="js/http.js"></script>
<script>
//����ڰ� �Է��� ������ ������ ����(�񵿱��)

if(typeof(eventSource)!="undefined"){ //push�� ������ �ִ� ���������� �Ǵ�
var eventSource = new EventSource("chatload.jsp");
//EventSource : EventListener�� ����
//onmessage: ������ ���� push �޼����� ���ŵǸ� �߻�
//onerror : ������ ���� push���� ������ �߻��Ǿ��� �� �߻�
//onopen : ������ ������ �Ǿ��� �� �߻�
eventSource.onmessage = function(event){
	$("#target").html("<dov style='background:orange'>"+event.data+"</div>"); 
	//��ũ��Ʈ�� Ŭ���̾�Ʈ���� ���ư��� ������ Ŭ���̾�Ʈ �޸𸮸� ���� ������ ������ ���ϰ� ����.	
};
}else{
		$("#target").html("�ش� �������� ������ �ȵ˴ϴ�.");
}
	$(function(){
		$("form").submit(function(){
			var fdata = {
					u_id:encodeURIComponent($("#u_id").val()),
					chat:encodeURIComponent($("#chat").val())
					};
			 $.ajax({
				    type:"POST",
				    url:"chat_add.jsp",
				    data:fdata
				   });
			return false;
		});
		
	})
// �ǽð� �ޱ� ���ؼ� �Լ��� ����(�񵿱��)
	function loadData(){
		sendRequest("chatload.jsp", null, res, "get");
	}
	function res(){
		if(xhr.readyState==4&&xhr.status==200){			
			document.getElementById("target").innerHTML=xhr.responseText;
		}		
	}
	var inter = setInterval(function(){
		loadData();
	}, 200); //�̱��� ó���ؾߴ�
</script>
</head>
<body>
<div id="wrap">
	<form method="post"  name="cform"  id="cform">
		<input type="text" id="u_id" name="u_id" required = "required" placeholder="�̸�">
		<input type="text" id ="chat" name = "chat"  required = "required"  placeholder="��ȭ����">
		<input type="submit" id="send" value="���ۼ�">
	</form>
	<div id = "target"></div>
</div>
</body>
</html>