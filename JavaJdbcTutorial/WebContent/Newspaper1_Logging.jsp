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
		<h1 class="text-center">Hiệu quả như Bye Bye Blemish Acne Drying Lotion<br>chỉ có thể là 6 loại thuốc đặc trị mụn này!</h1>
	
        <p><b>Hóa ra ngoài Bye Bye Blemish Acne Drying Lotion thuốc trị mụn viêm hiệu quả còn có đến 6 loại này!</b></p>
		
		<br/><img src="Style/news/1.jpg" class="rounded mx-auto d-block" alt="..." width="650px">
		
		<br><p>Không chỉ là nỗi ám ảnh trong từng cơn mơ của mọi chị em, mụn còn là kẻ lấy đi sự đẹp trai soái khí của bao anh chàng khi vào tuổi bắt đầu trưởng thành. Nếu như mụn đầu trắng có thể diệt gọn bằng những miếng dán mụn thì mụn viêm, tấy đỏ hay ẩn lại rất cần đến danh sách những loại chấm mụn thì công dụng điều trị mới có hiệu quả được. Bạn vẫn thường biết đến Bye Bye Blemish Acne Drying Lotion nhưng trong bài viết hôm nay Bo Shop sẽ bật mí cho bạn 6 loại sản phẩm chấm mụn hiệu quả cực kỳ, cả nhà đừng bỏ qua nhé!</p>
		<img src="Style/news/2a.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		
		<!--<div class="sep">
			<div class="image-hover img-inner-shadow-2">
				<img src="https://kenh14cdn.com/2017/sketches-on-foam-57551e3db5076880-1507609319447.jpg">
				<div class="layer"></div>
			</div>
		</div>-->
		<br>
		<p>Trước khi nghía qua 6 loại kia bạn vẫn nên bắt đầu xem qua em sản phẩm chấm mụn nổi tiếng để khác trị mụn viêm cứng đầu mang tên là Bye Bye Blemish Acne Drying Lotion nhé!</p>
		
		<br>
		<p>Bye Bye Blemish Acne Drying Lotion là một sản phẩm trị mụn viêm khi dùng không cần lắc chai, việc cần làm duy nhất là giữ chúng thật yên tĩnh và dùng tăm bông nhúng sâu xuống dưới đáy để lấy sunfur rồi chấm vào nốt mụn, tuyệt đối không thoa toàn mặt. Thời gian sử dụng lý tưởng là 1 lần vào buổi tối hằng ngày đến khi hết mụn thì ngưng.</p>
		<img src="Style/news/3a.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		<p>Và nhân vật thứ nhất được nhắc đến trong danh sách 6 loại kem chấm mụn hiệu quả nhất trong bài này chính là Kate Somerville EraDikate Acne Spot Treatment – một sản phẩm được các chuyên gia đánh giá là phương pháp trị mụn viêm siêu thần thánh mang lại hiệu quả gần như lập tức.</p>
		
		<br>
		<p>Cũng giống như Bye Bye Blemish Acne Drying Lotion, kem chấm mụn Kate Somerville EraDikate Acne Spot Treatment cũng được bảo quản trong lọ kín gió dung tích 30ml, thành phần và kết cấu bên trong cũng gần như y hệt. Điểm khác duy nhất chính là phần màu hồng bên dưới Kate Somerville EraDikate Acne Spot Treatment có chứa lưu huỳnh (sunfur) 10%, salicylic acid, kẽm oxit và một số hoạt chất diệt khuẩn, kháng viêm, khô da và xẹp mụn khác.</p>
		<img src="Style/news/4a.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		<br>
		<p>Nhân vật thứ hai nằm trong danh sách 6 loại thuốc đặc trị mụn viêm này chính là một sản phẩm đến từ Pháp mang tên gọi đầy đủ là: La Roche-Posay Duo+. Với mức giá tầm 380.000VNĐ/40ml – đây được xem là một gợi ý khá hay ho cần được các các chàng và nàng tham khảo.</p>

		<p>La Roche-Posay Duo+ có kết cấu dạng kem có thể thoa lên mặt hoặc sử dụng theo dạng chấm mụn đều được. Đây là loại thuốc đặc trị mụn có bảng thành phần chứa những hoạt chất trị mụn, kháng viêm, chống khuẩn hiệu quả không thua Bye Bye Blemish Acne Drying Lotion là mấy, bao gồm: LHA (Capryloyl Salicylic Acid), Salicylic Acid (BHA), Salicylic Acid (BHA).</p>
		
		<p>Thật ra, ưu điểm nổi trội của em La Roche-Posay Duo+ này còn nằm ở thành phần phía sau có chứa thêm một lượng hoạt chất dưỡng ẩm và làm dịu da như: niacinamide, glycerin, salicylic acid… giúp sản phẩm dùng được cho cả da nhạy cảm, dễ kích ứng và nhất là không làm khô da như các loại chấm mụn sử dụng sunfur.</p>
		<img src="Style/news/5a.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px;">
		<br>
		<p>Có mức giá ngang ngửa với ứng cử viên đầu tiên, Kiehl's Blue Herbal Spot Treatment có giá thành khoảng 600.000VNĐ và với một chất lượng không thể nghi ngờ. Nếu bạn đã từng sử dụng qua một số sản phẩm trị mụn của thương hiệu Kiehl’s thì chắc chắn với loại thuốc đặc trị mụn viêm này bạn sẽ không cần phải mắc công tìm hiểu hay lo lắng thêm.</p>
	
		<p>Kiehl's Blue Herbal Spot Treatment sở hữu bảng thành phần đẹp, đơn giản nhưng hoàn toàn đầy đủ, tức là da bạn đang cần đáp ứng điều gì thì sản phẩm này sẽ có hết để cung cấp cho bạn. Kiehl's Blue Herbal Spot Treatment có chứa Salicylic Acid 1,5% (hoạt chất có khả năng thấm nhập sâu để vừa làm sạch, kháng viêm, giảm mụn, ngăn tình trạng sưng tấy), chiết xuất từ các loại thảo dược quen thuộc như vỏ quế, phỉ, gừng, nhũ hương kết hợp với bộ đôi dưỡng ẩm glycerin, butylene glycol… giúp bạn vừa trị mụn vừa làm dịu, vỗ về da bạn.</p>
		<p>Tuy nhiên hạn chế lớn nhất cho sản phẩm của dòng kem chấm mụn Kiehl's Blue Herbal Spot Treatment này chính là có chứa cồn khô Alcohol Denat nên nếu bạn nào từng có tiền sử bị dị ứng cồn thì nên cân nhắc thật kỹ trước khi mua sản phẩm này để tránh hậu quả đáng tiếc nhé!  </p>
		<img src="Style/news/6a.jpg" class="rounded mx-auto d-block" alt="..." style="height: 500px">
		<br>
		<p>Luôn đứng đầu trong các danh sách thành tố trị mụn nổi tiếng toàn cầu, tinh dầu tràm trà chính là một trong hoạt chất được ghi nhớ đầu tiên mỗi khi có người muốn trị mụn hiệu quả, đặc biệt là đặc trị mụn viêm, mụn sưng đỏ. Do vậy, ngay trong danh sách 6 loại kem chấm mụn hiệu quả kỳ này, cái tên The Body Shop Tea Tree Oil đương nhiên chính là nhân vật không thể thiếu rồi.</p>
		<p>Với mức giá khoảng 180.000VNĐ – 560.000VNĐ tùy dung tích, The Body Shop Tea Tree Oil thực chất là một loại tinh dầu bôi ngoài, thích hợp nhất là chấm lên các nốt mụn viêm hoặc là pha vài giọt vào sữa rửa mặt để làm sạch da mỗi ngày giúp các nốt  mụn “ăn bám” kia nhanh chóng khô và xẹp đi, buông tay không níu kéo vào ngày hôm sau. Sở dĩ sản phẩm có hiệu quả tốc độ như vậy, nguyên nhân chính là do tính chất của dầu tràm trà là kháng khuẩn, chống viêm và đặc trị mụn hiệu quả có xuất xứ từ Anh.</p>
		<img src="Style/news/7a.jpg" class="rounded mx-auto d-block" alt="..."style="height: 500px">
		<br>
		<p>Bên cạnh Tea Tree Oil, với khoảng 250.000VNĐ bạn sẽ có thể lựa chọn cho mình một sản phẩm đặc trị mụn viêm khác với thiết kế khá lạ mắt nhưng hiệu quả lại rất ổn. Và nhân vật tiếp theo trong danh sách của chúng ta chính là Burt’s Bees Herbal Blemish Stick.</p>
		<p>Với xuất thân từ ngôi nhà chung Burt’s Bees – đây là thương hiệu vốn nổi tiếng với nhiều sản phẩm lành tính với thành phần chứa các hoạt chất chiết xuất từ thiên nhiên 100% và đương nhiên dòng sản phẩm đặc trị mụn viêm này cũng không ngoại lệ.</p>
	
		<p>Mặc dù, Burt’s Bees Herbal Blemish Stick  cũng có chứa cồn khô song nguồn gốc của loại cồn này lại được chiết xuất từ ngô, vạn diệp, tràm trà, dầu chanh, thì là, hoa cúc, … do vậy không có gì lạ khi sản phẩm này có thể vừa giúp bạn đặc trị mụn viêm, giảm sưng, dịu da, xẹp mụn lại giảm kích ứng hợp với cả làn da nhayh cảm nhất. Đây là một sản phẩm dạng lăn nên bạn có thể tự lựa chọn cho mình một cách sử dụng phù hợp với từng tình trạng mụn viêm của mình.</p>
		<img src="Style/news/8a.png" class="rounded mx-auto d-block" alt="..." style="height: 500pxx">
		<br>
		<p>Và nhân vật cuối cùng được nhắc đến trong danh sách 6 loại thuốc trị mụn viêm hiệu quả ngoài Bye Bye Blemish Acne Drying Lotion chính là nhân vật đến từ Hàn Quốc, mang tên họ đầy đủ là Circle Red Spot Cream. Mặc dù có “nhan sắc” lém lỉnh hơi ngố tàu nhưng trong thực tế phương pháp trị mụn này lại có một xuất thân hết sức thượng lưu thuộc vào dòng đặc trị cao cấp của Trung tâm nghiên cứu sinh học COTDE (CBRC). Với mức giá khoảng 300.000VNĐ/30ml đây cũng là một iteam đáng thử để bạn đánh đuổi mụn viêm.</p>
        <p>Về thành phần, Circle Red Spot Cream có chứa tinh chất chính là dầu tràm trà, kẽm oxit, niacinamide, sunlfur và một số hoạt chất dưỡng ẩm, làm dịu. Chính vì vậy, hiệu quả của sản phẩm chỉ đạt được khi được áp dụng với các tạng da đang bị mụn viêm hoặc sưng đỏ.  </p>
        <p>Như tên gọi, Circle Red Spot Cream có kết cấu dạng kem, màu trắng đục khi á dụng lên da sẽ tạo thành những vệt màu trắng mờ. Sản phẩm còn được đánh giá là mang lại hiệu quả giảm thâm và làm dịu làn da đang ửng đỏ.</p>
        <p>Như vậy trên đây Bo Shop đã vừa chia sẻ chung cho cả nhà danh sách 6 loại chấm mụn hiệu quả bên cạnh Bye Bye Blemish Acne Drying Lotion. Bo Shop chúc bạn tìm được một sản phẩm phù hợp có thể gắn bó bên bạn và giúp bạn đánh bay lũ mụn đáng ghét kia! Chúc bạn thành công!</p>
		
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