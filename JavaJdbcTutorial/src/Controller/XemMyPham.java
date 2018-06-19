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


@WebServlet("/XemMyPham")
public class XemMyPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public XemMyPham() {
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
		
		int mamypham = Integer.parseInt(request.getParameter("mamypham"));
		MyPham mp=MyPhamDAO.Display_1MyPham(mamypham, conn);
		
		String maMyPham = request.getParameter("maMyPham");
		if(maMyPham != null) {
			mp=MyPhamDAO.Display_1MyPham(Integer.parseInt(maMyPham), conn);
		}
		
		request.setAttribute("mypham", mp);
		HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        session.setAttribute("cart", cart);
        
		if(username==null && password==null) {
			RequestDispatcher rd= request.getRequestDispatcher("XemMyPham.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd= request.getRequestDispatcher("XemMyPham_logging.jsp");
			rd.forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
