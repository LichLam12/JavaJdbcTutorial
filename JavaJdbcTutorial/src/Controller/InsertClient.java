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
import DAO.KhachHangDAO;
import DAO.LoginDAO;
import DAO.NhanVienDAO;
import DB.DBConnection;


@WebServlet("/InsertClient")
public class InsertClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public InsertClient() {
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
		String tenKH = request.getParameter("tenkh");
		String Username = request.getParameter("usernameKH");
		String Password = request.getParameter("passwordKH");
		String Email = request.getParameter("email");
		int gioiTinh = Integer.parseInt(request.getParameter("radio-stacked"));
		String diaChi = request.getParameter("diachi");
		String soDT = request.getParameter("sodt");		
		
		String ngaySinh = (String)request.getParameter("ngaysinh");
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date startDate = sdf.parse(ngaySinh);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
			System.out.println(sqlDate);
		
			boolean kt = KhachHangDAO.InsertKhachHang(Username, Password, tenKH, gioiTinh,
					sqlDate, soDT, Email, diaChi, 4, conn);
			
			if(kt==true) {
				System.out.println("insert nhan vien thành công");
			}
			
			RequestDispatcher rd= request.getRequestDispatcher("DisplayKhachHang");
			rd.forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
