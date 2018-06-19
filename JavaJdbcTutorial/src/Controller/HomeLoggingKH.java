package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.KhachHang;
import BEAN.Localhost;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DB.DBConnection;


@WebServlet("/HomeLoggingKH")
public class HomeLoggingKH extends HttpServlet {
	private static final long serialVersionUID = 1L;   
  
    public HomeLoggingKH() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;

		// Lấy địa chỉ Ip, uername đã đc set trong localhost
		List<Localhost> entries = (List<Localhost>) getServletContext().getAttribute("localhost");

		Localhost lc = entries.get(0);

		conn = DBConnection.CreateConnection("localhost", lc.getIp(), lc.getDatabase(), lc.getUserName(),
				lc.getPassword());
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter(); //để cho code gọn hơn
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		int kt = LoginDAO.LoginUser(username, password, conn);
		
		KhachHang kh=LoginDAO.DisplayInfoKH(username, password, conn);			
		request.setAttribute("infoclient", kh);
		
		RequestDispatcher rd = request.getRequestDispatcher("index_loggingKH.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
