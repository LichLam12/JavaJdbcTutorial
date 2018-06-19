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

import BEAN.Localhost;
import BEAN.MyPham;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DAO.MyPhamDAO;
import DB.DBConnection;


@WebServlet("/DisplayEditMyPham")
public class DisplayEditMyPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DisplayEditMyPham() {
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

		NhanVien nv = LoginDAO.DisplayInfoNV(username, password, conn);
		request.setAttribute("infoadmin", nv);
		//
		
		//lấy info mỹ phẩm qua mã mỹ phẩm
		int mamypham = Integer.parseInt(request.getParameter("mamypham"));
		
		MyPham mp = MyPhamDAO.Display_1MyPham(mamypham, conn);

		request.setAttribute("infomypham", mp);
		
		RequestDispatcher rd= request.getRequestDispatcher("NVcunghang_EditMyPham.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
