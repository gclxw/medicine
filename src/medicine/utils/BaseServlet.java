package medicine.utils;

import java.io.IOException;
import java.lang.reflect.Method;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class BaseServlet implements Servlet {
	public void service(ServletRequest reqeust, ServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf8");
		// 子类对象 this 子类对象
		// 根据子类对象获取类对
		Class cla  = this.getClass();
		// 获取方法对象 
		// 1.获取方法
		// 根据提交的action参数获取方
		String methodName = reqeust.getParameter("action");
		if(methodName == null){
			response.getWriter().append("你没有传递必要的参数, action必需传入");
			return;
		}
		// 2.参数类型
		try {
			Method  method = cla.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
			method.invoke(this, reqeust, response);
			
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public void destroy() {
		// TODO 自动生成的方法存�?
		
	}

	public ServletConfig getServletConfig() {
		// TODO 自动生成的方法存�?
		return null;
	}

	public String getServletInfo() {
		// TODO 自动生成的方法存�?
		return null;
	}

	public void init(ServletConfig arg0) throws ServletException {
		// TODO 自动生成的方法存�?
		
	}

}
