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
import BEAN.MyPham;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DAO.MyPhamDAO;
import DB.DBConnection;


@WebServlet("/HomeLogging")
public class HomeLogging extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeLogging() {
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
		//
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		int kt = LoginDAO.LoginUser(username, password, conn);
		
		if (kt == 4) {
			KhachHang kh=LoginDAO.DisplayInfoKH(username, password, conn);			
			request.setAttribute("infoadmin", kh);
			request.setAttribute("infoclient", kh);
		}
		else if (kt==1 || kt==2 || kt==3) {
			NhanVien nv=LoginDAO.DisplayInfoNV(username, password, conn);			
			request.setAttribute("infoadmin", nv);
		} 
		//
		List<MyPham> list = MyPhamDAO.DisplayMyPham_SRM(1, 4, conn);
		request.setAttribute("srm", list);

		List<MyPham> list2 = MyPhamDAO.DisplayMyPham_KemDuong(1, 4, conn);
		request.setAttribute("kemduong", list2);

		List<MyPham> list3 = MyPhamDAO.DisplayMyPham_KemSPF(1, 4, conn);
		request.setAttribute("kemspf", list3);

		List<MyPham> list4 = MyPhamDAO.DisplayMyPham_Trimun(1, 4, conn);
		request.setAttribute("trimun", list4);

		//List<MyPham> list5 = MyPhamDAO.DisplayMyPham_GelXT(1, 2, conn);
		//request.setAttribute("gelxt", list5);

		List<MyPham> list6 = MyPhamDAO.DisplayMyPham_SuaTam(1, 4, conn);
		request.setAttribute("suatam", list6);
		
		RequestDispatcher rd = request.getRequestDispatcher("index_logging.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
