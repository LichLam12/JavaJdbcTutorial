package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import BEAN.KhachHang;
import BEAN.NhanVien;

public class LoginDAO {
	public static int LoginUser(String username, String password, Connection conn) {

		int t = 0; //t xác định mã quyền của nv hay khách hàng, =0 kug có nghĩa k tồn tại account
		boolean tontai_account=false;
		
		PreparedStatement psmt = null;

		String sql = "select * from nhanvien";

		try {

			psmt = conn.prepareStatement(sql);

			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				String Username = rs.getString("Username");
				String Password = rs.getString("Password");
				int maQuyen = rs.getInt("maQuyen");
				
				if (maQuyen == 1) {
					t = 1;
					tontai_account=true;
					break;
				}
				else if (maQuyen == 2) {
					t = 2;
					tontai_account=true;
					break;
				}
				else if (maQuyen == 3) {
					t = 3;
					tontai_account=true;
					break;
				}
				/*
				if (maQuyen == 1 && (Username.equals(username)) && (Password.equals(password))) {
					t = 1;
					tontai_account=true;
					break;
				}
				else if (maQuyen == 2 && (Username.equals(username)) && (Password.equals(password))) {
					t = 2;
					tontai_account=true;
					break;
				}
				else if (maQuyen == 3 && (Username.equals(username)) && (Password.equals(password))) {
					t = 3;
					tontai_account=true;
					break;
				}*/
			}
			
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(tontai_account==false) {
			PreparedStatement psmt2 = null;
	
			String sql2 = "select * from khachhang"; //khachhang cố định maQuyen=4, k cần lấy
	
			try {
	
				psmt2 = conn.prepareStatement(sql2);
	
				ResultSet rs2 = psmt2.executeQuery();
	
				while (rs2.next()) {
	
					String Username2 = rs2.getString("Username");
					String Password2 = rs2.getString("Password");
					
					if ((Username2.equals(username)) && (Password2.equals(password))) {
						t = 4;
						tontai_account=true;
						break;
					}
				/*
						t = 4;
						tontai_account=true;
						break;
					*/
				}
				
				
	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return t;

	}
	
	public static NhanVien DisplayInfoNV(String username, String password, Connection conn) {
		
		NhanVien nv = new NhanVien();
		
		String sql="select * from nhanvien where Username='"+username+"' and (Password='"+password+"')";
		System.out.println(sql);
		try {
			// Tạo một đối tượng PreparedStatement.
				PreparedStatement psmt = conn.prepareStatement(sql);

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
					
					String Username=rs.getString("Username");
					String TenNV=rs.getString("tenNV");
					System.out.println(TenNV);
					break;
					//nv=new NhanVien();
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			e.getMessage();
		}
		return nv;
	}
	
	public static KhachHang DisplayInfoKH(String username, String password, Connection conn) {
		
		KhachHang nv = new KhachHang();
		
		String sql="select * from khachhang where Username='"+username+"' and (Password='"+password+"')";
		
		try {
			// Tạo một đối tượng PreparedStatement.
				PreparedStatement psmt = conn.prepareStatement(sql);

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
					break;
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			e.getMessage();
		}
		return nv;
	}
	
	public static int Roleid(Connection conn) {
		
		int t = 4; //quyền khách hàng

		PreparedStatement psmt = null;

		String sql = "select maQuyen from nhanvien";

		try {
			
			psmt = conn.prepareStatement(sql);
			ResultSet rs = psmt.executeQuery();

			while (rs.next()) {

				int roleid = rs.getInt("maQuyen");
				
				if (roleid == 1) {
					t = 1; //quyền cung hàng
					break;
				}
				else if (roleid == 2) {
					t = 2; //quyền xử lý đơn hàng
					break;
				}
				else if (roleid == 3) {
					t = 3;  //quyền admin
					break;
				}

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return t;
	}
}
