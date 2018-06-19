<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
        <%@ page import="java.util.*, java.text.*"  %>  
 
<%@ page import="java.util.List, java.text.*" %>
<%@page import="BEAN.Cart"%>
<%@page import="BEAN.Item"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="icon/m.ico">

	<title>Monggogo Toeic</title>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

	<!-- Cài đặt Font Awesome-->
	<link rel=”stylesheet” href=”https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css” />

	<!-- Icon của button login -->
	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

	<!-- Bootstrap core CSS -->
	<link href="Style/css/bootstrap.css" rel="stylesheet">

    <link href="Style/css/img-hover.css" rel="stylesheet">
    <link href="Style/css/star-rating.css" rel="stylesheet">
    <link href="Style/css/header.css" rel="stylesheet">
    <link href="Style/css/home.css" rel="stylesheet">
     <link href="Style/css/hiddenform_management.css" rel="stylesheet">
    <link href="Style/css/srm.css" rel="stylesheet">
    <link href="Style/css/style.css" rel="stylesheet">
    
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
					<a class="nav-link" href="HomeLogging?username=${infoadmin.username }&password=${infoadmin.password }">Trang Chủ <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="DisplayGioiThieu?username=${infoadmin.username }&password=${infoadmin.password }">Giới Thiệu</a>
				</li>
				<li class="nav-item dropdown">
				    <a class="nav-link dropdown-toggle" href="DisplayInfoMyPham?phanloai=0&username=${infoadmin.username }&password=${infoadmin.password }" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sản Phẩm</a>
					<div class="dropdown-menu" aria-labelledby="dropdown03">
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=1&username=${infoadmin.username }&password=${infoadmin.password }">Sửa Rửa Mặt</a>
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=2&username=${infoadmin.username }&password=${infoadmin.password }">Kem Chống Nắng</a>
                       	<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=3&username=${infoadmin.username }&password=${infoadmin.password }">Trị Mụn</a>
                       	<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=4&username=${infoadmin.username }&password=${infoadmin.password }">Kem Dưỡng Da</a>
                        <p class="dropdown-divider"></p>
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=5&username=${infoadmin.username }&password=${infoadmin.password }">Gel Xịt Tóc</a>
						<a class="dropdown-item" href="DisplayInfoMyPham?phanloai=6&username=${infoadmin.username }&password=${infoadmin.password }">Sữa Tắm - Lăn Khử Mùi</a>
					</div>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="DisplayNews?username=${infoadmin.username }&password=${infoadmin.password }">TIN TỨC</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="LoginController?username=${infoadmin.username }&password=${infoadmin.password }">ACCOUNT</a>
				</li>
				<li class="nav-item">
					<a class="md-trigger nav-link" data-modal="modal-cart" id="btn_left_4">GIỎ HÀNG</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="HomeForward2">ĐĂNG XUẤT</a>
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
    
    <%   
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        Date dNow = new Date( );
        SimpleDateFormat ft = 
        new SimpleDateFormat ("E dd-MM-yyyy 'lúc' hh:mm");
    %>
    
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
                                        <a href="SaveIntoCart?page=1&command=remove&mamypham=<%=list.getValue().getProduct().getMaMyPham()%>"><span style="font-size:19px;" aria-hidden="true">
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
                    	<a class="md-trigger" data-modal="modal-20" id="btn_left2"
                    		style="margin-right: -50px;">
                                <input class="animated" type="submit" value="ĐẶT HÀNG">
                        </a>
                                <input class="animated md-close" type="submit" value="HỦY BỎ">
                    </div>
               </div>
        </div>
        </div>
    </div>
    </div>
    <script src="Style/js/classie.js"></script>
    <script src="Style/js/modalEffects.js"></script>
    <!-- javascript xử lý cái nút close -->
        <script type="text/javascript">
            //nút close của login
                document.getElementById("closebtn").onclick = function abc() {
                        $("#modal-20").hide();
                    };
                document.getElementById("btn_left3").onclick = function abc7() { //nhấn vào nút đăng nhập trên thanh menu
                        $("#modal-20").show();
                    };
                document.getElementById("btn_left2").onclick = function abc8() { //nhấn vào nút đăng nhập trên thanh menu
                        $("#modal-20").show();
                        $("#modal-cart").hide();
                    };
                  //nút close của GIỎ HÀNG
                    document.getElementById("btn_left_4").onclick = function abc3() {
                            $("#modal-cart").show();
                        };
                    document.getElementById("closebtn_4").onclick = function abc4() {
                            $("#modal-cart").hide();
                        };
                            
        </script>
    
    
    
    <!-- NEWS -->
   <center>
   <h3 style="margin: -50px 0px 20px;font-size: 30px;">KINH NGHIỆM LÀM ĐẸP</h3>
   <hr style="width: 94%;">
    <div class="row" style="text-align: center;width: 94%;">
          <div class="col-xs-6 col-md-4 hiengiohang" style="margin-bottom: 50px;">
            <a href="DisplayNewspaper?newspaper=1&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/13/0006954_hieu-qua-nhu-bye-bye-blemish-acne-drying-lotion-chi-co-the-la-6-loai-thuoc-dac-tri-mun-nay.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Hiệu quả như Bye Bye Blemish Acne Drying Lotion chỉ có thể là 6 loại thuốc đặc trị mụn này!</h4>
          </div>
          
          <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="DisplayNewspaper?newspaper=2&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/13/0006694_giai-ma-bi-quyet-dep-da-tre-lau-voi-730-chiec-mat-na-cua-pham-bang-bang.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Giải mã bí quyết đẹp da trẻ lâu với 730 chiếc mặt nạ của Phạm Băng Băng</h4>
          </div>
          
          <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="DisplayNewspaper?newspaper=3&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/13/0006967_top-nhung-loai-mat-na-giay-khong-dung-thi-thoi-dung-thi-nhat-dinh-se-ghien.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">TOP những loại mặt nạ giấy không dùng thì thôi dùng thì nhất định sẽ ghiền</h4>
          </div>
          
           <div class="col-xs-6 col-md-4 hiengiohang" style="margin-bottom: 50px;">
            <a href="DisplayNewspaper?newspaper=1&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/16/1e.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Những bí quyết và quy trình chăm sóc da tốt nhất dành cho nam giới(Phần 1)</h4>
          </div>
          
           <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="DisplayNewspaper?newspaper=2&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/16/1d.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Những bí quyết và quy trình chăm sóc da tốt nhất dành cho nam giới (Phần 2)</h4>
          </div>
          
           <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="DisplayNewspaper?newspaper=3&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/16/1f.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">101 Tips làm đẹp dành cho nam giới (Phần 1)</h4>
          </div>
          
           <div class="col-xs-6 col-md-4 hiengiohang" style="margin-bottom: 50px;">
            <a href="DisplayNewspaper?newspaper=1&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/16/1g.png" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Top 7 loại thức ăn nuôi cơ dành cho nam giới</h4>
          </div>
          
           <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="DisplayNewspaper?newspaper=2&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/16/1h.jpg" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">Bạn đang dưỡng da sai cách đấy các chàng trai!</h4>
          </div>
          
           <div class="col-xs-6 col-md-4 hiengiohang">
            <a href="DisplayNewspaper?newspaper=3&username=${infoadmin.username }&password=${infoadmin.password }" class="thumbnail">
              <img class="img_news" src="http://sv1.upsieutoc.com/2017/11/16/1m80ef54136c9ccfb5.jpg" alt="..." style="width: 100%;height: 250px;opacity: 1;">
            </a>
             <h4 style="font-size: 22px; margin-top: 30px;">SẸO RỖ LÀ GÌ ? LÀM THẾ NÀO ĐỂ ỦI CHÚNG BẰNG PHẲNG NHẤT</h4>
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