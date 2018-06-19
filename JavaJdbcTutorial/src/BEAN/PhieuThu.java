package BEAN;
import java.sql.Date;

public class PhieuThu {
	private int maPhieuThu;
	private Date ngayXuatPhieu;
	private double soTien;
	private String nguoiNop;
	private int soHD;
	public int getMaPhieuThu() {
		return maPhieuThu;
	}
	public void setMaPhieuThu(int maPhieuThu) {
		this.maPhieuThu = maPhieuThu;
	}
	public Date getNgayXuatPhieu() {
		return ngayXuatPhieu;
	}
	public void setNgayXuatPhieu(Date ngayXuatPhieu) {
		this.ngayXuatPhieu = ngayXuatPhieu;
	}
	public double getSoTien() {
		return soTien;
	}
	public void setSoTien(double soTien) {
		this.soTien = soTien;
	}
	public String getNguoiNop() {
		return nguoiNop;
	}
	public void setNguoiNop(String nguoiNop) {
		this.nguoiNop = nguoiNop;
	}
	public int getSoHD() {
		return soHD;
	}
	public void setSoHD(int soHD) {
		this.soHD = soHD;
	}
	
	
}
