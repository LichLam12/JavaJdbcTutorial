<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
    <%@ page import="java.util.*, java.text.*"  %>  
 
<%@ page import="java.util.List, java.text.*" %>
<%@page import="BEAN.Cart"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--Để đảm bảo việc render và "chạm phóng to", hãy thêm thẻ meta viewport vào <head> của bạn.-->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Monggogo Toeic</title>
    
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Cài đặt Font Awesome-->
    <link rel=”stylesheet” href=”https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css” />


    <!-- Icon của button login -->
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

    <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>

    <!-- Bootstrap core CSS -->
    <link href="Style/css/bootstrap.css" rel="stylesheet">

    <link href="Style/css/img-hover.css" rel="stylesheet">
    <link href="Style/css/star-rating.css" rel="stylesheet">
    <link href="Style/css/header_index2.css" rel="stylesheet">
    <link href="Style/css/home.css" rel="stylesheet">
     <link href="Style/css/hiddenform_management.css" rel="stylesheet">
    <link href="Style/css/srm.css" rel="stylesheet">
    
     <script src="Style/js/jquery-3.2.1.min.js"></script>  <!-- thư viện jquery -->
    <script src="Style/js/login_large.js"></script>  <!-- validate from by jquery -->
     <script src="Style/js/bootstrap.js"></script>
    
</head>
<body>
	<!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 0 10px">
		<a class="navbar-brand" href="index2.html"><img src="http://sv1.upsieutoc.com/2017/11/08/logo5b354a8226929ba2.png" height="50px" style="margin-left: 30px"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse lead" id="navbar">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="HomeForward2">Trang Chủ <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="gioithieu.jsp">Giới Thiệu</a>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle" href="DisplayInfoMyPham?phanloai=0" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản Phẩm</a>
					<div class="dropdown-menu" aria-labelledby="dropdown03">
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=1">Sửa Rửa Mặt</a>
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=2">Kem Chống Nắng</a>
                       	<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=3">Trị Mụn</a>
                       	<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=4">Kem Dưỡng Da</a>
                        <p class="dropdown-divider"></p>
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=5">Gel Xịt Tóc</a>
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=6">Sữa Tắm - Lăn Khử Mùi</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#classes">TIN TỨC</a>
				</li>
				<li class="nav-item">
					<a class="nav-link md-trigger" href="#" data-modal="modal-20" id="btn_left3">ĐĂNG NHẬP</a>
				</li>
				<li class="nav-item">
					<a class="nav-link " href="SaveIntoCart">GIỎ HÀNG</a>
				</li>
			</ul>
			<div id="imaginary_container"> 
                <div class="input-group stylish-input-group input-append">
                    <input type="text" class="form-control"  placeholder="Search" >
                    <span class="input-group-addon">
                        <button type="submit">
                            <i class="fa fa-search" aria-hidden="true"></i>
                        </button>  
                    </span>
                </div>
            </div>
		</div>
	</nav>

    <!-- Banner -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="Style/banner/bannerimage1.png" alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="Style/banner/bannerimage2.png" alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="Style/banner/bannerimage3.png" alt="Third slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="Style/banner/bannerimage4.png" alt="Fourth slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
		<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
	</div>
  
   
   <div id="underbanner">
        <div class="underbanner ubanner1">
            <img src="Style/icon/Capture.JPG">
            <p>SẢN PHẨM CAM KẾT CHÍNH HÃNG<br>PHÂN PHỐI 100%</p>
        </div>
        <div class="underbanner ubanner2">
            <img src="Style/icon/Capture2.JPG">
            <p>PHÁT HIỆN HÀNG FAKE ĐỀN NGAY<br>10 TRIỆU ĐỒNG</p>
        </div>
        <div class="underbanner ubanner3">
            <img src="Style/icon/Capture3.JPG">
            <p>TÍCH ĐIỂM 2.000.000 VNĐ ĐƯỢC<br>100.000 VNĐ</p>
        </div>
        <div class="underbanner ubanner4">
            <img src="Style/icon/Capture4.JPG">
            <p>FREESHIP NỘI THÀNH 48H VỚI<br>HÓA ĐƠN TRÊN 200.000 VNĐ</p>
        </div>
    </div> <!-- end underbanner -->
    <script type="text/javascript">
        $(window).resize(function() { /*nếu như size của cửa sổ HTML thay đổi thì ẩn thanh underbanner đi*/
            if($(window).width()<1024){
                $("#underbanner").hide();
            }
            else $("#underbanner").show();
    });      
    </script>
   

   
   <!-- From đăng nhập bị ẩn, khi nhấn vào login mới chạy vào giữa màn hình -->
    <div id="login">
        <!-- form login -->
        <div class="md-modal5 md-effect-7" id="modal-20">
            <div class="md-content">
                <h4>
                    <span>
                        Đăng nhập với:
                        <select>
                            <option>Khách hàng</option>
                            <option>Admin</option>
                        </select>
                    <button type="button" class="close" data-dismiss="modal-20" aria-label="Close" id="closebtn">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    
                    </span>
                </h4>

                <form id=login_form7 action="LoginController" method="post">
                    <fieldset>
                        <div>
                            <label for="email">Username</label> 
                            <span class="red_right3" id="username_error_message"></span> <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="username" name="username" placeholder="Nhập vào username">
                        </div>

                        <div>
                            <label for="password">Password</label> 
                            <span class="red_right3" id="password_error_message"></span>
                        </div>
                        <div>
                            <input type="password" id="password" name="password" placeholder="Nhập vào password">
                        </div>

                        <div>
                            <a id="forgot" href="#">Quên mật khẩu?</a>

                            <div id="btn">
                                <input class="animated" type="submit" value="Đăng Nhập">
                                <input class="animated md-close" type="submit" value="Hủy">
                            </div>
                        </div>
                    </fieldset>
                </form>

            </div><!-- end md-content -->
        </div>
        <!-- end form login -->

         <!-- Form register -->
         <div class="md-modal md-effect-7" id="modal-studentuser2">
        <div class="md-content">
            <h4>
                <span>
                        Đăng Ký
                        <button type="button" class="close" data-dismiss="modal-studentuser2" aria-label="Close" id="closebtn1">
                              <span aria-hidden="true">&times;</span>
                        </button>
                </span>
            </h4>

            <form id="login_form_studentuser2" class="was-validated pre-scrollable2" action="" method="post">
                <fieldset>
                    <div id="left_hiddenform">
                        <div>
                            <label for="text">Username</label>
                            <span class="red_right" id="username_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="username2" placeholder="Nhập vào username">
                        </div>

                        <div>
                            <label for="text">Password</label>
                            <span class="red_right" id="password_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="password2" placeholder="Nhập vào password">
                        </div>
                        
                        <div>
                            <label for="text">Họ và tên</label>
                            <span class="red_right" id="fullname_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="fullname2" placeholder="Nhập vào họ và tên">
                        </div>
                        
                        <div>
                            <label for="text">Email</label>
                            <span class="red_right" id="email_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="email2" placeholder="Nhập vào email">
                        </div>
                        
                        <div>
                            <label for="text">Địa chỉ</label>
                            <span class="red_right" id="address_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="address2" placeholder="Nhập vào địa chỉ">
                        </div>
                    </div>
                    <!-- end left_hiddenform -->

                    <div id="right_hiddenform">
                       <div>
                            <label for="text">Số Điện Thoại</label>
                            <span class="red_right" id="phonenumber_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div class="phonenumber2">
                            <input type="text" id="phonenumber2"
                            placeholder="Nhập vào số điện thoại">
                        </div>
                        
                        <div class="custom-controls-stacked d-block my-3">
                            <label for="text" class="sex">Giới Tính</label> 
                            <label class="custom-control custom-radio">
                                  <input id="radioStacked1" name="radio-stacked" type="radio" class="custom-control-input" required>
                                  <span class="custom-control-indicator"></span>
                                  <span class="custom-control-description">Nam</span>
                            </label>
                            <label class="custom-control custom-radio">
                                  <input id="radioStacked2" name="radio-stacked" type="radio" class="custom-control-input" required>
                                  <span class="custom-control-indicator"></span>
                                  <span class="custom-control-description">Nữ</span>
                            </label>
                          </div>
                          
                           <div>
                                <label for="time" class="lbl_time">Ngày sinh</label> 
                                <input type="date" id="doB" class="input_time" required />
                            </div>

                    </div>
                    <!-- end right_hiddenform -->

                </fieldset>
                <div>
                    <div id="btn">
                        <input class="animated" type="submit" value="Đăng Ký">
                        <input class="animated md-close" type="submit" value="Hủy">
                    </div>
                </div>
            </form>
        </div>
    </div>
         <!-- end form register -->
        
        
        <div id="right">
           <center>
            <h1 class="jumbotron-heading">CÙNG THE MEN SHOP MUA SẮM THỎA THÍCH NÀO</h1>
            <p class="lead text-muted">Chào mừng tất cả quý khách hàng đã ghé thăm themenshop.com. Hãy nhanh tay đăng ký để trở thành khách hàng thân thiết và nhận nhiều ưu đãi hấp dẫn nào!</p>
          
            <div id="btn">
                <a class="md-trigger btn btn_login" style="width:44%;" data-modal="modal-20" id="btn_left">
                    <span class="txt" style="margin-right:20px;">ĐĂNG NHẬP</span>
                    <span class="round"><i class="fa fa-chevron-right"></i></span>
                </a>

                <a class="md-trigger btn btn_register" style="width:42%;" data-modal="modal-studentuser2" id="btn_left1">
                    <span class="txt">ĐĂNG KÝ</span>
                    <span class="round"><i class="fa fa-chevron-right"></i></span>
                </a>

                <script src="Style/js/classie.js"></script>
                <script src="Style/js/modalEffects.js"></script>
            </div>
            </center>
        </div>

        <!-- javascript xử lý cái nút close -->
        <script type="text/javascript">
            //nút close của login
                document.getElementById("btn_left").onclick = function abc2() { //nhấn vào nút login
                        $("#modal-20").show();
                    };
                document.getElementById("closebtn").onclick = function abc() {
                        $("#modal-20").hide();
                    };
                document.getElementById("btn_left3").onclick = function abc2() { //nhấn vào nút đăng nhập trên thanh menu
                        $("#modal-20").show();
                    };
            //nút close của register
                document.getElementById("btn_left1").onclick = function abc2() {
                        $("#modal-studentuser2").show();
                    };
                document.getElementById("closebtn1").onclick = function abc() {
                        $("#modal-studentuser2").hide();
                    };
           
              
                                              
        </script>
    </div>
   
   <% java.util.ArrayList al = new java.util.ArrayList();
 
   %>
    <%   
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
    %>
   <!-- Sản phẩm bán chạy nhất -->
   <center>
   <h3 style="margin: 40px 0px 20px;font-size: 30px;">SẢN PHẨM BÁN CHẠY NHẤT</h3>
   <hr style="width: 94%;">
    <div class="row" style="text-align: center;width: 94%;">
    	<c:forEach var="listsrm" items="${srm }">
          <div class="col-xs-6 col-md-3 hiengiohang">
            <a href="XemMyPham?mamypham=${listsrm.maMyPham }" class="thumbnail">
              <img src="${listsrm.hinhAnhChinh }" alt="..." style="width: 275px;height: 275px;">
            </a>
            <a href="SaveIntoCart?mamypham=${listsrm.maMyPham }"><h5 id="ThemVaoCart">
              <i class="fa fa-shopping-cart" aria-hidden="true"></i> Thêm vào giỏ hàng</h5>
            </a>
             <h6 style="font-size: 18px;">${listsrm.tenMyPham }</h6>
            <h3>${listsrm.giaBan }VNĐ</h3>
          </div>
		</c:forEach>
        
        <c:forEach var="listkd" items="${kemduong }">
          <div class="col-xs-6 col-md-3 hiengiohang">
            <a href="XemMyPham?mamypham=${listkd.maMyPham }" class="thumbnail">
              <img src="${listkd.hinhAnhChinh }" alt="..." style="width: 275px;height: 275px;">
            </a>
            <a href="SaveIntoCart?mamypham=${listkd.maMyPham }"><h5 id="ThemVaoCart">
              <i class="fa fa-shopping-cart" aria-hidden="true"></i> Thêm vào giỏ hàng</h5>
            </a>
             <h6 style="font-size: 18px;">${listkd.tenMyPham }</h6>
            <h3>${listkd.giaBan }VNĐ</h3>
          </div>
		</c:forEach>
    </div>
    </center>
   
    <!-- Sản phẩm khuyến mãi -->
   <center>
   <h3 style="margin: 80px 0px 20px;font-size: 30px;">SẢN PHẨM KHUYẾN MÃI</h3>
   <hr style="width: 94%;">
    <div class="row" style="text-align: center;width: 94%;">
          <c:forEach var="listkcn" items="${kemspf }">
          <div class="col-xs-6 col-md-3 hiengiohang">
            <a href="XemMyPham?mamypham=${listkcn.maMyPham }" class="thumbnail">
              <img src="${listkcn.hinhAnhChinh }" alt="..." style="width: 275px;height: 275px;">
            </a>
            <a href="#"><h5 id="ThemVaoCart">
              <i class="fa fa-shopping-cart" aria-hidden="true"></i> Thêm vào giỏ hàng</h5>
            </a>
             <h6 style="font-size: 18px;">${listkcn.tenMyPham }</h6>
            <h3>${listkcn.giaBan }VNĐ</h3>
            <script>
    			document.getElementById("ThemVaoCart").onclick=function AddIntoCart() {
    				
        			alert("Sản phẩm đã được thêm vào giỏ hàng.");
    			}
        	</script>
          </div>
		</c:forEach>
        
        <c:forEach var="listst" items="${suatam }">
          <div class="col-xs-6 col-md-3 hiengiohang">
            <a href="XemMyPham?mamypham=${listst.maMyPham }" class="thumbnail">
              <img src="${listst.hinhAnhChinh }" alt="..." style="width: 275px;height: 275px;">
            </a>
            <a href="SaveIntoCart?mamypham=${listst.maMyPham }"><h5 id="ThemVaoCart">
              <i class="fa fa-shopping-cart" aria-hidden="true"></i> Thêm vào giỏ hàng</h5>
            </a>
             <h6 style="font-size: 18px;">${listst.tenMyPham }</h6>
            <h3>${listst.giaBan }VNĐ</h3>
          </div>
		</c:forEach>
    </div>
    </center>
   
   	<%
	   	request.getSession().setAttribute("List_mypham", al.get(0)); 

   	for(int i=0;i<al.size();i++)
	{
	}

   	%>
   	
   
    <!-- NEWS -->
   <center>
   <h3 style="margin: 80px 0px 20px;font-size: 30px;">KINH NGHIỆM LÀM ĐẸP</h3>
   <hr style="width: 94%;">
    <div class="row" style="text-align: center;width: 94%;">
          <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="new1.html" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/13/0006954_hieu-qua-nhu-bye-bye-blemish-acne-drying-lotion-chi-co-the-la-6-loai-thuoc-dac-tri-mun-nay.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Hiệu quả như Bye Bye Blemish Acne Drying Lotion chỉ có thể là 6 loại thuốc đặc trị mụn này!</h4>
          </div>
          
          <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="new2.html" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/13/0006694_giai-ma-bi-quyet-dep-da-tre-lau-voi-730-chiec-mat-na-cua-pham-bang-bang.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Giải mã bí quyết đẹp da trẻ lâu với 730 chiếc mặt nạ của Phạm Băng Băng</h4>
          </div>
          
          <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="new3.html" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/13/0006967_top-nhung-loai-mat-na-giay-khong-dung-thi-thoi-dung-thi-nhat-dinh-se-ghien.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">TOP những loại mặt nạ giấy không dùng thì thôi dùng thì nhất định sẽ ghiền</h4>
          </div>
    </div>
    </center>
   
   
   
   
    <hr class="hr_line">
    <!-- Follow -->
   <div id="follow">
        <div class="container marketing text-center lead">
            <img src="icon/logo.png">
            <h2 class="w3-container w3-center w3-animate-zoom">LIÊN HỆ VỚI CHÚNG TÔI</h2>
            <p>Hãy để địa chỉ email của bạn ngay bây giờ để đăng ký tin tức mới nhất từ THE MEN SHOP!</p>


            <div id="mc_embed_signup">
                <form class="validate form" id="mc-embedded-subscribe-form" action="" method="post" name="mc-embedded-subscribe-form" target="_blank" novalidate>
                    <div id="mc_embed_signup_scroll">
                <!--
                        <div class="clear" id="mce-responses">
                            <div class="response" id="mce-error-response" style="display: none;"></div>
                            <div class="response" id="mce-success-response" style="display: none;"></div>
                        </div>
                        <div style="position: absolute; left: -5000px;" aria-hidden="true">
                            <input type="text" name="" tabindex="-1" value="">
                        </div>
                -->
                        <div class="mc-field-group">
                            <input class="input required email" id="content_send" type="email" value="" name="" placeholder="Enter your email address"><input class="button send_follow" id="mc-embedded-subscribe" type="button" value="Send" name="subscribe">
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <script>
    document.getElementById("ThemVaoCart").onclick=function AddIntoCart() {
        alert("Sản phẩm đã được thêm vào giỏ hàng.");

}
         //Nút send ở phần Follow trang chủ
    document.getElementById("mc-embedded-subscribe").onclick=function send_follow() {

		var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
	
		if(pattern.test($("#content_send").val())) {
                alert("Email đã được gửi xác nhận.");
		} else {
            alert("Địa chỉ email không hợp lệ.");
		}
	
	} 
    </script>




    <!-- Footer -->
    <footer id=contact>
        <div class="splitter"></div>
        <ul>
            <li>
                <div class="text">
                    <h4>THE MEN SHOP</h4>
                    <div>
                        <p class="lead"><i class="fa fa-map" aria-hidden="true" style="padding-right: 12px"></i>Địa chỉ: 1040/22 Võ Văn Ngân, Quận Thủ Đức, Thành Phố Hồ Chí Minh</p>
                        <p class="lead"><i class="fa fa-address-book" aria-hidden="true" style="padding-right: 12px"></i>Phone: (088) 6677022</p>
                        <p class="lead"><i class="fa fa-envelope-open" aria-hidden="true" style="padding-right: 12px"></i>Email: themenshop@edu.vn</p>
                        <a href="#">Read more...</a></div>
                </div>
            </li>

            <li>
                <div class="text">
                    <h4>SOCIAL</h4>
                    <p class="lead social-icons">Connect us:
                        <a href=""> <i class="fa fa-facebook-square"></i></a>
                        <a href="" class="tw"> <i class="fa fa-twitter-square"></i></a>
                        <a href="" class="rs"> <i class="fa fa-rss-square"></i></a>
                        <a href="" class="yt"> <i class="fa fa-youtube-square"></i></a>
                        <a href="" class="li"> <i class="fa fa-linkedin-square"></i></a>
                        <a href="" class="gp"> <i class="fa fa-google-plus-square"></i></a>
                    </p>


                    <p class="lead">Vui lòng đánh giá trãi nghiệm của bạn tại TheMenShop:</p>
                    <fieldset class="rating">
                        <input type="radio" id="star5" name="rating" value="5" /><label class="full" for="star5" title="Awesome - 5 stars"></label>
                        <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
                        <input type="radio" id="star4" name="rating" value="4" /><label class="full" for="star4" title="Pretty good - 4 stars"></label>
                        <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
                        <input type="radio" id="star3" name="rating" value="3" /><label class="full" for="star3" title="Meh - 3 stars"></label>
                        <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
                        <input type="radio" id="star2" name="rating" value="2" /><label class="full" for="star2" title="Kinda bad - 2 stars"></label>
                        <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
                        <input type="radio" id="star1" name="rating" value="1" /><label class="full" for="star1" title="Sucks big time - 1 star"></label>
                        <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                    </fieldset>

                </div>
            </li>
        </ul>

        <div class="bar">
            <div class="clear"></div>
            <div class="copyright lead">&copy; 2017 The Men Shop All Rights Reserved</div>
        </div>
    </footer>





    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./Carousel Template for Bootstrap_files/jquery-3.2.1.slim.min.js.download" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>
        window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')

    </script>
    <script src="./Carousel Template for Bootstrap_files/popper.min.js.download"></script>
    <script src="./Carousel Template for Bootstrap_files/bootstrap.min.js.download"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="./Carousel Template for Bootstrap_files/holder.min.js.download"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./Carousel Template for Bootstrap_files/ie10-viewport-bug-workaround.js.download"></script>
   
</body>
</html>