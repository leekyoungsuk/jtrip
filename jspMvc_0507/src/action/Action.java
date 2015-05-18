package action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.ActionForward;

public interface Action {
 public abstract ActionForward execute(HttpServletRequest request, 
		 HttpServletResponse response) throws IOException;
 	//ActionFoward�� ������ �� �ֵ��� �߻�޼��带 ������ �������̽��� ����
 	//controller���� Model�� �ν��ϰ� �ϱ����� request�� response�� ���� �Ѵ�.
}
