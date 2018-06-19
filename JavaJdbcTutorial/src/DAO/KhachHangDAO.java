package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.KhachHang;
import BEAN.NhanVien;

public class KhachHangDAO {
	public static List<KhachHang> DisplayKhachHang(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<KhachHang> list = new ArrayList<KhachHang>();

		String sql = "select * from khachhang limit " + (start - 1) + ", " + count + "";
		

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				KhachHang nv = new KhachHang();

				nv.setMaKH(rs.getInt("maKH"));
				nv.setUsername(rs.getString("Username"));
				nv.setPassword(rs.getString("Password"));
				nv.setTenKH(rs.getString("tenKH"));
				nv.setGioiTinh(rs.getInt("gioiTinh"));
				nv.setNgaySinh(rs.getDate("ngaySinh"));
				nv.setSoDT(rs.getString("soDT"));
				nv.setEmail(rs.getString("Email"));
				nv.setDiaChi(rs.getString("diaChi"));
				nv.setMaQuyen(rs.getInt("maQuyen"));
				
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

			String sql = "select count(*) from khachhang";

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

		public static boolean InsertKhachHang(String Username, String Password, String tenNV, int gioiTinh,
				Date sqlDate, String soDT, String Email, String diaChi, int i, Connection conn) {
			boolean t = false;

			// Câu lệnh gọi thủ tục (***)
			String sql = "{call procThemKhachHang(?,?,?,?,?,?,?,?,?)}";

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
				cstm.setInt(9, 4);

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

		public static KhachHang Display_1KhachHang(int maKH, Connection conn) {
			KhachHang nv = new KhachHang();

			String sql = "select * from khachhang where maKH='"+maKH+"'";

			try {
				// Tạo một đối tượng PreparedStatement.
				PreparedStatement psmt = conn.prepareCall(sql);

				ResultSet rs = psmt.executeQuery();

				while (rs.next()) {

					nv.setMaKH(rs.getInt("maKH"));
					nv.setUsername(rs.getString("Username"));
					nv.setPassword(rs.getString("Password"));
					nv.setTenKH(rs.getString("tenKH"));
					nv.setGioiTinh(rs.getInt("gioiTinh"));
					nv.setNgaySinh(rs.getDate("ngaySinh"));
					nv.setSoDT(rs.getString("soDT"));
					nv.setEmail(rs.getString("Email"));
					nv.setDiaChi(rs.getString("diaChi"));
					nv.setMaQuyen(rs.getInt("maQuyen"));

				}

			} catch (SQLException e) {

				e.printStackTrace();
			}

			return nv;
		}

		public static boolean UpdateKhachHang(int maKH, String Username, String Password, String tenKH, int gioiTinh,
				Date sqlDate, String soDT, String Email, String diaChi, Connection conn) {
			boolean t = false;

			// Câu lệnh gọi thủ tục (***)
			String sql = "{call procSuaKhachHang(?,?,?,?,?,?,?,?,?,?)}";

			try {
				// Tạo một đối tượng CallableStatement.
				CallableStatement cstm = conn.prepareCall(sql);
				cstm.setInt(1, maKH);
				cstm.setString(2, Username);
				cstm.setString(3, Password);
				cstm.setNString(4, tenKH);
				cstm.setInt(5, gioiTinh);
				cstm.setDate(6, sqlDate);
				cstm.setString(7, soDT);
				cstm.setString(8, Email);
				cstm.setNString(9, diaChi);
				cstm.setInt(10, 4);

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

		public static boolean DeleteKhachHang(int maKH, Connection conn) {
			boolean t = false;

			// Câu lệnh gọi thủ tục (***)
			String sql = "{call procXoaKhachHang(?)}";

			try {
				// Tạo một đối tượng CallableStatement.
				CallableStatement cstm = conn.prepareCall(sql);
				cstm.setInt(1, maKH);
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
