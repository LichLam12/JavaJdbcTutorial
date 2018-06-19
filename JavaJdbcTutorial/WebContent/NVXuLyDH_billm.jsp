<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Monggogo Toeic - Admin</title>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- Cài đặt Font Awesome-->
    <link rel=”stylesheet” href=”https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css” />


    <!-- Icon của button login -->
    <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>

    <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>

   <!-- Icon nút edit và delete trong table -->
    <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
   
    <!-- Bootstrap core CSS -->
    <link href="Style/css/bootstrap.css" rel="stylesheet">
    <link href="Style/css/select.css" rel="stylesheet">
    <link href="Style/css/img-hover.css" rel="stylesheet">
    <link href="Style/css/star-rating.css" rel="stylesheet">
    <link href="Style/css/header.css" rel="stylesheet">
    <link href="Style/css/student.css" rel="stylesheet">
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
						href="DisplayHoaDon_NV?username=${infoadmin.username }&password=${infoadmin.password }">HÓA ĐƠN
						</a>
				    <a class="dropdown-item"
						href="DisplayPhieuThu?username=${infoadmin.username }&password=${infoadmin.password }">PHIẾU THU
						</a>
				    <a class="dropdown-item"
						href="DisplayChiTietHD?username=${infoadmin.username }&password=${infoadmin.password }">CHI TIẾT HÓA ĐƠN
						</a>
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
	
	<!-- Cover -->
    <div id="cover" class="carousel">
        <img class="d-block w-100" src="http://sv1.upsieutoc.com/2017/11/08/cover1.jpg" alt="First slide">

        <div class="carousel-caption">
            <img id="avt" src="images/teams/team-2.png">
            <h2><span class="fullname_avt">${infoadmin.username }</span></h2>
        </div>
    </div>
    
    <!-- Form add Option, sử dụng chung với content group -->
    <div class="md-modal5 md-effect-7" id="modal-3options">
        <div class="md-content">
            <h4>
                <span>
                        Thêm Hóa Đơn
                        <button type="button" class="close" data-dismiss="modal-4options" aria-label="Close" id="closebtn">
                              <span aria-hidden="true">&times;</span>
                        </button>
                </span>
            </h4>

            <form id="login_form_addbill" class="was-validated" 
            action="InsertBill_NV?username=${infoadmin.username }&password=${infoadmin.password }" 
            method="post">
                <fieldset>
                        <div>
                                <label for="time" class="lbl_time">Ngày xuất hóa đơn</label> 
                                <input type="date" id="doB" name="ngayXuatHD" class="input_time" required />
                        </div>
                        
                        <div>
                            <label for="text" class="lbl_tinhtranghd">Tình trạng hóa đơn</label>
                            <select name="tinhTrangHD" class="custom-select d-block my-3 select_tinhtranghd" required>
                                        <option value="">Chọn tình trạng</option>
                                        <option value="1">Chưa thanh toán</option>
                                        <option value="2">Đang thanh toán</option>
                                        <option value="3">Đã thanh toán</option>
                                </select>
                        </div>    
                                    
                         <div>
                            <label for="text">Trị giá hóa đơn</label>
                            <span class="red_right_add2e" id="triGiaHD_error_message"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>   
                        <div>
                            <input type="text" id="triGiaHD" name="triGiaHD" placeholder="Nhập vào trị giá hóa đơn">
                        </div>
                        
                        <div>
                            <label for="text">Mã khách hàng</label>
                            <span class="red_right_add2e" id="username_error_message"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="username" name="maKH" placeholder="Nhập vào mã khách hàng">
                        </div>
                        
                        <div>
                            <label for="text">Mã nhân viên</label>
                            <span class="red_right_add2e" id="username_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="username2" name="maNV" placeholder="Nhập vào mã nhân viên">
                        </div>
                </fieldset>
                <div>
                    <div id="btn">
                        <input class="animated" type="submit" value="Thêm">
                        <input class="animated md-close" type="submit" value="Hủy">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- end form add Authority  -->
    
    
    <!-- Form repair Authority, sử dụng chung với content group -->
    <div class="md-modal5 md-effect-7" id="modal-4options">
        <div class="md-content">
            <h4 class="h4-repair-contentGr">
                <span>
                        Sửa Hóa Đơn
                        <button type="button" class="close" data-dismiss="modal-4options" aria-label="Close" id="closebtn1">
                              <span aria-hidden="true">&times;</span>
                        </button>
                </span>
            </h4>

            <form id="login_form_repairbill" class="was-validated pre-scrollable3" action="" method="post">
                <fieldset>
                       <div>
                            <label for="text">Số hóa đơn</label>
                            <span class="red_right_add2e" id="soHD_error_message"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>   
                        <div>
                            <input type="text" id="soHD" placeholder="Nhập vào trị giá hóa đơn" disabled>
                        </div>
                       
                        <div>
                                <label for="time" class="lbl_time">Ngày xuất hóa đơn</label> 
                                <input type="date" id="doB2" class="input_time" style="width: 60%;" required />
                        </div>
                        
                        <div>
                            <label for="text" class="lbl_tinhtranghd">Tình trạng hóa đơn</label>
                            <select class="custom-select d-block my-3 select_tinhtranghd" style="width: 60%;" required>
                                        <option value="">Chọn tình trạng</option>
                                        <option value="1">Chưa thanh toán</option>
                                        <option value="2">Đang thanh toán</option>
                                        <option value="3">Đã thanh toán</option>
                                </select>
                        </div>    
                                    
                         <div>
                            <label for="text">Trị giá hóa đơn</label>
                            <span class="red_right_add2e" id="triGiaHD_error_message2"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>   
                        <div>
                            <input type="text" id="triGiaHD2" placeholder="Nhập vào trị giá hóa đơn">
                        </div>
                        
                        <div>
                            <label for="text">Mã khách hàng</label>
                            <span class="red_right_add2e" id="username_error_message3"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="username3" placeholder="Nhập vào mã khách hàng">
                        </div>
                        
                        <div>
                            <label for="text">Mã nhân viên</label>
                            <span class="red_right_add2e" id="username_error_message4"></span>
                            <!-- cột hiện lỗi validate -->
                        </div>
                        <div>
                            <input type="text" id="username4" placeholder="Nhập vào mã nhân viên">
                        </div>
                </fieldset>
                <div>
                    <div id="btn">
                        <input class="animated" type="submit" value="Cập Nhật">
                        <input class="animated md-close" type="submit" value="Hủy">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- end form repair Class  -->
    
   
    <!-- Class Manegement -->
    <div id="cg" class="info">
        <div class="container marketing lead">
            <div class="row">
                <div class="col">
                    <h2 class="text-left per_info">QUẢN LÝ DANH SÁCH HÓA ĐƠN</h2>
                </div>
                <div class="col">
                 <div class="col-auto text-right btn-men operation">
                    <a class="md-trigger btn" data-modal="modal-3options" id="btn_left">
                        <button type="button" class="btn btn-outline-success">Add</button>
                    </a>
                 </div>
                </div>
            </div>
            <hr>
           

            <div class="form-row align-items-center">

                <div class="col-md-2">
                    <label class="mr-sm-6" for="inlineFormCustomSelect">Tìm kiếm:</label>
                </div>
                <div class="col-md-4">
                    <div class="cont_select_center">
                        <div class="select_mate" data-mate-select="active">
                            <select name="" onclick="return false;" id="">
                                <option value="" >Tất cả</option>
                                <option value="1">Số hóa đơn</option>
                                <option value="2">Ngày xuất hóa đơn</option>
                                <option value="3">Mã khách hàng</option>
                                <option value="4">Mã nhân viên</option>
                            </select>
                            <p class="selecionado_opcion" onclick="open_select(this)"></p>
                            <span onclick="open_select(this)" class="icon_select_mate">
                            <svg fill="#000000" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg">
                                <path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z"/><
                                path d="M0-.75h24v24H0z" fill="none"/>
                            </svg>
                            </span>
                            <div class="cont_list_select_mate">
                                <ul class="cont_select_int"> </ul>
                            </div>
                        </div>
                        <script src="Style/js/select.js"></script>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for..." aria-label="Search for...">
                        <span class="input-group-btn"><button class="btn btn-primary" type="button">Search</button></span>
                    </div>
                </div>
            </div>


            <table id="class-info" class="table table-hover text-center">
                <thead>
                    <tr>
                        <th>Số hóa đơn</th>
                        <th>Ngày xuất hóa đơn</th>
                        <th>Trị giá hóa đơn</th>
                        <th>Tình trạng hóa đơn</th>
                        <th>Mã khách hàng</th>
                        <th>Mã nhân viên</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="list" items="${qlhoadon }" >
                    <tr>
                        <td>${list.soHD }</td>
                        <td>${list.ngayXuatHD }</td>
                        <td>${list.triGiaHD }</td>
                        <td>${list.tinhTrangHD }</td>
                        <td>${list.maKH }</td>
                        <td>${list.maNV }</td>
                        <td><a href="Display_EditBill_NV?soHD=${list.soHD}&username=${infoadmin.username }&password=${infoadmin.password }">
							<i class="material-icons button edit md-trigger">edit</i> </a>
							<a href="DeleteHoaDon_NV?soHD=${list.soHD}&username=${infoadmin.username }&password=${infoadmin.password }">
							 <i class="material-icons button delete">delete</i></a>
							</td>
                    </tr>
                    </c:forEach>
                                                
                            <script src="Style/js/classie.js"></script>
                            <script src="Style/js/modalEffects.js"></script>
                </tbody>
            </table>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-end">
                <!-- numberpage trong HomeController -->
					<c:if test="${numberpage==1}">
	                    <li class="page-item disabled">
	                        <a class="page-link" href="#" tabindex="-1">Trước</a>
	                    </li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=1&username=${infoadmin.username }&password=${infoadmin.password }">1</a></li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=2&username=${infoadmin.username }&password=${infoadmin.password }">2</a></li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=3&username=${infoadmin.username }&password=${infoadmin.password }">3</a></li>
	                    <li class="page-item">
	                        <a class="page-link" href="DisplayHoaDon_NV?pageid=${numberpage+1}&username=${infoadmin.username }&password=${infoadmin.password }">Sau</a>
	                    </li>
                    </c:if>
                    
                    <c:if test="${numberpage==maxpageid}">
						<li class="page-item">
	                        <a class="page-link" href="DisplayHoaDon_NV?pageid=${numberpage-1}&username=${infoadmin.username }&password=${infoadmin.password }" tabindex="-1">Trước</a>
	                    </li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=1&username=${infoadmin.username }&password=${infoadmin.password }">1</a></li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=2&username=${infoadmin.username }&password=${infoadmin.password }">2</a></li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=3&username=${infoadmin.username }&password=${infoadmin.password }">3</a></li>
	                    <li class="page-item">
						<li class="page-item disabled">
	                        <a class="page-link" href="#">Sau</a>
	                    </li>
					</c:if>
							
					<c:if test="${numberpage>1 && numberpage<maxpageid}">
						<li class="page-item">
	                        <a class="page-link" href="DisplayHoaDon_NV?pageid=${numberpage-1}&username=${infoadmin.username }&password=${infoadmin.password }" tabindex="-1">Trước</a>
	                    </li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=1&username=${infoadmin.username }&password=${infoadmin.password }">1</a></li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=2&username=${infoadmin.username }&password=${infoadmin.password }">2</a></li>
	                    <li class="page-item"><a class="page-link" href="DisplayHoaDon_NV?pageid=3&username=${infoadmin.username }&password=${infoadmin.password }">3</a></li>
	                    <li class="page-item">
	                        <a class="page-link" href="DisplayHoaDon_NV?pageid=${numberpage+1}&username=${infoadmin.username }&password=${infoadmin.password }">Sau</a>
	                    </li>
					</c:if>
                </ul>
            </nav>
        </div>
    </div>

  <!-- javascript xử lý cái nút close -->
        <script type="text/javascript">
            //nút close của add
                document.getElementById("btn_left").onclick = function abc2() {
                        $("#modal-3options").show();
                    };
                document.getElementById("closebtn").onclick = function abc() {
                        $("#modal-3options").hide();
                    };
            //nút close của repair với 6 cột tương đương 6 nút edit
              document.getElementById("closebtn1").onclick = function abc3() {
                        $("#modal-4options").hide();
                    };
                document.getElementById("btn_left1").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
             document.getElementById("btn_left2").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
            document.getElementById("btn_left3").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
             document.getElementById("btn_left4").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
            document.getElementById("btn_left5").onclick = function abc4() {
                        $("#modal-4options").show();
                    };
             document.getElementById("btn_left6").onclick = function abc4() {
                        $("#modal-4options").show();
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