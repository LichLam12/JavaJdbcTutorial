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

@WebServlet("/DisplayChiTietHD")
public class DisplayChiTietHD extends HttpServlet {
	private static final long serialVersionUID = 1L;
    String pageidstr;
    public DisplayChiTietHD() {
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
		pageidstr = request.getParameter("pageid");
		// count là số lượng phần tử tối đa hiện ở trang
		int count = 8;

		if (pageidstr == null)
			pageidstr = "1";

		// Ep kieu Int
		int pageid = Integer.parseInt(pageidstr);

		// Neu pageid == 1 thi se khong phan trang
		// Neu pageid != 1 thi se phan trang

		if (pageid == 1) {

		} else {

			pageid = pageid - 1;
			pageid = pageid * count + 1;

		}

		List<ChiTietHD> list = ChiTietHDDAO.DisplayChiTietHD(pageid, count, conn);

		int sumrow = ChiTietHDDAO.CountRow(conn);

		int maxpageid = (sumrow / count) + 1;

		request.setAttribute("maxpageid", maxpageid);

		// request.setAttribute("listemp", list);
		request.setAttribute("numberpage", Integer.parseInt(pageidstr));

		request.setAttribute("qlchitiethd", list);

		RequestDispatcher rd = request.getRequestDispatcher("NVXuLyDH_chitiethdm.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
