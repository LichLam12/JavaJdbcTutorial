package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Localhost;
import BEAN.MyPham;
import BEAN.Slidebanner;
import DAO.MyPhamDAO;
import DB.DBConnection;
import java.sql.*;
import java.util.*;

@WebServlet("/HomeForward")
public class HomeForward extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomeForward() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("ConnectMySQLDynamic.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = null;
		// Khởi tạo mảng array list
		List<Localhost> entries = new ArrayList<Localhost>();

		// Get parameter
		String userName = request.getParameter("tendangnhap");
		String ip = request.getParameter("dropdown");
		String database = request.getParameter("dropdownData");
		String password = request.getParameter("matkhau");
		
		entries.add(new Localhost(userName,ip,database,password));
		
		getServletContext().setAttribute("localhost", entries);

		conn = DBConnection.CreateConnection("localhost", ip, database, userName, password);

		//List<Slidebanner> list = HomeDAO.DisplaySlidebanner(conn);

		//request.setAttribute("listslidebanner", list);

		RequestDispatcher rd = request.getRequestDispatcher("HomeForward2");
		rd.forward(request, response);
	}

}
