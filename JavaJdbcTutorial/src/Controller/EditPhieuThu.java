package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Localhost;
import BEAN.NhanVien;
import DAO.HoaDonDAO;
import DAO.LoginDAO;
import DAO.PhieuThuDAO;
import DB.DBConnection;


@WebServlet("/EditPhieuThu")
public class EditPhieuThu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public EditPhieuThu() {
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
		
		NhanVien nv=LoginDAO.DisplayInfoNV(username, password, conn);			
		request.setAttribute("infoadmin", nv);
		//
		int maPhieuThu=Integer.parseInt(request.getParameter("maPhieuThu"));
		double soTien = Double.parseDouble(request.getParameter("soTien"));
		String nguoiNop = request.getParameter("nguoiNop");
		int soHD = Integer.parseInt(request.getParameter("soHD"));
		
		String ngayXuatPhieu = (String)request.getParameter("ngayXuatPhieu");
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date startDate = sdf.parse(ngayXuatPhieu);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
			System.out.println(sqlDate);
		
			boolean kt = PhieuThuDAO.UpdatePhieuThu(maPhieuThu,sqlDate, soTien, nguoiNop, soHD,conn);
			
			if(kt==true) {
				System.out.println("update phieu thu thành công");
			}
			
			RequestDispatcher rd= request.getRequestDispatcher("DisplayPhieuThu");
			rd.forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
