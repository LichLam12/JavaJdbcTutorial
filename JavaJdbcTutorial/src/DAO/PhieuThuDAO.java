package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.HoaDon;
import BEAN.PhieuThu;

public class PhieuThuDAO {
	public static List<PhieuThu> DisplayPhieuThu(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<PhieuThu> list = new ArrayList<PhieuThu>();

		String sql = "select * from phieuthu limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				PhieuThu nv = new PhieuThu();
				
				nv.setMaPhieuThu(rs.getInt("maPhieuThu"));
				nv.setNgayXuatPhieu(rs.getDate("ngayXuatPhieu"));
				nv.setSoTien(rs.getDouble("soTien"));
				nv.setNguoiNop(rs.getString("nguoiNop"));
				nv.setSoHD(rs.getInt("soHD"));

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

		String sql = "select count(*) from phieuthu";

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



	public static boolean InsertPhieuThu(Date sqlDate, double soTien, String nguoiNop,
			int soHD, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procThemPhieuThu(?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setDate(1, sqlDate);
			cstm.setDouble(2, soTien);
			cstm.setNString(3, nguoiNop);
			cstm.setInt(4, soHD);

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



	public static PhieuThu Display_1PhieuThu(int maPhieuThu, Connection conn) {
		PhieuThu nv = new PhieuThu();

		String sql = "select * from phieuthu where maPhieuThu='"+maPhieuThu+"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				nv.setMaPhieuThu(rs.getInt("maPhieuThu"));
				nv.setNgayXuatPhieu(rs.getDate("ngayXuatPhieu"));
				nv.setSoTien(rs.getDouble("soTien"));
				nv.setNguoiNop(rs.getString("nguoiNop"));
				nv.setSoHD(rs.getInt("soHD"));


			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}



	public static boolean UpdatePhieuThu(int maPhieuThu, Date sqlDate, double soTien, String nguoiNop,
			int soHD, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procSuaPhieuThu(?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, maPhieuThu);
			cstm.setDate(2, sqlDate);
			cstm.setDouble(3, soTien);
			cstm.setNString(4, nguoiNop);
			cstm.setInt(5, soHD);
		
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



	public static boolean DeletePhieuThu(int maPhieuThu, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procXoaPhieuThu(?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, maPhieuThu);
		
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
