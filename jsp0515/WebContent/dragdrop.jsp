<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	div{
		float: left;
		width: 100px;
		height: 35px;
		margin: 10px;
		padding: 10px;
		border: 1px solid #aaaaaa;
			}
</style>
<script>

function allowDrop(ev){
	ev.preventDefault();
}
function drag(ev){
	 ev.dataTransfer.setData("text",ev.target.id);
}
function drop(ev){
	ev.preventDefault();
	var data = ev.dataTransfer.getData("text");
	ev.target.appendChild(document.getElementById(data));
}
</script>
</head>
<body>
<%--
	draggable="true" : �巡�� �� ��� �߰�
	ondragstart: �ش� ��Ҹ� Drag ���� ���·� ������� true�� �����Ѵ�.
	ondrag: Drag�� �߻�
	ondragend : Drag�� ����� �� ȣ��ȴ�.
	ondrop : Drag�� �����Ͱ� ������ �� ȣ��ȴ�.
	
	�⺻������ ������ ��Ҵ� �ٸ� ��ҿ� ������ �� ����
	���⸦ �����ϱ� ���ؼ��� �ݵ�� ����� �⺻ �ڵ鸵�� ���ƾ� �Ѵ�.
	event.preventDefault()�޼ҵ带 ȣ�������� �� �⺻ �ڵ鸵�� ���� �ش� ��ҿ� ������ �� �ְ� �����.
	
	ondragover: Drag�ȵ����͸� ���� ��Ҹ� �����Ѵ�.
	ondragenter : Drag�� �����Ͱ� �ش� ������ ������ �� ��� ȣ��ȴ�.
	ondragleave : Drag�� �����Ͱ� �ش� �������� ����� �� ��� ȣ��ȴ�.
 --%>
	<div id = "div1" ondrop="drop(event)" ondragover="allowDrop(event)">
		<img src = "img/logo.png" draggable="true" ondragstart="drag(event)" id="drag1" width="88" height="31">
	</div>
	<div id = "div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
</body>
</html>