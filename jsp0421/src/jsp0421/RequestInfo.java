package jsp0421;

import javax.servlet.http.HttpServletRequest;

public class RequestInfo {
	
	public String requestInfo(HttpServletRequest request){
		StringBuffer sb = new StringBuffer();
		sb.append("<p>");
		sb.append("Ŭ���̾�Ʈ IP =").append(request.getRemoteAddr()).append("<br/>");
		sb.append("��û���� ����=").append(request.getContentLength()).append("<br/>");
		sb.append("��û�������ڵ� =").append(request.getCharacterEncoding()).append("<br/>");
		sb.append("��û���� ����ƮŸ�� =").append(request.getContentType()).append("<br/>");
		sb.append("��û���� �������� =").append(request.getProtocol()).append("<br/>");
		sb.append("��û���� ���۹��  =").append(request.getMethod()).append("<br/>");
		sb.append("��û URI  =").append(request.getRequestURI()).append("<br/>");
		sb.append("���ؽ�Ʈ ��� =").append(request.getContextPath()).append("<br/>");
		sb.append("�����̸�  =").append(request.getServerName()).append("<br/>");
		sb.append("���� ��Ʈ  =").append(request.getServerPort()).append("<br/>");
		return sb.toString();
	}
}
