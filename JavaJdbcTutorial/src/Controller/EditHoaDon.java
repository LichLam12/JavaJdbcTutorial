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
import DAO.NhanVienDAO;
import DB.DBConnection;

@WebServlet("/EditHoaDon")
public class EditHoaDon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditHoaDon() {
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
		
		int soHD=Integer.parseInt(request.getParameter("soHD"));
		String tinhTrangHD=request.getParameter("tinhTrangHD");
		String maKH=request.getParameter("maKH");
		String maNV=request.getParameter("maNV");
		double triGiaHD=Double.parseDouble(request.getParameter("triGiaHD"));
		
		String ngayXuatHD = (String)request.getParameter("ngayXuatHD");
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date startDate = sdf.parse(ngayXuatHD);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
			System.out.println(sqlDate);
		
			boolean kt = HoaDonDAO.UpdateHoaDon(soHD, sqlDate, triGiaHD, tinhTrangHD, maKH,
					maNV, conn);
			
			if(kt==true) {
				System.out.println("sua hoa don thành công");
			}
			
			RequestDispatcher rd= request.getRequestDispatcher("DisplayHoaDon");
			rd.forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
