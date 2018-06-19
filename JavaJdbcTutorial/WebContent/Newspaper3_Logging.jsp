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
	
	<!-- Share -->
	<ul class='social-left'>
		<li>
			<a class="fa fa-facebook" href="#"><span>Facebook</span></a>
		</li>

		<li>
			<a class="fa fa-twitter" href="#"><span>Twitter</span></a>
		</li>

		<li>
			<a class="fa fa-dribbble" href="#"><span>Dribbble</span></a>
		</li>

		<li>
			<a class="fa fa-google-plus" href="#"><span>Google Plus</span></a>
		</li>
	</ul>

	
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
	
	<!-- New -->
	<div id="new1" class="container lead">
		<h1 class="text-center">TOP những loại mặt nạ giấy không dùng thì thôi <br>dùng thì nhất định sẽ ghiền</h1>
	
        <p><b>Đây chính là danh sách những loại mặt nạ giấy dưỡng da dùng siêu thích mà các nàng nhất định không thể bỏ lỡ.</b></p>
        <p>Không cần phải rửa lại sau khi sử dụng, mặt nạ giấy chính là loại dùng xong ngủ quên đến sáng vẫn an toàn cho da, ít kích ứng mà hiệu quả lại cực kỳ ổn. Và đây chính là TOP những loại mặt nạ giấy không dùng thì thôi dùng thì nhất định sẽ ghiền, cả nhà hãy cùng Bo Shop nghía qua nhé!</p>
		
		<br/><img src="Style/news/1c.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		
		<br><p>SeoulRose Rosa Rejuvenating Mask là dòng mặt nạ giấy có công dụng trẻ hóa làn da với thành phần chính chứa chiết xuất từ rau má, rau sam, sâm cổ, cây dâu tằm và 15 thành phần thảo dược. Đây là loại mặt nạ phải nói là cầm thôi đã thấy sướng tay vì dung tích sản phẩm đến 22g.</p>
		<p>Ưu điểm của em mặt nạ này chính là miếng mặt nạ rất mỏng và hút serum rất ổn, nghĩa là tinh chất bao nhiêu thì miếng sheet mask bằng vải sợi này sẽ hút hết và giúp các dưỡng chất không bay hơi trong suốt quá trình đắp. Độ mỏng mịn giúp nó ôm khít rất vừa mặt. Sản phẩm có mùi thơm nhẹ rất dễ chịu, tinh chất mát rượi và sánh đặc suốt quá trình đắp. Sau khi dùng da bạn sẽ mềm hơn, trơn và độ sáng sẽ thể hiện sau khoảng 2 – 3 miếng.</p>
		<p>Nhược điểm của em này là phần serum bên trong hơi nhớt, cả khi khô vẫn có cảm giác dinh dính chứ không khô hoàn toàn. Sáng dậy, khi rửa mặt bạn sẽ cảm nhận được trên mặt có một lớp màng mỏng hơi xốp ở phía trên. Giá cho mỗi em SeoulRose Rosa Rejuvenating Mask khoảng 30.000VNĐ.</p>
		<img src="Style/news/2c.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		
		<!--<div class="sep">
			<div class="image-hover img-inner-shadow-2">
				<img src="https://kenh14cdn.com/2017/sketches-on-foam-57551e3db5076880-1507609319447.jpg">
				<div class="layer"></div>
			</div>
		</div>-->
		<br>
		<p>My Beauty Diary – chính là cái tên từng gây sóng gió tạo nên niềm thương nỗi nhớ cho các nàng khi mà trào lưu mặt nạ giấy xứ Đài đổ bộ lên Việt Nam. Mặc dù có vô vàn sản phẩm nhưng dòng mặt nạ có thể mang lại cho bạn cảm giác fresh nhất chính là My Beauty Diary Agropyron Cristatum Mask hay còn được biết đến dưới cái tên là mặt nạ đá băng.</p>
		<p>Điểm cộng bự nhất của em này chính là cảm giác siêu the, mát lạnh đến từng lỗ chân lông ngay khi vừa đắp miếng sheet mask lên da kể cả khi bạn không bảo quản em nó bên trong tủ lạnh. Bên cạnh thiết kế siêu yêu, miếng mặt nạ cực mỏng và phần dưỡng chất khá nhiều tuy hơi đặc và mùi thơm thoang thoảng, em My Beauty Diary Agropyron Cristatum Mask còn ghi điểm nhờ vào khả năng thư giãn cơ mặt, xả stress và làm dịu da, công dụng chính là se khít lỗ chân lông, hiệu quả thể hiện rõ hơn sau khoảng miếng thứ 3.</p>
		<p>Mặc dù có mức giá khoảng 25 – 30.000VNĐ nhưng My Beauty Diary Agropyron Cristatum Mask chính là miếng mặt nạ có thể khiến bạn đổi ý và muốn mua thêm nhiều hơn 2 miếng để đắp cho đã!</p>
		<br/><img src="Style/news/3c.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		<img src="Style/news/4c.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		
		<br>
		<p>Hyaluronic Acid Super Smooth Moisture Mask – là dòng mặt nạ cấp ẩm, bổ sung nước cực nhanh dành cho da khô. Đây là một sản phẩm có xuất xứ từ hàng Trung Quốc nội địa nên bạn có thể an tâm về chất lượng chứ không phải loại hàng trộn fake tràn lan như thường thấy.</p>
		<p>Ưu điểm của em mặt nạ này chính là mức giá quá rẻ, tầm 6 -10.000VNĐ/miếng. Miếng mặt nạ mỏng siêu nhẹ có thể dính sát vào da, serum nhiều có thể bảo quản lạnh và dùng vào đợt sau, dưỡng chất lỏng và có mùi hương thoang thoảng. Công dụng chính là cấp nước, duy trì tình trạng ngậm nước trên bề mặt da và giúp da thoáng khô lẹ vô cùng.</p>
		<p>Tuy vậy, bởi vì quá mỏng nên miếng mask của Hyaluronic Acid Super Smooth Moisture Mask có thể dễ rách và hơi rộng so với những nàng mặt nhỏ. Nhưng với những anh trai phải thường xuyên phơi sương đội gió ngoài trời thì miếng mặt nạ này chính là một món quà tặng rất có ý nghĩa đấy!</p>
		
		<img src="Style/news/5c.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		<p>Lululun Face Mask Balance Moisture là dòng mặt nạ dưỡng ẩm cân bằng bán chạy nhất trong những sản phẩm mask dưỡng cơ bản phân khúc thơm, ngon vô cùng bổ rẻ của Nhật Bản và gây tiếng vang trong giới skincare dạo gần đây! Với mức giá tầm 140.000VNĐ, đây là một em mặt nạ có thể giúp bạn khắc phục được những vấn đề phát sinh trên da do mất nước hoặc thiếu ẩm.</p>
		<p>Với thành phần chính từ Hyaluronic Acid có công dụng cấp nước khóa ẩm, Lululun Face Mask Balance Moisture còn sở hữu thêm bộ thành phần từ chiết xuất đậu tương, đu đủ giúp bạn vừa làm sạch da vừa tẩy tế bào chết, làm dịu da bị tổn thương. Ưu điểm của em mặt nạ này là miếng mask cotton mỏng kích thước trung bình hợp với hầu hết form mặt Châu Á, tinh chất cũng thuộc dạng vừa và đủ dùng, không sánh đặc nhưng không quá lỏng để dây ra khắp nơi.</p>
		<br><img src="Style/news/6c.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		<p>JayJun Real Water Brightening Mask là loại mặt nạ cải tiến tích hợp 3 bước chăm sóc da trong cùng một sản phẩm, bao gồm: Sữa rửa mặt dạng bọt Real Water Cleansing Foam, Sữa dưỡng Vita Snow Essence và mặt nạ cấp ẩm Real Water Brightening Black Mask. Đây là một sản phẩm đang được yêu thích tại Hàn và có mức giá cũng không quá đắt tầm 49.000VNĐ.</p>
		<p>Nếu bạn là một người thích sử dụng những sản phẩm trọn bộ nhưng vẫn yêu thích sự tiện lợi nhanh gọn thì Real Water Brightening Black Mask chính là một gợi ý khá ổn.  Khác với những phiên bản mặt nạ giấy khác, em JayJun này có miếng mask khá dai, mỏng và có thiết kế thông minh vừa ôm sát mặt vừa không để dưỡng chất bay hơi nên hoàn toàn có thể mang đến cho bạn cảm giác siêu thoải mái, da mặt mềm mịn gần như tức thì sau khi sử dụng.  </p>
		<p>Trên đây chính là danh sách TOP những loại mặt nạ giấy không dùng thì thôi dùng thì nhất định sẽ ghiền. Hãy thử và trải nghiệm cùng với The Men Shop nhé!  </p>
		
		
		<p class="text-right">Nguồn: kenh14.vn</p>
	</div>
	
	
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