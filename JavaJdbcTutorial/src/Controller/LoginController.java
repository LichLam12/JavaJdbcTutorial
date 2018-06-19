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

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
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
		
		int kt=0;
			kt = LoginDAO.LoginUser(username, password, conn);
	
		if(kt!=0) {
			NhanVien nv=LoginDAO.DisplayInfoNV(username, password, conn);			
			request.setAttribute("infoadmin", nv);
			
			KhachHang kh=LoginDAO.DisplayInfoKH(username, password, conn);			
			request.setAttribute("infoclient", kh);
		}
		/*
		NhanVien nv=LoginDAO.DisplayInfoNV(username, password, conn);			
		request.setAttribute("infoadmin", nv);
		
		KhachHang kh=LoginDAO.DisplayInfoKH(username, password, conn);			
		request.setAttribute("infoclient", kh);
		
		int kt=0;
		if(nv.getUsername()==null && kh.getUsername()==null) {

		}
		else {
			kt = LoginDAO.LoginUser(username, password, conn);
		}
		*/
		if (kt == 4) {
			
			RequestDispatcher rd = request.getRequestDispatcher("KhachHang_perinfo.jsp");
			rd.forward(request, response);

		}
		else if (kt==1) {
			
			RequestDispatcher rd = request.getRequestDispatcher("NVcunghang_perinfo.jsp");
			rd.forward(request, response);
		} 
		else if (kt==3) {
		
			// Tạo đối tượng RequestDispatcher
	        // để forward (chuyển tiếp) yêu cầu tới jstl_core_example02.jsp
			RequestDispatcher rd= request.getRequestDispatcher("admin_perinfo.jsp");
			rd.forward(request, response);  // Forward (Chuyển tiếp) yêu cầu, để hiển thị trên trang JSP.
		}
		else if (kt==2) {
	
			RequestDispatcher rd = request.getRequestDispatcher("NVXuLyDH_perinfo.jsp");
			rd.forward(request, response);
		}
		else {

			request.setAttribute("message", "Login Failed");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);

		}
		//RequestDispatcher rd = request.getRequestDispatcher("View/HomeLogin.jsp");
		//rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		

	}

}
