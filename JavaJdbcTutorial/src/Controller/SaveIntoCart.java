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
import BEAN.Item;
import BEAN.KhachHang;
import BEAN.Localhost;
import BEAN.MyPham;
import BEAN.NhanVien;
import DAO.LoginDAO;
import DAO.MyPhamDAO;
import DB.DBConnection;

@WebServlet("/SaveIntoCart")
public class SaveIntoCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final MyPhamDAO myphamDAO = new MyPhamDAO();   
    public SaveIntoCart() {
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
		PrintWriter out = response.getWriter(); // để cho code gọn hơn
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
		//
		
		
		HttpSession session = request.getSession();
        int page = Integer.parseInt(request.getParameter("page"));
        String pageid = (request.getParameter("pageid"));
        String command = request.getParameter("command");
        String mamypham = request.getParameter("mamypham");
        
        Cart cart = (Cart) session.getAttribute("cart");
        
        try {
            Long idProduct = Long.parseLong(mamypham);
            MyPham product = MyPhamDAO.Display_1MyPham(Integer.parseInt(mamypham), conn);
            switch (command) {
                case "plus": //thêm sản phẩm vào đơn hàng
                    if (cart.getCartItems().containsKey(idProduct)) { //nếu sp này đc thêm vào r thì tăng sl sp lên
                        cart.plusToCart(idProduct, new Item(product,
                                cart.getCartItems().get(idProduct).getQuantity()));
                    } else { //nếu sp chưa xh trong giỏ thì lưu lại sp với sl=1
                        cart.plusToCart(idProduct, new Item(product, 1));
                    }
                    break;
                case "remove":
                    cart.removeToCart(idProduct);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("HomeForward2");
        }
        
        session.setAttribute("cart", cart);
        
        System.out.println(page);
        
        if(page==1) {
            //response.sendRedirect("HomeForward2");
        	if(username==null || password==null)
        	{
        	      RequestDispatcher rd= request.getRequestDispatcher("HomeForward2");
      			rd.forward(request, response);
        	}
        	else {
        	      RequestDispatcher rd= request.getRequestDispatcher("HomeLogging");
      			rd.forward(request, response);
        	}
      
        }
        else if(page==2) {
        	String phanloai = request.getParameter("phanloai");
        	//response.sendRedirect("DisplayInfoMyPham");
        	RequestDispatcher rd= request.getRequestDispatcher("DisplayInfoMyPham");
			rd.forward(request, response);
        }
        else if(page==3){
        	String maMyPham = request.getParameter("maMyPham");
        	//response.sendRedirect("XemMyPham");
        	RequestDispatcher rd= request.getRequestDispatcher("XemMyPham");
			rd.forward(request, response);
        }
        else if(page==4){
        	RequestDispatcher rd= request.getRequestDispatcher("DisplayGioiThieu");
			rd.forward(request, response);
        }
        else if(page==5){
        	RequestDispatcher rd= request.getRequestDispatcher("ShoppingCart");
			rd.forward(request, response);
        }
        else if(page==6){    		
        	RequestDispatcher rd= request.getRequestDispatcher("KhachHang_perinfo.jsp");
			rd.forward(request, response);
        }
        else {
        	response.sendRedirect("HomeForward2");
        }
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
