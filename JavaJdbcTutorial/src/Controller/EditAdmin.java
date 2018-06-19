package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Localhost;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DAO.NhanVienDAO;
import DB.DBConnection;
import java.sql.*;
import java.util.List;
@WebServlet("/EditAdmin")
public class EditAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public EditAdmin() {
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
		int maNV=Integer.parseInt(request.getParameter("manv"));
		String tenNV=request.getParameter("tennv");
		String Username=request.getParameter("username");
		String Password=request.getParameter("password");
		String Email=request.getParameter("email");
		double Luong=Double.parseDouble(request.getParameter("luong"));
		int gioiTinh=Integer.parseInt(request.getParameter("radio-stacked"));
		String diaChi=request.getParameter("diachi");
		String soDT=request.getParameter("sodt");
		int maQuyen=Integer.parseInt(request.getParameter("maquyen"));
		//Date ngaySinh = null;
		//try {
		//	ngaySinh = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("ngaysinh"));
		//} catch (ParseException e) {
		//	// TODO Auto-generated catch block
		//	e.printStackTrace();
		//}
		
		String ngaySinh = (String)request.getParameter("ngaysinh");
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date startDate = sdf.parse(ngaySinh);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
			System.out.println(sqlDate);
		
			boolean kt = NhanVienDAO.UpdateNhanVien(maNV, Username, Password, tenNV, gioiTinh,
					sqlDate, soDT, Email, diaChi, Luong, maQuyen, conn);
			
			if(kt==true) {
				System.out.println("sua info admin thành công");
			}
			
			RequestDispatcher rd= request.getRequestDispatcher("LoginController");
			rd.forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
