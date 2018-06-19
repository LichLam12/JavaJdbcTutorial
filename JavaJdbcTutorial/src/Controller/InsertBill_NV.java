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
import DB.DBConnection;


@WebServlet("/InsertBill_NV")
public class InsertBill_NV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public InsertBill_NV() {
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
	    
		double triGiaHD = Double.parseDouble(request.getParameter("triGiaHD"));
		String tinhTrangHD_temp = request.getParameter("tinhTrangHD");
		String maKH = request.getParameter("maKH");
		String maNV = request.getParameter("maNV");		
		
		String tinhTrangHD="Chưa thanh toán";
		if(tinhTrangHD_temp=="1")
		{
			tinhTrangHD="Chưa thanh toán";
		}
		else if(tinhTrangHD_temp=="2")
		{
			tinhTrangHD="Đang thanh toán";
		}
		else if(tinhTrangHD_temp=="3")
		{
			tinhTrangHD="Đã thanh toán";
		}
		
		String ngayXuatHD = (String)request.getParameter("ngayXuatHD");
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date startDate = sdf.parse(ngayXuatHD);
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
			System.out.println(sqlDate);
		
			boolean kt = HoaDonDAO.InsertHoaDon(sqlDate, triGiaHD, tinhTrangHD, maKH,
					maNV, conn);
			
			if(kt==true) {
				System.out.println("insert bill thành công");
			}
			
			RequestDispatcher rd= request.getRequestDispatcher("DisplayHoaDon_NV");
			rd.forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
