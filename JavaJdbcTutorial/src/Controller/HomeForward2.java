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
import javax.servlet.http.HttpSession;

import BEAN.Cart;
import BEAN.KhachHang;
import BEAN.Localhost;
import BEAN.MyPham;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DAO.MyPhamDAO;
import DB.DBConnection;


@WebServlet("/HomeForward2")
public class HomeForward2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeForward2() {
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

		HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        session.setAttribute("cart", cart);
		
		RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
