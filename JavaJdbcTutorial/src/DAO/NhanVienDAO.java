package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.MyPham;
import BEAN.NhanVien;

public class NhanVienDAO {
	public static List<NhanVien> DisplayNhanVien(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<NhanVien> list = new ArrayList<NhanVien>();

		String sql = "select * from nhanvien";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				NhanVien nv = new NhanVien();

				nv.setMaNV(rs.getInt("maNV"));
				nv.setUsername(rs.getString("Username"));
				nv.setPassword(rs.getString("Password"));
				nv.setTenNV(rs.getString("tenNV"));
				nv.setGioiTinh(rs.getInt("gioiTinh"));
				nv.setNgaySinh(rs.getDate("ngaySinh"));
				nv.setSoDT(rs.getString("soDT"));
				nv.setEmail(rs.getString("Email"));
				nv.setDiaChi(rs.getString("diaChi"));
				nv.setLuong(rs.getDouble("Luong"));
				nv.setMaQuyen(rs.getInt("maQuyen"));

				list.add(nv);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static boolean UpdateNhanVien(int maNV, String Username, String Password, String tenNV, int gioiTinh,
			Date ngaySinh, String soDT, String Email, String diaChi, double Luong, int maQuyen, Connection conn) {

		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procSuaNhanVien(?,?,?,?,?,?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, maNV);
			cstm.setString(2, Username);
			cstm.setString(3, Password);
			cstm.setNString(4, tenNV);
			cstm.setInt(5, gioiTinh);
			cstm.setDate(6, ngaySinh);
			cstm.setString(7, soDT);
			cstm.setString(8, Email);
			cstm.setNString(9, diaChi);
			cstm.setDouble(10, Luong);
			cstm.setInt(11, maQuyen);

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
	
	public static boolean InsertNhanVien(String Username, String Password, String tenNV, int gioiTinh,
			Date sqlDate, String soDT, String Email, String diaChi, double Luong, int maQuyen, Connection conn) {

		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procThemNhanVien(?,?,?,?,?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setString(1, Username);
			cstm.setString(2, Password);
			cstm.setNString(3, tenNV);
			cstm.setInt(4, gioiTinh);
			cstm.setDate(5, sqlDate);
			cstm.setString(6, soDT);
			cstm.setString(7, Email);
			cstm.setNString(8, diaChi);
			cstm.setDouble(9, Luong);
			cstm.setInt(10, maQuyen);

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
	
	
	public static NhanVien Display_1NhanVien(int maNV, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		NhanVien nv = new NhanVien();

		String sql = "select * from nhanvien where maNV='"+maNV+"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				nv.setMaNV(rs.getInt("maNV"));
				nv.setUsername(rs.getString("Username"));
				nv.setPassword(rs.getString("Password"));
				nv.setTenNV(rs.getString("tenNV"));
				nv.setGioiTinh(rs.getInt("gioiTinh"));
				nv.setNgaySinh(rs.getDate("ngaySinh"));
				nv.setSoDT(rs.getString("soDT"));
				nv.setEmail(rs.getString("Email"));
				nv.setDiaChi(rs.getString("diaChi"));
				nv.setLuong(rs.getDouble("Luong"));
				nv.setMaQuyen(rs.getInt("maQuyen"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return nv;
	}

	public static boolean DeleteNhanVien(int maNV, String Username, Connection conn) {
		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procXoaNhanVien(?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, maNV);
			cstm.setString(2, Username);
			cstm.executeUpdate();

			cstm.close();
			
			t = true;
		}

		catch (SQLException ex) {
			//e.printStackTrace();
			System.out.println(ex.getMessage());
		}
		
		return t;
	}

}
