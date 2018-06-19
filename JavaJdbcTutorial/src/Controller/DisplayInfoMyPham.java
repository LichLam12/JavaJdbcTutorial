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
import javax.servlet.http.HttpSession;

import BEAN.Cart;
import BEAN.KhachHang;
import BEAN.Localhost;
import BEAN.MyPham;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DAO.MyPhamDAO;
import DB.DBConnection;


@WebServlet("/DisplayInfoMyPham")
public class DisplayInfoMyPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
    String pageidstr;  
    
    public DisplayInfoMyPham() {
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

		}
		else if (kt==1 || kt==2 || kt==3) {
			NhanVien nv=LoginDAO.DisplayInfoNV(username, password, conn);			
			request.setAttribute("infoadmin", nv);
		} 
		//
		
		pageidstr= request.getParameter("pageid");
		// count là số lượng phần tử tối đa hiện ở trang
		int count =12;
		
		if(pageidstr==null)
			pageidstr="1";
		
		// Ep kieu Int
		int pageid=Integer.parseInt(pageidstr);
		
		// Neu pageid == 1 thi se khong phan trang
		// Neu pageid != 1 thi se phan trang
		
		if(pageid==1){
			
		}
		else{
			
			pageid=pageid-1;
			pageid=pageid*count + 1;
			
		}
		
		//int phanloai = Integer.parseInt(request.getParameter("phanloai"));
		String phanloai=request.getParameter("phanloai");
		List<MyPham> list=null;
		String imgbanner="http://sv1.upsieutoc.com/2017/11/06/banner_srm.jpg";
		System.out.println("phân loại: "+phanloai);
		
		if(phanloai==null || Integer.parseInt(phanloai)==0) {
			list = MyPhamDAO.DisplayMyPham(pageid, count, conn);
		}
		else if(phanloai=="Sữa rửa mặt" || Integer.parseInt(phanloai)==1) {
			list = MyPhamDAO.DisplayMyPham_SRM(pageid, count, conn);
			imgbanner="http://sv1.upsieutoc.com/2017/11/06/banner_srm.jpg";
		}
		else if(phanloai=="Kem dưỡng da mặt" || Integer.parseInt(phanloai)==2) {
			list = MyPhamDAO.DisplayMyPham_KemDuong(pageid, count, conn);
			imgbanner="http://sv1.upsieutoc.com/2017/11/06/c.jpg";
		}
		else if(phanloai=="Kem chống nắng" || Integer.parseInt(phanloai)==3) {
			list = MyPhamDAO.DisplayMyPham_KemSPF(pageid, count, conn);
			imgbanner="http://sv1.upsieutoc.com/2017/11/06/a.jpg";
		}
		else if(phanloai=="Trị mụn" || Integer.parseInt(phanloai)==4) {
			list = MyPhamDAO.DisplayMyPham_Trimun(pageid, count, conn);
			imgbanner="http://sv1.upsieutoc.com/2017/11/06/b.jpg";
		}
		else if(phanloai=="Gel xịt tóc" || Integer.parseInt(phanloai)==5) {
			list = MyPhamDAO.DisplayMyPham_GelXT(pageid, count, conn);
			imgbanner="http://sv1.upsieutoc.com/2017/11/06/e.jpg";
		}
		else if(phanloai=="Sửa tắm-Lan khử mùi" || Integer.parseInt(phanloai)==6) {
			list = MyPhamDAO.DisplayMyPham_SuaTam(pageid, count, conn);
			imgbanner="http://sv1.upsieutoc.com/2017/11/06/d.jpg";
		}
		
		request.setAttribute("imgbanner", imgbanner);
		request.setAttribute("phanloai", phanloai);

		int sumrow=MyPhamDAO.CountRow(conn);
		
		int maxpageid= (sumrow/count)+1;
		
		request.setAttribute("maxpageid", maxpageid);
		
		//request.setAttribute("listemp", list);
		request.setAttribute("numberpage", Integer.parseInt(pageidstr));
		
		request.setAttribute("mypham", list);
		
		HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        session.setAttribute("cart", cart);
        
		if(username==null && password==null) {
			RequestDispatcher rd= request.getRequestDispatcher("sp_srm.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd= request.getRequestDispatcher("sp_srm_logging.jsp");
			rd.forward(request, response);
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
