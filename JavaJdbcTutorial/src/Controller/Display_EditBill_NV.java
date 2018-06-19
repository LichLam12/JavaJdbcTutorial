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

import BEAN.HoaDon;
import BEAN.Localhost;
import BEAN.NhanVien;
import DAO.HoaDonDAO;
import DAO.LoginDAO;
import DB.DBConnection;


@WebServlet("/Display_EditBill_NV")
public class Display_EditBill_NV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Display_EditBill_NV() {
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
		int soHD = Integer.parseInt(request.getParameter("soHD"));
		
		HoaDon mp = HoaDonDAO.Display_1HoaDon(soHD, conn);

		request.setAttribute("infohoadon", mp);
		
		RequestDispatcher rd= request.getRequestDispatcher("EditHoaDon_NV.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
