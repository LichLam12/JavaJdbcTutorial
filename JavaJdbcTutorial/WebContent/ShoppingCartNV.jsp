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
    <link href="Style/css/header.css" rel="stylesheet">
    <link href="Style/css/home.css" rel="stylesheet">
     <link href="Style/css/hiddenform_management.css" rel="stylesheet">
    <link href="Style/css/srm.css" rel="stylesheet">
    
     <script src="Style/js/jquery-3.2.1.min.js"></script>  <!-- thư viện jquery -->
    <script src="Style/js/login_large.js"></script>  <!-- validate from by jquery -->
     <script src="Style/js/bootstrap.js"></script>
      
      <link href="css/bootstrap.css" rel="stylesheet">
<link href="css/img-hover.css" rel="stylesheet">
<link href="css/star-rating.css" rel="stylesheet">
<link href="css/header.css" rel="stylesheet">
<link href="css/student.css" rel="stylesheet">
<!-- giao diện personal info của ques manager y chang student nên sd chung -->
<link href="css/home.css" rel="stylesheet">
<link href="css/hiddenform_management.css" rel="stylesheet">

<script src="js/jquery-3.2.1.min.js"></script>
<!-- thư viện jquery -->
<script src="js/login_large.js"></script>
<!-- validate from by jquery -->
<script src="js/bootstrap.js"></script>
       
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
                                        <a href="SaveIntoCart?page=5&command=remove&mamypham=<%=list.getValue().getProduct().getMaMyPham()%>&username=${infoadmin.username }&password=${infoadmin.password }"><span style="font-size:19px;" aria-hidden="true">
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
                                <a href="ShoppingCart?username=${infoadmin.username }&password=${infoadmin.password }"
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
	<div class="giohang" id="modal-studentuser9">                              
        <div class="display_cart2">
            <h3>Giỏ Hàng (<%=cart.countItem()%> Sản Phẩm)</h3>
            <hr style="margin-bottom: 20px;">
           	<div class="shopping_cart pre-scrollable8" style="border-bottom: 1px solid #afa7a7;padding: 10px;height: 120px;">

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
                                        <a href="SaveIntoCart?page=5&command=remove&mamypham=<%=list.getValue().getProduct().getMaMyPham()%>&username=${infoadmin.username }&password=${infoadmin.password }"><span style="font-size:19px;" aria-hidden="true">
                                        &times; xóa</span></a></button>
                                </div>
                            </div>
                        </div>
				<%}%>                                                   

           </div>
            <div class="total_left" style="float: left;margin: 20px 0px -10px;font-size: 18px;">* Ngày đặt hàng: <%=ft.format(dNow) %>
            <br>
            <p>* Lưu ý: Vui lòng kiểm tra email sau khi quý khách đã đặt hàng xong.</p>
            
            <div class="form-group row" >
								<label for="inputEmail3" class="col-sm-3 col-form-label"
								>Hóa đơn đỏ: </label>
								<div class="custom-controls-stacked d-block col-sm-9" style="margin-top: 5px;">
									<label class="custom-control custom-radio"> <input
										id="radioStacked1" name="radio-stacked2" type="radio" value="true"
										 class="custom-control-input"  
										> <span class="custom-control-indicator"></span>
										<span class="custom-control-description">Có</span>
									</label> <label class="custom-control custom-radio"
										style="margin-left: 50px;"> <input id="radioStacked2"
										 name="radio-stacked2" type="radio" value="false"
										class="custom-control-input" checked> <span
										class="custom-control-indicator"></span> <span
										class="custom-control-description">Không</span>
									</label>
								</div>
			</div>
						
            </div>
            
		<style>
		.pre-scrollable8 { /*cáº­p nháº­t láº¡i tá»« class trÃªn*/
		  min-height: 300px;
		  overflow-y: auto;
		}
			
		</style>
       </div>
                            
       <div class="display_right_cart">
                             	<h3>Thông Tin Của Bạn</h3>
                                <hr style="margin-bottom: 20px;">
                                <p>Họ và tên: ${infoadmin.tenNV }</p>
                                <p>Email: ${infoadmin.email }</p>
                                <p>Số điện thoại: ${infoadmin.soDT }</p>
                                <p>Địa chỉ: ${infoadmin.diaChi }</p>
                                
                                <hr style="margin: 20px 0px 20px;">
                                Tổng:<div class="total_left" style="float: right;margin: 0px 10px;font-size: 22px;font-weight: bold;"> <%=cart.totalCart()%> VNĐ</div>
                                <hr style="margin: 20px 0px 20px;">
                                Phí vận chuyển:<div class="total_left" style="float: right;margin: 0px 10px;font-size: 22px;font-weight: bold;"> 0 VNĐ</div>
                                <hr style="margin: 20px 0px 20px;">
                                <div style="float: right;margin: 0px 10px 10px 0px;">
                                    <div id="btn">
                                    	<a href="Order?username=${infoadmin.username }&password=${infoadmin.password }">
                                                <input class="animated" type="submit" value="ĐẶT HÀNG">
                                    	</a>
                                    </div>
                               </div>
       </div>
                            
                            
     </div>
    
    <style>
    #modal-studentuser9 #btn .animated:hover{
    color: #fff;
    background: #ff3b00;
}
#modal-studentuser9 #btn .animated {
    background: #ff6200;
    border-radius: 5px;
    text-align: center;
    padding: 10px 20px;
    color: #ffffff;
    font-weight: bold;
    font-size: 18px;
}

.giohang{
    width: 94% !important;
    margin: 40px auto 100px auto;
}
.display_cart2{
    width: 800px;
    float: left;
    
    margin-right: 40px;
    border: 1px solid #afa7a7;
    padding: 10px;
}
.display_right_cart{
    font-size: 20px;
    border: 1px solid #afa7a7;
    padding: 10px;
    width: 400px;
    float: left;
}
 </style>
    
    <hr class="hr_line" style="margin-top: 800px !important;">
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