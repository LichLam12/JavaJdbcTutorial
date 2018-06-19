<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@page import="BEAN.Cart"%>
<%@page import="BEAN.Item"%>
<%@page import="java.util.Map"%>
<%@ page import="java.util.*, java.text.*"  %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
				href="HomeLogging?username=${infoclient.username }&password=${infoclient.password }">TRANG
					CHỦ <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="LoginController?username=${infoclient.username }&password=${infoclient.password }">THÔNG
					TIN</a></li>
			<li class="nav-item">
					<a class="md-trigger nav-link" data-modal="modal-cart" id="btn_left_4">GIỎ HÀNG</a>
			</li>
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
				<span class="fullname_avt">${infoclient.username }</span>
			</h2>
		</div>
	</div>

	<%   
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        Date dNow = new Date( );
        SimpleDateFormat ft = 
        new SimpleDateFormat ("E dd-MM-yyyy 'at' hh:mm");
    %>
        
       <div class="md-modal md-effect-7 pre-scrollable2" id="modal-cart">
        <div class="md-content">
            <h4>
                <span>
                        GIỎ HÀNG (<%=cart.countItem()%> SẢN PHẨM)
                        <button type="button" class="close" data-dismiss="modal-cart" aria-label="Close" id="closebtn_4">
                              <span aria-hidden="true">&times;</span>
                        </button>
                </span>
            </h4>

           <div class="display_cart">
                <div class="shopping_cart" >
                       <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                        <div class="cart_box" style="border-bottom: 1px solid #afa7a7;padding: 10px;height: 120px;">
                            <div class="message">
                                <div class="list_img" style="float: left;">
                                    <img src="<%=list.getValue().getProduct().getHinhAnhChinh()%>" style="width: 100px;height: 100px;margin-right: 15px;" class="img-responsive" alt="">
                                </div>
                                <div class="list_desc">
                                        <h5 style="width: 500px;"><%=list.getValue().getProduct().getTenMyPham()%></h5>
                                         <%=list.getValue().getQuantity()%> x<span class="actual"> <%=list.getValue().getProduct().getGiaBan()%> VND</span><br>
                                        <button type="button" class="close">
                                        <a href="SaveIntoCart?page=6&username=${infoclient.username }&password=${infoclient.password }&command=remove&mamypham=<%=list.getValue().getProduct().getMaMyPham()%>"><span style="font-size:19px;" aria-hidden="true">
                                        &times; xóa</span></a></button>
                                </div>
                            </div>
                        </div>
						<%}%>
                      
                </div>
                <div class="total_left" style="float: left;margin-top: 20px;font-size: 18px;">Ngày: <%=ft.format(dNow) %></div>
                <div class="total_left" style="float: right;margin: 20px 30px;font-size: 21px;font-weight: bold;">Tổng: <%=cart.totalCart()%> VNĐ</div>
                <div style="float: right;margin: 65px -35px -5px 0px;">
                    
                    <div id="btn">
                                <a href="ShoppingCart?username=${infoclient.username }&password=${infoclient.password }"
                                	style="margin-right: 0px;">
                                	<input class="animated" type="submit" value="ĐẶT HÀNG">
                                </a>
                                <input class="animated md-close" type="submit" value="HỦY BỎ">
                    </div>
               </div>
        </div>
        </div>
    </div>
         <script src="Style/js/classie.js"></script>
         <script src="Style/js/modalEffects.js"></script>
        <!-- javascript xử lý cái nút close -->
        <script type="text/javascript">
                  //nút close của GIỎ HÀNG
                    document.getElementById("btn_left_4").onclick = function abc3() {
                            $("#modal-cart").show();
                        };
                    document.getElementById("closebtn_4").onclick = function abc4() {
                            $("#modal-cart").hide();
                        };
              
                                              
        </script>
        
	<!-- Phần chính: personal info y chang bên student -->
	<div class="info">
		<div class="container marketing lead">

			<form id="login_form_client" class="was-validated"
				action="KH_EditKhachHang?makh=${infoclient.maKH }&username=${infoclient.username }&password=${infoclient.password }"
				 method="post" style="font-size: 19px">
				<div class="row">
					<div class="col">
						<h2 class="text-center per_info">THÔNG TIN CÁ NHÂN</h2>
					</div>
					<div class="col">
						<div class="col-auto text-center operation">
							<button type="button" id="edit_on_KH"
								class="btn btn-outline-success" style="width: 100px">Edit</button>
							<button type=submit class="btn btn-outline-primary"
								style="width: 100px" id="save_on_KH" disabled>Save</button>
						</div>
					</div>
				</div>
				<hr>

				<div class="row featurette">
					<div class="col-md-6">
						<div style="margin-bottom: 25px">
							<span class="red_right" id="fullname_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Họ
								và tên:</label>
							<div class="col-sm-9">

								<input type="text" class="form-control" id="fullname"
									name="tenkh" placeholder="Nhập vào họ và tên" disabled
									value="${infoclient.tenKH }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="username_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Username:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="username"
									name="usernameKH" placeholder="Nhập vào Username" disabled
									value="${infoclient.username }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="password_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputPassword3" class="col-sm-3 col-form-label">Password:</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="password"
									name="passwordKH" placeholder="Nhập vào password" disabled
									value="${infoclient.password }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="email_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Email:</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" id="email" name="email"
									placeholder="Nhập vào email" disabled
									value="${infoclient.email }">
							</div>
						</div>

					</div>

					<div class="col-md-6 ">
						<div class="form-group row">
							<c:if test="${infoclient.gioiTinh==0}">
								<label for="inputEmail3" class="col-sm-3 col-form-label">Giới
									tính:</label>
								<div class="custom-controls-stacked d-block col-sm-9">
									<label class="custom-control custom-radio"> <input
										id="radioStacked1" name="radio-stacked" type="radio" value="0"
										 class="custom-control-input" checked required
										disabled> <span class="custom-control-indicator"></span>
										<span class="custom-control-description">Nam</span>
									</label> <label class="custom-control custom-radio"
										style="margin-left: 50px;"> <input id="radioStacked2"
										 name="radio-stacked" type="radio" value="1"
										class="custom-control-input" disabled> <span
										class="custom-control-indicator"></span> <span
										class="custom-control-description">Nữ</span>
									</label>
								</div>
							</c:if>
							<c:if test="${infoclient.gioiTinh==1}">
								<label for="inputEmail3" class="col-sm-3 col-form-label">Giới
									tính:</label>
								<div class="custom-controls-stacked d-block col-sm-9">
									<label class="custom-control custom-radio"> <input
										 id="radioStacked1" name="radio-stacked" value="0"
										type="radio" class="custom-control-input"  disabled>
										<span class="custom-control-indicator"></span> <span
										class="custom-control-description">Nam</span>
									</label> <label class="custom-control custom-radio"
										style="margin-left: 50px;"> <input id="radioStacked2"
										 name="radio-stacked" type="radio" value="1"
										class="custom-control-input" disabled checked required> <span
										class="custom-control-indicator" ></span> <span
										class="custom-control-description">Nữ</span>
									</label>
								</div>
							</c:if>

						</div>

						<div class="top_perinfo"></div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Ngày
								sinh:</label>
							<div class="col-sm-9">
								<input type="date" id="doB" name="ngaysinh" class="form-control"
									disabled required value="${infoclient.ngaySinh }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="address_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Địa
								chỉ:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="address"
									name="diachi" placeholder="Nhập vào địa chỉ" disabled
									value="${infoclient.diaChi }">
							</div>
						</div>

						<div class="top_perinfo">
							<span class="red_right" id="phonenumber_error_message"></span>
						</div>
						<div class="form-group row">
							<label for="inputEmail3" class="col-sm-3 col-form-label">Số
								điện thoại:</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="phonenumber"
									name="sodt" placeholder="Nhập vào số điện thoại" disabled
									value="${infoclient.soDT }">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script type="text/javascript">
        
	 document.getElementById("edit_on_KH").onclick = function EditKH_Click() {//nhận vào object là mybutton
         //if(document.getElementById("input_on").disabled=true){
             document.getElementById("fullname").disabled=false;
             document.getElementById("username").disabled=false;
             document.getElementById("password").disabled=false;
             document.getElementById("email").disabled=false;
             document.getElementById("address").disabled=false;
             document.getElementById("doB").disabled=false;
             document.getElementById("phonenumber").disabled=false;
             document.getElementById("radioStacked1").disabled=false;
             document.getElementById("radioStacked2").disabled=false;
             document.getElementById("save_on_KH").disabled=false;
             document.getElementById("edit_on_KH").disabled=true;
         
         //}
     };
     document.getElementById("save_on_KH").onclick = function SaveKH_Click() {//nhận vào object là save_on
         	error_username = false;
		error_password = false;
     error_fullname=false;
     error_phonenumber=false;
     error_address=false;
     error_email=false;
     
		check_username();
		check_password();
     check_fullname();
     check_phonenumber();
     check_address();
     check_email();
         if(error_username == false && error_password == false && error_fullname == false &&
      error_phonenumber == false && error_address == false && error_email == false){
             document.getElementById("fullname").disabled=true;
             document.getElementById("username").disabled=true;
             document.getElementById("password").disabled=true;
             document.getElementById("email").disabled=true;
             document.getElementById("address").disabled=true;
             document.getElementById("doB").disabled=true;
             document.getElementById("phonenumber").disabled=true;
             document.getElementById("radioStacked1").disabled=true;
             document.getElementById("radioStacked2").disabled=true;
             document.getElementById("save_on_KH").disabled=true;
             document.getElementById("edit_on_KH").disabled=false;
         }
         else {
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