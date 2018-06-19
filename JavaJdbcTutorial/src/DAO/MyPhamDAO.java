package DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.MyPham;

public class MyPhamDAO {
	public static List<MyPham> DisplayMyPham(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<MyPham> list = new ArrayList<MyPham>();

		String sql = "select * from mypham limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				MyPham mp = new MyPham();

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

				System.out.println(" ---- ");
				System.out.println("maMyPham : " + rs.getInt("maMyPham"));
				System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
				System.out.println("phanLoai : " + rs.getString("phanLoai"));
				System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
				System.out.println("xuatXu : " + rs.getString("xuatXu"));
				System.out.println("dungTich : " + rs.getInt("dungTich"));
				System.out.println("giaBan : " + rs.getInt("giaBan"));
				System.out.println("congDung : " + rs.getString("congDung"));
				System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
				System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
				System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
				System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));

				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	public static List<MyPham> DisplayMyPham_SRM(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<MyPham> list = new ArrayList<MyPham>();

		String sql = "select * from mypham where phanLoai='Sữa rửa mặt' limit " + (start - 1) + ", " + count;

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				MyPham mp = new MyPham();

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

				System.out.println(" ---- ");
				System.out.println("maMyPham : " + rs.getInt("maMyPham"));
				System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
				System.out.println("phanLoai : " + rs.getString("phanLoai"));
				System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
				System.out.println("xuatXu : " + rs.getString("xuatXu"));
				System.out.println("dungTich : " + rs.getInt("dungTich"));
				System.out.println("giaBan : " + rs.getInt("giaBan"));
				System.out.println("congDung : " + rs.getString("congDung"));
				System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
				System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
				System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
				System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));

				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	
	public static List<MyPham> DisplayMyPham_KemDuong(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<MyPham> list = new ArrayList<MyPham>();

		String sql = "select * from mypham where phanLoai='Kem dưỡng da mặt' limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				MyPham mp = new MyPham();

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

				System.out.println(" ---- ");
				System.out.println("maMyPham : " + rs.getInt("maMyPham"));
				System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
				System.out.println("phanLoai : " + rs.getString("phanLoai"));
				System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
				System.out.println("xuatXu : " + rs.getString("xuatXu"));
				System.out.println("dungTich : " + rs.getInt("dungTich"));
				System.out.println("giaBan : " + rs.getInt("giaBan"));
				System.out.println("congDung : " + rs.getString("congDung"));
				System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
				System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
				System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
				System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));

				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	
	public static List<MyPham> DisplayMyPham_KemSPF(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<MyPham> list = new ArrayList<MyPham>();

		String sql = "select * from mypham where phanLoai='Kem chống nắng' limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				MyPham mp = new MyPham();

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

				System.out.println(" ---- ");
				System.out.println("maMyPham : " + rs.getInt("maMyPham"));
				System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
				System.out.println("phanLoai : " + rs.getString("phanLoai"));
				System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
				System.out.println("xuatXu : " + rs.getString("xuatXu"));
				System.out.println("dungTich : " + rs.getInt("dungTich"));
				System.out.println("giaBan : " + rs.getInt("giaBan"));
				System.out.println("congDung : " + rs.getString("congDung"));
				System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
				System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
				System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
				System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));

				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	public static List<MyPham> DisplayMyPham_Trimun(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<MyPham> list = new ArrayList<MyPham>();

		String sql = "select * from mypham where phanLoai='Trị mụn' limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				MyPham mp = new MyPham();

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

				System.out.println(" ---- ");
				System.out.println("maMyPham : " + rs.getInt("maMyPham"));
				System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
				System.out.println("phanLoai : " + rs.getString("phanLoai"));
				System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
				System.out.println("xuatXu : " + rs.getString("xuatXu"));
				System.out.println("dungTich : " + rs.getInt("dungTich"));
				System.out.println("giaBan : " + rs.getInt("giaBan"));
				System.out.println("congDung : " + rs.getString("congDung"));
				System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
				System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
				System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
				System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));

				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	
	public static List<MyPham> DisplayMyPham_GelXT(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<MyPham> list = new ArrayList<MyPham>();

		String sql = "select * from mypham where phanLoai='Gel xịt tóc' limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				MyPham mp = new MyPham();

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

				System.out.println(" ---- ");
				System.out.println("maMyPham : " + rs.getInt("maMyPham"));
				System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
				System.out.println("phanLoai : " + rs.getString("phanLoai"));
				System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
				System.out.println("xuatXu : " + rs.getString("xuatXu"));
				System.out.println("dungTich : " + rs.getInt("dungTich"));
				System.out.println("giaBan : " + rs.getInt("giaBan"));
				System.out.println("congDung : " + rs.getString("congDung"));
				System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
				System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
				System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
				System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));

				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	
	public static List<MyPham> DisplayMyPham_SuaTam(int start, int count, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		List<MyPham> list = new ArrayList<MyPham>();

		String sql = "select * from mypham where phanLoai='Sửa tắm-Lan khử mùi' limit " + (start - 1) + ", " + count + "";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {
				MyPham mp = new MyPham();

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

				System.out.println(" ---- ");
				System.out.println("maMyPham : " + rs.getInt("maMyPham"));
				System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
				System.out.println("phanLoai : " + rs.getString("phanLoai"));
				System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
				System.out.println("xuatXu : " + rs.getString("xuatXu"));
				System.out.println("dungTich : " + rs.getInt("dungTich"));
				System.out.println("giaBan : " + rs.getInt("giaBan"));
				System.out.println("congDung : " + rs.getString("congDung"));
				System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
				System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
				System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
				System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));

				list.add(mp);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;
	}
	
	// Hàm kiểm tra việc insert mỹ phẩm có win k (gọi store)
	public static boolean InsertMyPham(String tenMyPham, String phanLoai, String thuongHieu, String xuatXu,
			int dungTich, int giaBan, String congDung, String loaiSanPham, String thanhPhan, String hdSuDung,
			String hinhAnhChinh, Connection conn) {

		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procThemMyPham(?,?,?,?,?,?,?,?,?,?,?,?,?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = null;
			cstm = conn.prepareCall(sql);
			cstm.setNString(1, tenMyPham);
			cstm.setNString(2, phanLoai);
			cstm.setNString(3, thuongHieu);
			cstm.setNString(4, xuatXu);
			cstm.setInt(5, dungTich);
			cstm.setInt(6, giaBan);
			cstm.setNString(7, congDung);
			cstm.setNString(8, loaiSanPham);
			cstm.setNString(9, thanhPhan);
			cstm.setNString(10, hdSuDung);
			cstm.setNString(11, hinhAnhChinh);
			cstm.setNString(12, hinhAnhChinh);
			cstm.setNString(13, hinhAnhChinh);
		
			//ResultSet rs = cstm.executeQuery();
	          //if (rs.first()) {
	          //    System.out.println(rs.getString("tenMyPham"));
	         // }
			// Thực thi câu lệnh
			cstm.executeUpdate();
	          //cstm.close();
			System.out.println(tenMyPham);

			t = true;
			cstm.close();
		}

		catch (SQLException ex) {
			//e.printStackTrace();
			System.out.println(ex.getMessage());
		}
		return t;
	}
	
	
	public static MyPham Display_1MyPham(int maMyPham, Connection conn) {
		// Lấy ra kết nối tới cơ sở dữ liệu.

		MyPham mp = new MyPham();

		String sql = "select * from mypham where maMyPham='"+maMyPham+"'";

		try {
			// Tạo một đối tượng PreparedStatement.
			PreparedStatement psmt = conn.prepareCall(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				mp.setMaMyPham(rs.getInt("maMyPham"));
				mp.setTenMyPham(rs.getString("tenMyPham"));
				mp.setPhanLoai(rs.getString("phanLoai"));
				mp.setThuongHieu(rs.getString("thuongHieu"));
				mp.setXuatXu(rs.getString("xuatXu"));
				mp.setDungTich(rs.getInt("dungTich"));
				mp.setGiaBan(rs.getInt("giaBan"));
				mp.setCongDung(rs.getString("congDung"));
				mp.setLoaiSanPham(rs.getString("loaiSanPham"));
				mp.setThanhPhan(rs.getString("thanhPhan"));
				mp.setHdSuDung(rs.getString("hdSuDung"));
				mp.setHinhAnhChinh(rs.getString("hinhAnhChinh"));
				mp.setHinhAnhPhu1(rs.getString("hinhAnhPhu1"));
				mp.setHinhAnhPhu2(rs.getString("hinhAnhPhu2"));

			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return mp;
	}
	
	
	// Hàm kiểm tra việc insert mỹ phẩm có win k (gọi store)
		public static boolean UpdateMyPham(int maMyPham, String tenMyPham, String phanLoai, String thuongHieu, String xuatXu,
				int dungTich, int giaBan, String congDung, String loaiSanPham, String thanhPhan, String hdSuDung,
				String hinhAnhChinh, String hinhAnhPhu1, String hinhAnhPhu2, Connection conn) {

			boolean t = false;

			// Câu lệnh gọi thủ tục (***)
			String sql = "{call procSuaMyPham(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";

			try {
				// Tạo một đối tượng CallableStatement.
				CallableStatement cstm = conn.prepareCall(sql);
				cstm.setInt(1, maMyPham);
				cstm.setNString(2, tenMyPham);
				cstm.setNString(3, phanLoai);
				cstm.setNString(4, thuongHieu);
				cstm.setNString(5, xuatXu);
				cstm.setInt(6, dungTich);
				cstm.setInt(7, giaBan);
				cstm.setNString(8, congDung);
				cstm.setNString(9, loaiSanPham);
				cstm.setNString(10, thanhPhan);
				cstm.setNString(11, hdSuDung);
				cstm.setNString(12, hinhAnhChinh);
				cstm.setNString(13, hinhAnhPhu1);
				cstm.setNString(14, hinhAnhPhu2);
				/*
				cstm.setInt("_maMyPham", 53);
				cstm.setNString("_tenMyPham", "suamypham2");
				cstm.setNString("_phanLoai", "suamypham2");
				cstm.setNString("_thuongHieu", "suamypham2");
				cstm.setNString("_xuatXu", "suamypham2");
				cstm.setInt("_dungTich", 222);
				cstm.setInt("_giaBan", 22222);
				cstm.setNString("_congDung", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
				cstm.setNString("_loaiSanPham", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
				cstm.setNString("_thanhPhan", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
				cstm.setNString("_hdSuDung", "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
				cstm.setNString("_hinhAnhChinh", "AAAAAAAAAAAAAAAAAAAAAAAAA");
				cstm.setNString("_hinhAnhPhu1", "AAAAAAAAAAAAAAAAAAAAAAAAA");
				cstm.setNString("_hinhAnhPhu2", "AAAAAAAAAAAAAAAAAAAAAAAAA");
				*/
				cstm.executeUpdate();

/*
				ResultSet rs = cstm.executeQuery();

				if (rs.first()) {

					System.out.println(" ---- ");
					System.out.println("maMyPham : " + rs.getInt("maMyPham"));
					System.out.println("tenMyPham : " + rs.getString("tenMyPham"));
					System.out.println("phanLoai : " + rs.getString("phanLoai"));
					System.out.println("thuongHieu : " + rs.getString("thuongHieu"));
					System.out.println("xuatXu : " + rs.getString("xuatXu"));
					System.out.println("dungTich : " + rs.getInt("dungTich"));
					System.out.println("giaBan : " + rs.getInt("giaBan"));
					System.out.println("congDung : " + rs.getString("congDung"));
					System.out.println("loaiSanPham : " + rs.getString("loaiSanPham"));
					System.out.println("thanhPhan : " + rs.getString("thanhPhan"));
					System.out.println("hdSuDung : " + rs.getString("hdSuDung"));
					System.out.println("hinhAnh : " + rs.getString("hinhAnhChinh"));
					System.out.println("hinhAnh : " + rs.getString("hinhAnhPhu1"));
					System.out.println("hinhAnh : " + rs.getString("hinhAnhPhu2"));

				}
				*/
				cstm.close(); //k đóng lại thì nếu gọi store khác nữa sẽ k đc
				
				t = true;
				//cstm.close();
			}

			catch (SQLException ex) {
				//e.printStackTrace();
				System.out.println(ex.getMessage());
			}
			
			return t;
		}

	
	
	// Hàm kiểm tra xóa tài khoản giá trị truyền vào là roleid và connection
	public static boolean DeleteMyPham(int maMyPham, Connection conn) {

		boolean t = false;

		// Câu lệnh gọi thủ tục (***)
		String sql = "{call procXoaMyPham(?)}";

		try {
			// Tạo một đối tượng CallableStatement.
			CallableStatement cstm = conn.prepareCall(sql);
			cstm.setInt(1, maMyPham);

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
	// Hàm trả về tổng số hàng trong một table

	public static int CountRow(Connection conn) {

		int count = 0;

		String sql = "select count(*) from mypham";

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
}
