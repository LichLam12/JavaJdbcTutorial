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

import BEAN.Localhost;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DAO.MyPhamDAO;
import DB.DBConnection;


@WebServlet("/EditMyPham")
public class EditMyPham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditMyPham() {
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
		
		int maMyPham = Integer.parseInt(request.getParameter("mamypham"));
		String tenMyPham = request.getParameter("tenmypham");
		String phanLoai = request.getParameter("phanloai");
		String thuongHieu = request.getParameter("thuonghieu");
		String xuatXu = request.getParameter("xuatxu");
		int dungTich = Integer.parseInt(request.getParameter("dungtich"));
		int giaBan = Integer.parseInt(request.getParameter("giaban"));
		String congDung = request.getParameter("congdung");
		String loaiSanPham = request.getParameter("loaisp");
		String thanhPhan = request.getParameter("thanhphan");
		String hdSuDung = request.getParameter("hdsd");
		String hinhAnhChinh = request.getParameter("hinhanhchinh");
		String hinhAnhPhu1 = request.getParameter("hinhanhphu1");
		String hinhAnhPhu2 = request.getParameter("hinhanhphu2");

		System.out.println(maMyPham);
		System.out.println(tenMyPham);
		System.out.println(phanLoai);
		System.out.println(thuongHieu);
		System.out.println(xuatXu);
		System.out.println(dungTich);
		System.out.println(giaBan);
		System.out.println(congDung);
		System.out.println(loaiSanPham);
		System.out.println(thanhPhan);
		System.out.println(hdSuDung);
		System.out.println(hinhAnhChinh);
		System.out.println(hinhAnhPhu1);
		System.out.println(hinhAnhPhu2);
		
		boolean kt = MyPhamDAO.UpdateMyPham(maMyPham,tenMyPham, phanLoai, thuongHieu, xuatXu,
			 dungTich, giaBan, congDung, loaiSanPham, thanhPhan, hdSuDung,
			 hinhAnhChinh,hinhAnhPhu1,hinhAnhPhu2,conn);
		
		if(kt==true) {
			System.out.println("update mỹ phẩm thành công");
		}
		
		RequestDispatcher rd= request.getRequestDispatcher("DisplayMyPham");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
