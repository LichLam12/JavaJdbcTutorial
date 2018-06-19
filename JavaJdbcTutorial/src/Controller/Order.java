package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Cart;
import BEAN.Item;
import BEAN.KhachHang;
import BEAN.Localhost;
import BEAN.NhanVien;
import DAO.ChiTietHDDAO;
import DAO.HoaDonDAO;
import DAO.LoginDAO;
import DAO.PhieuThuDAO;
import DB.DBConnection;


@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Order() {
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
		
		HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        session.setAttribute("cart", cart);
        
        String hoaDonDo_Temp = request.getParameter("radio-stacked2"); //hóa đơn đỏ
        boolean hoaDonDo=false;
        if(hoaDonDo_Temp=="true")
        {
        	hoaDonDo=true;
        }
       
        Date dNow = new Date( );
        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
        try {
			Date startDate = ft.parse(ft.format(dNow));
			java.sql.Date sqlDate = new java.sql.Date(startDate.getTime());		
			System.out.println(sqlDate);
		
			boolean kt1 = HoaDonDAO.InsertHoaDon(sqlDate,cart.totalCart(), "Chưa thanh toán",
					username, "nhanvien245",conn);
			
			if(kt1==true) {
				System.out.println("cart-thêm hóa đơn thành công");
			}
			int sohd = HoaDonDAO.SoHD_GanNhat(sqlDate,cart.totalCart(), "Chưa thanh toán",
					username, "nhanvien245",conn);
			System.out.println("so hd gan nhat "+sohd);
			
			List<String> dsMyPham=new ArrayList<String>();
			for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
				System.out.println("ma my pham "+list.getValue().getProduct().getMaMyPham());
				System.out.println("ma my pham "+list.getValue().getQuantity());
				boolean kt3 = ChiTietHDDAO.InsertChiTietHD(sohd,list.getValue().getProduct().getMaMyPham(),
						list.getValue().getQuantity(), hoaDonDo,conn);
				if(kt3==true) {
					System.out.println("cart-thêm chi tiết hd thành công");
				}
				String s = String.valueOf(list.getValue().getProduct().getMaMyPham());
				//cart.removeToCart(Long.parseLong(s));
				dsMyPham.add(s);
			}
			for (String s: dsMyPham) {
				cart.removeToCart(Long.parseLong(s));
			}
			RequestDispatcher rd= request.getRequestDispatcher("HomeLogging");
			rd.forward(request, response);
			
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
