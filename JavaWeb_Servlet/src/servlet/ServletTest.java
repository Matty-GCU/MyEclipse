package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletContext;

public class ServletTest extends HttpServlet {
	
	public ServletTest() {
		System.out.println("WelcomeTest构造方法");
	}
	
	//获取request对象和response对象：
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("WelcomeTest.doGet()方法");
    	
    	//获取out对象
    	response.setContentType("text/html;charset=utf-8");
    	PrintWriter out = response.getWriter();
    	//获取session对象
    	HttpSession session = request.getSession();
    	//获取application对象
    	ServletContext application = getServletContext();
    	
    	response.sendRedirect("index.jsp");
    }
}
