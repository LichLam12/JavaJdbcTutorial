<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Monggogo Toeic - Admin</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- Cài đặt Font Awesome-->
<link rel=”stylesheet”
	href=”https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css” />


<!-- Icon của button login -->
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

<link rel='stylesheet prefetch'
	href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>

<!-- Bootstrap core CSS -->
<link href="Style/css/bootstrap.css" rel="stylesheet">
<link href="Style/css/img-hover.css" rel="stylesheet">
<link href="Style/css/star-rating.css" rel="stylesheet">
<link href="Style/css/header.css" rel="stylesheet">
<link href="Style/css/student.css" rel="stylesheet">
<!-- giao diện personal info của ques manager y chang student nên sd chung -->
<link href="Style/css/home.css" rel="stylesheet">
<link href="Style/css/hiddenform_management.css" rel="stylesheet">

<script src="Style/js/jquery-3.2.1.min.js"></script>
<!-- thư viện jquery -->
<script src="Style/js/login_large.js"></script>
<!-- validate from by jquery -->
<script src="Style/js/bootstrap.js"></script>
</head>
<body>
	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
		style="padding: 0 10px"> <a class="navbar-brand"
		href="index2.html"><img
		src="http://sv1.upsieutoc.com/2017/11/08/logo5b354a8226929ba2.png"
		height="50px" style="margin-left: 30px"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbar" aria-controls="navbarSupportedContent"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse lead" id="navbar">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link"
				href="HomeLogging?username=${infoadmin.username }&password=${infoadmin.password }">TRANG
					CHỦ <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="LoginController?username=${infoadmin.username }&password=${infoadmin.password }">THÔNG
					TIN</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="dropdown03"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">QUẢN
					LÝ</a>
				<div class="dropdown-menu" aria-labelledby="dropdown03">
					<a class="dropdown-item"
						href="DisplayMyPham?username=${infoadmin.username }&password=${infoadmin.password }">MỸ
						PHẨM</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="HomeForward2">ĐĂNG
					XUẤT</a></li>
		</ul>
		<div id="imaginary_container">
			<div class="input-group stylish-input-group input-append">
				<input type="text" class="form-control" placeholder="Search">
				<span class="input-group-addon">
					<button type="submit">
						<i class="fa fa-search" aria-hidden="true"></i>
					</button>
				</span>
			</div>
		</div>
	</div>
	</nav>

	<!-- Cover: phần banner -->
	<div id="cover" class="carousel">
		<!-- ảnh banner -->
		<img class="d-block w-100"
			src="http://sv1.upsieutoc.com/2017/11/08/cover1.jpg"
			alt="First slide">

		<div class="carousel-caption">
			<img id="avt" src="images/teams/team-2.png">
			<h2>
				<span class="fullname_avt">${infoadmin.username }</span>
			</h2>
		</div>
	</div>

	<!-- Phần chính: personal info y chang bên student -->
	<div class="info">
		<div class="container marketing lead">


			<form id="login_form_editmypham" class="was-validated"
				action="EditMyPham?mamypham=${infomypham.maMyPham }&username=${infoadmin.username }&password=${infoadmin.password }" method="post" style="font-size: 19px">
				<div class="row">
					<div class="col">
						<h2 class="text-center per_info">THÔNG TIN MỸ PHẨM</h2>
					</div>
					<div class="col">
						<div class="col-auto text-center operation">
							<button type="button" id="editbtn_EditMP"
								class="btn btn-outline-success" style="width: 100px">Edit</button>
							<button type="submit" class="btn btn-outline-primary"
								style="width: 100px" id="savebtn_EditMP" disabled>Save</button>
						</div>
					</div>
				</div>
				<hr>
				
				<div class="row featurette">
					<div class="col-md-6">
						<div style="margin-bottom: 25px">
							<span class="red_right" id="mamypham_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Mã
								mỹ phẩm:</label>
							<div class="col-sm-9">

								<input type="text" class="form-control" id="mamypham"
									name="mamypham" placeholder="Nhập vào họ và tên" disabled
									value="${infomypham.maMyPham }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="tenmypham_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Tên
								mỹ phẩm:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="tenmypham"
									name="tenmypham" placeholder="Nhập vào Username" disabled
									value="${infomypham.tenMyPham }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="phanloai_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputPassword3" class="col-sm-3 col-form-label">Phân
								loại:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="phanloai"
									name="phanloai" placeholder="Nhập vào password" disabled
									value="${infomypham.phanLoai }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="thuonghieu_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Thương
								hiệu:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="thuonghieu"
									name="thuonghieu" placeholder="Nhập vào email" disabled
									value="${infomypham.thuongHieu }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="xuatxu_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Xuất
								Xứ:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="xuatxu"
									name="xuatxu" placeholder="Nhập vào lương" disabled
									value="${infomypham.xuatXu }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="dungtich_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Dung
								tích:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="dungtich"
									name="dungtich" placeholder="Nhập vào lương" disabled
									value="${infomypham.dungTich }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="giaban_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Giá
								bán:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="giaban"
									name="giaban" placeholder="Nhập vào lương" disabled
									value="${infomypham.giaBan }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="hinhanhchinh_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Link
								ảnh chính:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="hinhanhchinh"
									name="hinhanhchinh" placeholder="Nhập vào lương" disabled
									value="${infomypham.hinhAnhChinh }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="hinhanhphu1_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Link
								ảnh phụ 1:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="hinhanhphu1"
									name="hinhanhphu1" placeholder="Nhập vào lương" disabled
									value="${infomypham.hinhAnhPhu1 }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="hinhanhphu2_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Link
								ảnh phụ 2:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="hinhanhphu2"
									name="hinhanhphu2" placeholder="Nhập vào lương" disabled
									value="${infomypham.hinhAnhPhu2 }">
							</div>
						</div>

					</div>

					<div class="col-md-6 " style="margin-top: -15px;">
						<div class="top_perinfo">
							<span class="red_right" id="congdung_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Công
								dụng:</label>
							<div class="col-sm-9">
								<textarea type="text" class="form-control" id="congdung"
									name="congdung" placeholder="Nhập vào lương" disabled cols="37"
									rows="10">${infomypham.congDung }</textarea>
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="loaisp_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Loại
								sản phẩm:</label>
							<div class="col-sm-9">
								<textarea type="text" class="form-control" id="loaisp"
									name="loaisp" placeholder="Nhập vào lương" disabled
									cols="37" rows="10">${infomypham.loaiSanPham }</textarea>
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="hdsd_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Hướng
								dẫn sử dụng:</label>
							<div class="col-sm-9">
								<textarea type="text" class="form-control" id="hdsd"
									name="hdsd" placeholder="Nhập vào lương" disabled cols="37"
									rows="10">${infomypham.hdSuDung }</textarea>
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="thanhphan_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Thành
								phần:</label>
							<div class="col-sm-9">
								<textarea type="text" class="form-control" id="thanhphan"
									name="thanhphan" placeholder="Nhập vào lương" disabled
									cols="37" rows="10">${infomypham.thanhPhan }</textarea>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>


	<script type="text/javascript">
		document.getElementById("editbtn_EditMP").onclick = function EditMP_Click() {//nhận vào object là mybutton
			//if(document.getElementById("input_on").disabled=true){
			document.getElementById("tenmypham").disabled = false;
			document.getElementById("phanloai").disabled = false;
			document.getElementById("thuonghieu").disabled = false;
			document.getElementById("xuatxu").disabled = false;
			document.getElementById("dungtich").disabled = false;
			document.getElementById("giaban").disabled = false;
			document.getElementById("hinhanhchinh").disabled = false;
			document.getElementById("hinhanhphu1").disabled = false;
			document.getElementById("hinhanhphu2").disabled = false;
			document.getElementById("congdung").disabled = false;
			document.getElementById("loaisp").disabled = false;
			document.getElementById("thanhphan").disabled = false;
			document.getElementById("hdsd").disabled = false;
			document.getElementById("savebtn_EditMP").disabled = false;
			document.getElementById("editbtn_EditMP").disabled = true;

			//}
		};
		document.getElementById("savebtn_EditMP").onclick = function SaveMP_Click() {//nhận vào object là save_on
			error_tenmypham = false, error_thuonghieu = false;
			error_dungtich = false, error_giaban = false;
			error_hinhanhchinh = false, error_thanhphan = false;
			error_congdung = false, error_loaisp = false, error_hdsd = false;
			error_hinhanhphu1 = false, error_hinhanhphu2 = false;
			error_phanloai = false, error_xuatxu = false;

			check_tenmypham()
			check_thuonghieu();
			check_dungtich();
			check_giaban();
			check_thanhphan();
			check_congdung();
			check_loaisp();
			check_hdsd();
			check_hinhanhchinh();
			check_hinhanhphu1();
			check_hinhanhphu2();
			check_phanloai();
			check_xuatxu();

			if (error_tenmypham == false && error_thuonghieu == false
					&& error_dungtich == false && error_giaban == false
					&& error_hinhanhchinh == false && error_thanhphan == false
					&& error_congdung == false && error_loaisp == false
					&& error_hdsd == false && error_hinhanhphu1 == false
					&& error_hinhanhphu2 == false && error_phanloai == false
					&& error_xuatxu == false) {
				document.getElementById("tenmypham").disabled = true;
				document.getElementById("phanloai").disabled = true;
				document.getElementById("thuonghieu").disabled = true;
				document.getElementById("xuatxu").disabled = true;
				document.getElementById("dungtich").disabled = true;
				document.getElementById("giaban").disabled = true;
				document.getElementById("hinhanhchinh").disabled = true;
				document.getElementById("hinhanhphu1").disabled = true;
				document.getElementById("hinhanhphu2").disabled = true;
				document.getElementById("congdung").disabled = true;
				document.getElementById("loaisp").disabled = true;
				document.getElementById("thanhphan").disabled = true;
				document.getElementById("hdsd").disabled = true;
				document.getElementById("savebtn_EditMP").disabled = true;
				document.getElementById("editbtn_EditMP").disabled = false;
			} else {
				alert("Xin vui lòng điền tất cả thay đổi.");
			}
		};
	</script>


	<!-- Footer -->
	<footer id=contact>
	<div class="splitter"></div>
	<ul>
		<li>
			<div class="text">
				<h4>THE MEN SHOP</h4>
				<div>
					<p class="lead">
						<i class="fa fa-map" aria-hidden="true"
							style="padding-right: 12px"></i>Địa chỉ: 1040/22 Võ Văn Ngân,
						Quận Thủ Đức, Thành Phố Hồ Chí Minh
					</p>
					<p class="lead">
						<i class="fa fa-address-book" aria-hidden="true"
							style="padding-right: 12px"></i>Phone: (088) 6677022
					</p>
					<p class="lead">
						<i class="fa fa-envelope-open" aria-hidden="true"
							style="padding-right: 12px"></i>Email: themenshop@edu.vn
					</p>
					<a href="#">Read more...</a>
				</div>
			</div>
		</li>

		<li>
			<div class="text">
				<h4>SOCIAL</h4>
				<p class="lead social-icons">
					Connect us: <a href=""> <i class="fa fa-facebook-square"></i></a> <a
						href="" class="tw"> <i class="fa fa-twitter-square"></i></a> <a
						href="" class="rs"> <i class="fa fa-rss-square"></i></a> <a
						href="" class="yt"> <i class="fa fa-youtube-square"></i></a> <a
						href="" class="li"> <i class="fa fa-linkedin-square"></i></a> <a
						href="" class="gp"> <i class="fa fa-google-plus-square"></i></a>
				</p>


				<p class="lead">Vui lòng đánh giá trãi nghiệm của bạn tại
					TheMenShop:</p>
				<fieldset class="rating">
					<input type="radio" id="star5" name="rating" value="5" /><label
						class="full" for="star5" title="Awesome - 5 stars"></label> <input
						type="radio" id="star4half" name="rating" value="4 and a half" /><label
						class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
					<input type="radio" id="star4" name="rating" value="4" /><label
						class="full" for="star4" title="Pretty good - 4 stars"></label> <input
						type="radio" id="star3half" name="rating" value="3 and a half" /><label
						class="half" for="star3half" title="Meh - 3.5 stars"></label> <input
						type="radio" id="star3" name="rating" value="3" /><label
						class="full" for="star3" title="Meh - 3 stars"></label> <input
						type="radio" id="star2half" name="rating" value="2 and a half" /><label
						class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
					<input type="radio" id="star2" name="rating" value="2" /><label
						class="full" for="star2" title="Kinda bad - 2 stars"></label> <input
						type="radio" id="star1half" name="rating" value="1 and a half" /><label
						class="half" for="star1half" title="Meh - 1.5 stars"></label> <input
						type="radio" id="star1" name="rating" value="1" /><label
						class="full" for="star1" title="Sucks big time - 1 star"></label>
					<input type="radio" id="starhalf" name="rating" value="half" /><label
						class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
				</fieldset>

			</div>
		</li>
	</ul>

	<div class="bar">
		<div class="clear"></div>
		<div class="copyright lead">&copy; 2017 The Men Shop All Rights
			Reserved</div>
	</div>
	</footer>





	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="./Carousel Template for Bootstrap_files/jquery-3.2.1.slim.min.js.download"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script
		src="./Carousel Template for Bootstrap_files/popper.min.js.download"></script>
	<script
		src="./Carousel Template for Bootstrap_files/bootstrap.min.js.download"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script
		src="./Carousel Template for Bootstrap_files/holder.min.js.download"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="./Carousel Template for Bootstrap_files/ie10-viewport-bug-workaround.js.download"></script>

</body>
</html>