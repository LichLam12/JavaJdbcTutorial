package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Quyen;

public class QuyenDAO {
	public static List<Quyen> DisplayQuyen(Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<Quyen> list = new ArrayList<Quyen>();

		String sql = "select * from quyen";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				Quyen mp = new Quyen();

				mp.setMaQuyen(rs.getInt("maQuyen"));
				mp.setTenQuyen(rs.getString("tenQuyen"));
				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}

	public static Quyen Display_1Quyen(int maQuyen, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		Quyen q = new Quyen();

		String sql = "select * from quyen where maQuyen='" + maQuyen + "'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				q.setMaQuyen(rs.getInt("maQuyen"));
				q.setTenQuyen(rs.getString("tenQuyen"));
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return q;
	}

	// Hàm kiểm tra việc update quyeenf có win k (gọi store)
	public static boolean UpdateQuyen(int maQuyen, String tenQuyen, Connection conn) {

		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procSuaQuyen(?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, maQuyen);
			cstm.setNString(2, tenQuyen);

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
	
	// Hàm kiểm tra xóa tài khoản giá trị truyền vào là roleid và connection
		public static boolean DeleteQuyen(int maQuyen, Connection conn) {

			boolean t = false;

			// Câu lệnh gọi thủ tục (***)
			String sql = "{call procXoaQuyen(?)}";

			try {
				// Tạo một đối tượng CallableStatement.
				CallableStatement cstm = conn.prepareCall(sql);
				cstm.setInt(1, maQuyen);

				cstm.executeUpdate();

				cstm.close();
				
				t = true;
				//cstm.close();
			}

			catch (SQLException ex) {
				//e.printStackTrace();
				System.out.println(ex.getMessage());
			}
			
			return t;
		}
		
		// Hàm kiểm tra việc update quyeenf có win k (gọi store)
		public static boolean InsertQuyen(String tenQuyen, Connection conn) {

			boolean t = false;

			// Câu lệnh gọi thủ tục (***)
			String sql = "{call procThemQuyen(?)}";

			try {
				// Tạo một đối tượng CallableStatement.
				CallableStatement cstm = conn.prepareCall(sql);
				//cstm.setInt(1, maQuyen);
				cstm.setNString(1, tenQuyen);

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
