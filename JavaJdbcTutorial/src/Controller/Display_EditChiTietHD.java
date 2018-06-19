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

import BEAN.ChiTietHD;
import BEAN.Localhost;
import BEAN.NhanVien;
import BEAN.PhieuThu;
import DAO.ChiTietHDDAO;
import DAO.LoginDAO;
import DAO.PhieuThuDAO;
import DB.DBConnection;


@WebServlet("/Display_EditChiTietHD")
public class Display_EditChiTietHD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Display_EditChiTietHD() {
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
		PrintWriter out = response.getWriter(); // để cho code gọn hơn

		//
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		NhanVien nv = LoginDAO.DisplayInfoNV(username, password, conn);
		request.setAttribute("infoadmin", nv);
		//

		// lấy info mỹ phẩm qua mã mỹ phẩm
		int soChiTiet = Integer.parseInt(request.getParameter("soChiTiet"));

		ChiTietHD mp = ChiTietHDDAO.Display_1ChiTietHD(soChiTiet, conn);

		request.setAttribute("infochitiethd", mp);

		RequestDispatcher rd = request.getRequestDispatcher("EditChiTietHD.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
