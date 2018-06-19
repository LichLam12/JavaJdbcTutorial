package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.ChiTietHD;
import BEAN.PhieuThu;

public class ChiTietHDDAO {
	public static List<ChiTietHD> DisplayChiTietHD(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<ChiTietHD> list = new ArrayList<ChiTietHD>();

		String sql = "select * from chitiethoadon limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				ChiTietHD nv = new ChiTietHD();
				
				nv.setSoChiTiet(rs.getInt("soChiTiet"));
				nv.setSoHD(rs.getInt("soHD"));
				nv.setMaMyPham(rs.getInt("maMyPham"));
				nv.setSoLuong(rs.getInt("soLuong"));
				nv.setHoaDonDo(rs.getBoolean("hoaDonDo"));

				list.add(nv);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	

	// Hàm trả về tổng số hàng trong một table

	public static int CountRow(Connection conn) {

		int count = 0;

		String sql = "select count(*) from chitiethoadon";

		PreparedStatement ptmt;
		try {

			ptmt = conn.prepareStatement(sql);

			ResultSet rs = ptmt.executeQuery();

			rs.next();

			count = rs.getInt(1);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return count;

	}



	public static boolean InsertChiTietHD(int soHD, int maMyPham,
			int soLuong, boolean hoaDonDo, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procThemChiTietHoaDon(?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setInt(1, soHD);
			cstm.setInt(2, maMyPham);
			cstm.setInt(3, soLuong);
			cstm.setBoolean(4, hoaDonDo);

			cstm.executeUpdate();

			cstm.close(); // k đóng lại thì nếu gọi store khác nữa sẽ k đc

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}



	public static ChiTietHD Display_1ChiTietHD(int soChiTiet, Connection conn) {
		ChiTietHD nv = new ChiTietHD();

		String sql = "select * from chitiethoadon where soChiTiet='"+soChiTiet+"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				nv.setSoChiTiet(rs.getInt("soChiTiet"));
				nv.setSoHD(rs.getInt("soHD"));
				nv.setMaMyPham(rs.getInt("maMyPham"));
				nv.setSoLuong(rs.getInt("soLuong"));
				nv.setHoaDonDo(rs.getBoolean("hoaDonDo"));


			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}



	public static boolean UpdateChiTietHD(int soChiTiet, int soHD, int maMyPham,
			int soLuong, boolean hoaDonDo, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procSuaChiTietHoaDon(?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, soChiTiet);
			cstm.setInt(2, soHD);
			cstm.setInt(3, maMyPham);
			cstm.setInt(4, soLuong);
			cstm.setBoolean(5, hoaDonDo);
		
			cstm.executeUpdate();

			cstm.close(); // k đóng lại thì nếu gọi store khác nữa sẽ k đc

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}



	public static boolean DeleteChiTietHD(int soChiTiet, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procXoaChiTietHoaDon(?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, soChiTiet);
		
			cstm.executeUpdate();

			cstm.close(); // k đóng lại thì nếu gọi store khác nữa sẽ k đc

			t = true;
		}

		catch (SQLException ex) {
			// e.printStackTrace();
			System.out.println(ex.getMessage());
		}

		return t;
	}
}
