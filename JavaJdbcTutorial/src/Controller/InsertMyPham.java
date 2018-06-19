package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
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


@WebServlet("/InsertMyPham")
public class InsertMyPham extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       

    public InsertMyPham() {
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
		String tenMyPham = request.getParameter("tenMyPham");
		int phanLoai_temp = Integer.parseInt(request.getParameter("phanLoai"));
		String thuongHieu = request.getParameter("thuongHieu");
		int xuatXu_temp = Integer.parseInt(request.getParameter("xuatXu"));
		int dungTich = Integer.parseInt(request.getParameter("dungTich"));
		int giaBan = Integer.parseInt(request.getParameter("giaBan"));
		String congDung = request.getParameter("congDung");
		String loaiSanPham = request.getParameter("loaiSanPham");
		String thanhPhan = request.getParameter("thanhPhan");
		String hdSuDung = request.getParameter("hdSuDung");
		String hinhAnhChinh = request.getParameter("hinhAnhChinh");
		
		String phanLoai="Sửa rửa mặt";
		String xuatXu="Việt Nam";
		
		if (phanLoai_temp==1)
		{
			phanLoai="Sửa rửa mặt";
		}
		else if (phanLoai_temp == 2)
		{
			phanLoai="Kem chống nắng";
		}
		else if (phanLoai_temp == 3)
		{
			phanLoai="Trị mụn";
		}
		else if (phanLoai_temp==4)
		{
			phanLoai="Kem dưỡng";
		}
		else if (phanLoai_temp==5)
		{
			phanLoai="Gel xịt tóc";
		}
		else if (phanLoai_temp==6)
		{
			phanLoai="Sửa tắm - Lăn khử mùi";
		}
		
		
		if (xuatXu_temp==1)
		{
			xuatXu="Việt Nam";
		}
		else if (xuatXu_temp==2)
		{
			xuatXu="Hàn Quốc";
		}
		else if (xuatXu_temp==3)
		{
			xuatXu="Nhật Bản";
		}
		else if (xuatXu_temp==4)
		{
			xuatXu="Pháp";
		}
		else if (xuatXu_temp==5)
		{
			xuatXu="Mỹ";
		}
		else if (xuatXu_temp==6)
		{
			xuatXu="Trung Quốc";
		}
		else if (xuatXu_temp==7)
		{
			xuatXu="Thái Lan";
		}
		else if (xuatXu_temp==8)
		{
			xuatXu="Úc";
		}
		else if (xuatXu_temp==9)
		{
			xuatXu="Thổ Nhĩ Kỳ";
		}
		else if (xuatXu_temp==10)
		{
			xuatXu="Đức";
		}
		
		
		boolean kt = MyPhamDAO.InsertMyPham(tenMyPham, phanLoai, thuongHieu, xuatXu,
			 dungTich, giaBan, congDung, loaiSanPham, thanhPhan, hdSuDung,
			 hinhAnhChinh, conn);
		
		if(kt==true) {
			System.out.println("thêm thành công");
		}
		
		RequestDispatcher rd= request.getRequestDispatcher("DisplayMyPham");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
