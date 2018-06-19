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
import BEAN.NhanVien;

public class HoaDonDAO {
	public static List<HoaDon> DisplayHoaDon(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<HoaDon> list = new ArrayList<HoaDon>();

		String sql = "select * from hoadon limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				HoaDon nv = new HoaDon();
				
				nv.setSoHD(rs.getInt("soHD"));
				nv.setNgayXuatHD(rs.getDate("ngayXuatHD"));
				nv.setTriGiaHD(rs.getDouble("triGiaHD"));
				nv.setTinhTrangHD(rs.getString("tinhTrangHD"));
				nv.setMaKH(rs.getString("maKH"));
				nv.setMaNV(rs.getString("maNV"));

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

		String sql = "select count(*) from hoadon";

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



	public static boolean InsertHoaDon(Date sqlDate, double triGiaHD, String tinhTrangHD,
			String maKH, String maNV, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procThemHoaDon(?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
		
			cstm.setDate(1, sqlDate);
			cstm.setDouble(2, triGiaHD);
			cstm.setNString(3, tinhTrangHD);
			cstm.setString(4, maKH);
			cstm.setString(5, maNV);


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



	public static HoaDon Display_1HoaDon(int soHD, Connection conn) {
		HoaDon nv = new HoaDon();

		String sql = "select * from hoadon where soHD='"+soHD+"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				nv.setSoHD(rs.getInt("soHD"));
				nv.setNgayXuatHD(rs.getDate("ngayXuatHD"));
				nv.setTriGiaHD(rs.getDouble("triGiaHD"));
				nv.setTinhTrangHD(rs.getString("tinhTrangHD"));
				nv.setMaKH(rs.getString("maKH"));
				nv.setMaNV(rs.getString("maNV"));


			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}

	public static int SoHD_GanNhat(Date sqlDate, double triGiaHD, String tinhTrangHD,
			String maKH, String maNV, Connection conn) {
		int soHD=100;
		String sql = "select soHD from hoadon where ngayXuatHD='"+sqlDate+"' and triGiaHD='"+triGiaHD+
				"' and tinhTrangHD='"+tinhTrangHD+"' and maKH='"+maKH+"' and maNV='"+maNV+"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				soHD=(rs.getInt("soHD"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return soHD;
	}

	public static boolean UpdateHoaDon(int soHD, Date sqlDate, double triGiaHD, String tinhTrangHD, String maKH,
			String maNV, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procSuaHoaDon(?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, soHD);
			cstm.setDate(2, sqlDate);
			cstm.setDouble(3, triGiaHD);
			cstm.setNString(4, tinhTrangHD);
			cstm.setString(5, maKH);
			cstm.setString(6, maNV);
		
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



	public static boolean DeleteHoaDon(int soHD, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procXoaHoaDon(?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, soHD);
		
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
