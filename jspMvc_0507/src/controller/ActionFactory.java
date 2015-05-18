package controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import oracle.net.aso.r;
import action.Action;
import action.IndexAction;


public class ActionFactory {
	private static ActionFactory af;
	private String cmd,url;
	private Properties prop;
	
	
	public static synchronized ActionFactory getaa(){ 
		//������ �������� �̷���� ����. ������ �����ϴϱ� ���ü� ���� �ذ������� ��ũ�γ��������ش�.
		if(af ==null) af= new ActionFactory();
		return af; 
	}
	public ActionFactory(){
		prop = new Properties();
	}
	
	public Action getCmd(String cmd){
		Action action = null;
		try{
			prop.load(new FileInputStream("C:\\kosta97\\webapp\\workspace\\jspMvc_0507\\WebContent\\classinfo.properties"));
			System.out.println("key :"+prop.getProperty("index")); //value���� �����ͼ� rPath�� �־��ش�.
			String rPath = prop.getProperty(cmd);
			
			System.out.println("kk:"+rPath);
			if(rPath == null){
				cmd = "index";
				rPath = prop.getProperty(cmd);
			}
			
			Class<Action> handlerClass = 
					(Class<Action>) Class.forName(rPath); //rPath��θ� Ŭ����ȭ �ϰ�
			action = handlerClass.newInstance();//�ٽ� ��üȭ ��Ŵ.
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		return action;
	}
}
