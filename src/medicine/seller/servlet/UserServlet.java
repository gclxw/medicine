package medicine.seller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import medicine.utils.BaseServlet;

/**
 * Servlet implementation class UserServlet
 * servlet������:MVC�еĿ����������ڽ���v�����ݣ�����m�㷽������
 */

@WebServlet("/seller/UserServlet")
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
    
    public UserServlet() {
        super();
    }

	/**
	 * 	����get����
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * 	����post����
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}