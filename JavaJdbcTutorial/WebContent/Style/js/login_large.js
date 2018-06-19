$(function() {
    //form ẩn 1: add student, user
	$("#username_error_message").hide();
	$("#password_error_message").hide();
    $("#fullname_error_message").hide();
	$("#phonenumber_error_message").hide();
    $("#address_error_message").hide();
	$("#email_error_message").hide();
    $("#classID_error_message").hide();
    $("#luong_error_message").hide();
    $("#triGiaHD_error_message").hide();
    $("#soHD_error_message").hide();
    $("#soluong_error_message").hide();
    $("#mamypham_error_message").hide();
 
	var error_username = false, error_password = false;
    var error_fullname = false, error_phonenumber = false;
    var error_address = false, error_email = false;
    var error_classID = false, error_luong = false;
    var error_triGiaHD = false, error_soHD = false;
    var error_soluong = false, error_mamypham = false;
    
	$("#username").focusout(function() {
		check_username();
	});

	$("#password").focusout(function() {
		check_password();
	});
    $("#fullname").focusout(function() {
		check_fullname();
	});

	$("#phonenumber").focusout(function() {
		check_phonenumber();
	});
    $("#address").focusout(function() {
		check_address();
	});

	$("#email").focusout(function() {
		check_email();
	});
    $("#classID").focusout(function() {
		check_classID();
	});
    $("#luong").focusout(function() {
		check_luong();
	});
    $("#triGiaHD").focusout(function() {
		check_triGiaHD();
	});
    $("#soHD").focusout(function() {
		check_soHD();
	});
    $("#soluong").focusout(function() {
		check_soluong();
	});
    $("#mamypham").focusout(function() {
		check_mamypham();
	});
    
	function check_username() {
		var username_length = $("#username").val().length;

		if(username_length ==0) {
			$("#username_error_message").html("Vui lòng không để trống");
			$("#username_error_message").show();
			error_username = true;
		} else if(username_length < 5 || username_length > 30) {
			$("#username_error_message").html("Vui lòng nhập từ 5-30 ký tự");
			$("#username_error_message").show();      
			error_username = true;
		}
		else
		{
			$("#username_error_message").hide();
		}

	}

	function check_password() {

		var password_length = $("#password").val().length;

		if(password_length ==0) {
			$("#password_error_message").html("Vui lòng không để trống");
			$("#password_error_message").show();
			error_password = true;
		} else if(password_length < 8 || password_length > 40) {
			$("#password_error_message").html("Vui lòng nhập từ 8-40 ký tự");
			$("#password_error_message").show();
			error_password = true;

		} else {
			$("#password_error_message").hide();
		}
	}
    
    function check_fullname() {
		var fullname_length = $("#fullname").val().length;

		if(fullname_length ==0) {
			$("#fullname_error_message").html("Vui lòng không để trống");
			$("#fullname_error_message").show();
			error_fullname = true;
		} else if(fullname_length < 5 || fullname_length > 50) {
			$("#fullname_error_message").html("Vui lòng nhập từ 5-50 ký tự");
			$("#fullname_error_message").show();      
			error_fullname = true;
		}
		else
		{
			$("#fullname_error_message").hide();
		}

	}
    
    function check_phonenumber() {
		var phonenumber_length = $("#phonenumber").val().length;

		var filter = /^[0-9-+]+$/;
        
		if(phonenumber_length ==0) {
			$("#phonenumber_error_message").html("Vui lòng không để trống");
			$("#phonenumber_error_message").show();
			error_phonenumber = true;
		} else  if(filter.test($("#phonenumber").val()) < 1) {
            $("#phonenumber_error_message").html("Vui lòng nhập số hợp lệ");
            $("#phonenumber_error_message").show();
        } else if(phonenumber_length < 9 || phonenumber_length > 13) {
			$("#phonenumber_error_message").html("Vui lòng nhập từ 9-13 ký tự");
			$("#phonenumber_error_message").show();      
			error_phonenumber = true;
		}
		else
		{
			$("#phonenumber_error_message").hide();
		}

	}
    
    function check_luong() {
		var luong_length = $("#luong").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(luong_length ==0) {
			$("#luong_error_message").html("Vui lòng không để trống");
			$("#luong_error_message").show();
			error_luong = true;
		} else if(filter.test($("#luong").val()) <1 ) {
            $("#luong_error_message").html("Vui lòng nhập số hợp lệ");
            $("#luong_error_message").show();
            error_luong = true;
        } else if($("#luong").val() < 1000 || $("#luong").val() > 50000) {
			$("#luong_error_message").html("Vui lòng nhập từ 1000-50000 VNĐ");
			$("#luong_error_message").show();      
			error_luong = true;
		}
		else
		{
			$("#luong_error_message").hide();
		}

	}
    
     function check_address() {
		var address_length = $("#address").val().length;

		if(address_length == 0) {
			$("#address_error_message").html("Vui lòng không để trống");
			$("#address_error_message").show();
			error_address = true;
		} else if(address_length < 5 || address_length > 100) {
			$("#address_error_message").html("Vui lòng nhập từ 5-100 ký tự");
			$("#address_error_message").show();      
			error_address = true;
		}
		else
		{
			$("#address_error_message").hide();
		}

	}
    
    function check_email() {

		var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
	
		if(pattern.test($("#email").val())) {
			$("#email_error_message").hide();
		} else {
			$("#email_error_message").html("Vui lòng nhập email hợp lệ");
			$("#email_error_message").show();
			error_email = true;
		}
	
	}
    
    function check_classID() {
		var classID_length = $("#classID").val().length;

		if(classID_length ==0) {
			$("#classID_error_message").html("Vui lòng không để trống");
			$("#classID_error_message").show();
			error_classID = true;
		} else if(classID_length < 2 || classID_length > 10) {
			$("#classID_error_message").html("Vui lòng nhập từ 2-10 ký tự");
			$("#classID_error_message").show();      
			error_classID = true;
		}
		else
		{
			$("#classID_error_message").hide();
		}

	}
    
    function check_triGiaHD() {
		var triGiaHD_length = $("#triGiaHD").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(triGiaHD_length ==0) {
			$("#triGiaHD_error_message").html("Vui lòng không để trống");
			$("#triGiaHD_error_message").show();
			error_triGiaHD = true;
		} else if(filter.test($("#triGiaHD").val()) <1 ) {
            $("#triGiaHD_error_message").html("Vui lòng nhập số");
            $("#triGiaHD_error_message").show();
            error_triGiaHD = true;
        } else if($("#triGiaHD").val() < 1000 || $("#triGiaHD").val() > 50000000) {
			$("#triGiaHD_error_message").html("Vui lòng nhập từ 10 nghìn đến 50 triệu");
			$("#triGiaHD_error_message").show();      
			error_triGiaHD = true;
		}
		else
		{
			$("#triGiaHD_error_message").hide();
		}

	}
    
    function check_soHD() {
		var soHD_length = $("#soHD").val().length;

		if(soHD_length ==0) {
			$("#soHD_error_message").html("Vui lòng không để trống");
			$("#soHD_error_message").show();
			error_soHD = true;
		} else if(soHD_length < 1 || soHD_length > 5) {
			$("#soHD_error_message").html("Vui lòng nhập từ 1-5 ký tự");
			$("#soHD_error_message").show();      
			error_soHD = true;
		}
		else
		{
			$("#soHD_error_message").hide();
		}

	}
    
    
    function check_soluong() {
		var soluong_length = $("#soluong").val().length;

		if(soluong_length ==0) {
			$("#soluong_error_message").html("Vui lòng không để trống");
			$("#soluong_error_message").show();
			error_soluong = true;
		} else if(soluong_length < 1 || soluong_length > 4) {
			$("#soluong_error_message").html("Vui lòng nhập từ 1-4 ký tự");
			$("#soluong_error_message").show();      
			error_soluong = true;
		}
		else
		{
			$("#soluong_error_message").hide();
		}

	}

    function check_mamypham() {
		var mamypham_length = $("#mamypham").val().length;

		if(mamypham_length ==0) {
			$("#mamypham_error_message").html("Vui lòng không để trống");
			$("#mamypham_error_message").show();
			error_mamypham = true;
		} else if(mamypham_length < 1 || mamypham_length > 5) {
			$("#mamypham_error_message").html("Vui lòng nhập từ 1-5 ký tự");
			$("#mamypham_error_message").show();      
			error_mamypham = true;
		}
		else
		{
			$("#mamypham_error_message").hide();
		}
	}
    
    
	$("#login_form").submit(function() {

		error_username = false;
		error_password = false;
        error_fullname=false;
        error_sex=false;
        error_doB=false;
        error_phonenumber=false;
        error_address=false;
        error_email=false;
        error_classID=false;
        
		check_username();
		check_password();
        check_fullname();
        check_sex();
        check_doB();
        check_phonenumber();
        check_address();
        check_email();
        check_classID();
        
		if(error_username == false && error_password == false && error_fullname == false &&
        error_sex == false && error_doB == false && error_phonenumber == false && error_address == false
        && error_email == false && error_classID == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    
    //form ẩn 2: repair student, user
    $("#username_error_message2").hide();
	$("#password_error_message2").hide();
    $("#fullname_error_message2").hide();
	$("#phonenumber_error_message2").hide();
    $("#address_error_message2").hide();
	$("#email_error_message2").hide();
    $("#classID_error_message2").hide();
    $("#luong_error_message2").hide();
    $("#triGiaHD_error_message2").hide();
    $("#soHD_error_message2").hide();
    $("#soluong_error_message2").hide();
    $("#mamypham_error_message2").hide();

    var error_username2 = false;
	var error_password2 = false;
    var error_fullname2 = false, error_phonenumber2 = false;
    var error_address2 = false, error_email2 = false;
    var error_classID2 = false, error_luong2 = false;
    var error_triGiaHD2 = false, error_soHD2 = false;
    var error_soluong2 = false, error_mamypham2 = false;

    
    $("#username2").focusout(function(){
       check_username2(); 
    });
	$("#password2").focusout(function() {
		check_password2();
	});
    $("#fullname2").focusout(function() {
		check_fullname2();
	});

	$("#phonenumber2").focusout(function() {
		check_phonenumber2();
	});
    $("#address2").focusout(function() {
		check_address2();
	});

	$("#email2").focusout(function() {
		check_email2();
	});
    $("#classID2").focusout(function() {
		check_classID2();
	});
    $("#luong2").focusout(function() {
		check_luong2();
	});
    $("#triGiaHD2").focusout(function() {
		check_triGiaHD2();
	});
    $("#soHD2").focusout(function() {
		check_soHD2();
	});
     $("#soluong2").focusout(function() {
		check_soluong2();
	});
    $("#mamypham2").focusout(function() {
		check_mamypham2();
	});
    
    function check_username2() {
		var username2_length = $("#username2").val().length;

		if(username2_length ==0) {
			$("#username_error_message2").html("Vui lòng không để trống");
			$("#username_error_message2").show();
			error_username2 = true;
		} else if(username2_length < 5 || username2_length > 30) {
			$("#username_error_message2").html("Vui lòng nhập từ 5-30 ký tự");
			$("#username_error_message2").show();      
			error_username2 = true;
		}
		else
		{
			$("#username_error_message2").hide();
		}

	}
    
	function check_password2() {

		var password2_length = $("#password2").val().length;

		if(password2_length ==0) {
			$("#password_error_message2").html("Vui lòng không để trống");
			$("#password_error_message2").show();
			error_password2 = true;
		} else if(password2_length < 8 || password2_length > 40) {
			$("#password_error_message2").html("Vui lòng nhập từ 8-40 ký tự");
			$("#password_error_message2").show();
			error_password2 = true;

		} else {
			$("#password_error_message2").hide();
		}
	}
    
    function check_fullname2() {
		var fullname2_length = $("#fullname2").val().length;

		if(fullname2_length ==0) {
			$("#fullname_error_message2").html("Vui lòng không để trống");
			$("#fullname_error_message2").show();
			error_fullname2 = true;
		} else if(fullname2_length < 5 || fullname2_length > 50) {
			$("#fullname_error_message2").html("Vui lòng nhập từ 5-50 ký tự");
			$("#fullname_error_message2").show();      
			error_fullname2 = true;
		}
		else
		{
			$("#fullname_error_message2").hide();
		}

	}
    
    function check_phonenumber2() {
		var phonenumber2_length = $("#phonenumber2").val().length;
        var filter = /^[0-9-+]+$/;
        
		if(phonenumber2_length ==0) {
			$("#phonenumber_error_message2").html("Vui lòng không để trống");
			$("#phonenumber_error_message2").show();
			error_phonenumber2 = true;
		} else  if(filter.test($("#phonenumber2").val()) < 1) {
            $("#phonenumber_error_message2").html("Vui lòng nhập số hợp lệ");
            $("#phonenumber_error_message2").show();
        } else if(phonenumber2_length < 9 || phonenumber2_length > 13) {
			$("#phonenumber_error_message2").html("Vui lòng nhập từ 9-13 ký tự");
			$("#phonenumber_error_message2").show();      
			error_phonenumber2 = true;
		}
		else
		{
			$("#phonenumber_error_message2").hide();
		}

	}
    
    function check_luong2() {
		var luong2_length = $("#luong2").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(luong2_length ==0) {
			$("#luong_error_message2").html("Vui lòng không để trống");
			$("#luong_error_message2").show();
			error_luong2 = true;
		} else if(filter.test($("#luong2").val()) <1 ) {
            $("#luong_error_message2").html("Vui lòng nhập số hợp lệ");
            $("#luong_error_message2").show();
            error_luong2 = true;
        } else if($("#luong2").val() < 1000 || $("#luong2").val() > 50000) {
			$("#luong_error_message2").html("Vui lòng nhập từ 1000-50000 VNĐ");
			$("#luong_error_message2").show();      
			error_luong2 = true;
		}
		else
		{
			$("#luong_error_message2").hide();
		}

	}
    
     function check_address2() {
		var address2_length = $("#address2").val().length;

		if(address2_length == 0) {
			$("#address_error_message2").html("Vui lòng không để trống");
			$("#address_error_message2").show();
			error_address2 = true;
		} else if(address2_length < 5 || address2_length > 100) {
			$("#address_error_message2").html("Vui lòng nhập từ 5-100 ký tự");
			$("#address_error_message2").show();      
			error_address2 = true;
		}
		else
		{
			$("#address_error_message2").hide();
		}

	}
    
    function check_email2() {

		var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
	
		if(pattern.test($("#email2").val())) {
			$("#email_error_message2").hide();
		} else {
			$("#email_error_message2").html("Vui lòng nhập email hợp lệ");
			$("#email_error_message2").show();
			error_email2= true;
		}
	
	}
    
    function check_classID2() {
		var classID2_length = $("#classID2").val().length;

		if(classID2_length ==0) {
			$("#classID_error_message2").html("Vui lòng không để trống");
			$("#classID_error_message2").show();
			error_classID2 = true;
		} else if(classID2_length < 2 || classID2_length > 10) {
			$("#classID_error_message2").html("Vui lòng nhập từ 2-10 ký tự");
			$("#classID_error_message2").show();      
			error_classID2 = true;
		}
		else
		{
			$("#classID_error_message2").hide();
		}

	}
    
    function check_triGiaHD2() {
		var triGiaHD2_length = $("#triGiaHD2").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(triGiaHD2_length ==0) {
			$("#triGiaHD_error_message2").html("Vui lòng không để trống");
			$("#triGiaHD_error_message2").show();
			error_triGiaHD2 = true;
		} else if(filter.test($("#triGiaHD2").val()) <1 ) {
            $("#triGiaHD_error_message2").html("Vui lòng nhập số");
            $("#triGiaHD_error_message2").show();
            error_triGiaHD2 = true;
        } else if($("#triGiaHD2").val() < 1000 || $("#triGiaHD2").val() > 50000000) {
			$("#triGiaHD_error_message2").html("Vui lòng nhập từ 10 nghìn đến 50 triệu");
			$("#triGiaHD_error_message2").show();      
			error_triGiaHD2 = true;
		}
		else
		{
			$("#triGiaHD_error_message2").hide();
		}

	}
    
    function check_soHD2() {
		var soHD2_length = $("#soHD2").val().length;

		if(soHD2_length ==0) {
			$("#soHD_error_message2").html("Vui lòng không để trống");
			$("#soHD_error_message2").show();
			error_soHD2 = true;
		} else if(soHD2_length < 1 || soHD2_length > 5) {
			$("#soHD_error_message2").html("Vui lòng nhập từ 1-5 ký tự");
			$("#soHD_error_message2").show();      
			error_soHD2 = true;
		}
		else
		{
			$("#soHD_error_message2").hide();
		}

	}
    
    function check_soluong2() {
		var soluong2_length = $("#soluong2").val().length;

		if(soluong2_length ==0) {
			$("#soluong_error_message2").html("Vui lòng không để trống");
			$("#soluong_error_message2").show();
			error_soluong2 = true;
		} else if(soluong2_length < 1 || soluong2_length > 4) {
			$("#soluong_error_message2").html("Vui lòng nhập từ 1-4 ký tự");
			$("#soluong_error_message2").show();      
			error_soluong2 = true;
		}
		else
		{
			$("#soluong_error_message2").hide();
		}

	}
    
    function check_mamypham2() {
		var mamypham2_length = $("#mamypham2").val().length;

		if(mamypham2_length ==0) {
			$("#mamypham_error_message2").html("Vui lòng không để trống");
			$("#mamypham_error_message2").show();
			error_mamypham2 = true;
		} else if(mamypham2_length < 1 || mamypham2_length > 5) {
			$("#mamypham_error_message2").html("Vui lòng nhập từ 1-5 ký tự");
			$("#mamypham_error_message2").show();      
			error_mamypham2 = true;
		}
		else
		{
			$("#mamypham_error_message2").hide();
		}
	}
    
      //form ẩn LOGIN
	$("#login_form7").submit(function() {

		error_username = false;
		error_password = false;

        
		check_username();
		check_password();
  
        
		if(error_username == false && error_password == false) {
			return true;
		} else {
			return false;	
		}

	});

    //form ẩn REGISTER
	$("#login_form6").submit(function() {

		error_username2 = false;
		error_password2 = false;
        error_fullname=false;
        error_address=false;
        error_email=false;
        
		check_username2();
		check_password2();
        check_fullname();
        check_address();
        check_email();
        
		if(error_username2 == false && error_password2 == false && error_fullname == false && error_address == false
        && error_email == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    //form add question with 4 options
	$("#questionID_error_message").hide();
	$("#content_error_message").hide();
    
    var error_questionID = false;
    var error_content = false;
    
	$("#questionID").focusout(function() {
		check_questionID();
	});

	$("#content").focusout(function() {
		check_content();
	});
    
    function check_questionID() {
		var questionID_length = $("#questionID").val().length;

		if(questionID_length ==0) {
			$("#questionID_error_message").html("Please fill out this field");
			$("#questionID_error_message").show();
			error_questionID = true;
		} else if(questionID_length < 1 || questionID_length > 10) {
			$("#questionID_error_message").html("Must be between 1-10 characters");
			$("#questionID_error_message").show();      
			error_questionID = true;
		}
		else
		{
			$("#questionID_error_message").hide();
		}

	}
    function check_content() {
		var content_length = $("#content").val().length;

		if(content_length ==0) {
			$("#content_error_message").html("Please fill out this field");
			$("#content_error_message").show();
			error_content = true;
		} else if(content_length < 5 || content_length > 150) {
			$("#content_error_message").html("Must be between 5-150 characters");
			$("#content_error_message").show();      
			error_content = true;
		}
		else
		{
			$("#content_error_message").hide();
		}

	}
    
    $("#login_form_4options").submit(function() {

		error_questionID = false;
		error_content = false;

        
		check_questionID();
		check_content();

        
		if(error_questionID == false && error_content == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
   //form add question with 3 options
    $("#questionID_error_message2").hide();
	$("#content_error_message2").hide();
    
    var error_questionID2 = false;
    var error_content2 = false;
    
    $("#questionID2").focusout(function() {
		check_questionID2();
	});

	$("#content2").focusout(function() {
		check_content2();
	});
    
    function check_questionID2() {
		var questionID2_length = $("#questionID2").val().length;

		if(questionID2_length ==0) {
			$("#questionID_error_message2").html("Please fill out this field");
			$("#questionID_error_message2").show();
			error_questionID2 = true;
		} else if(questionID2_length < 1 || questionID2_length > 10) {
			$("#questionID_error_message2").html("Must be between 1-10 characters");
			$("#questionID_error_message2").show();      
			error_questionID2 = true;
		}
		else
		{
			$("#questionID_error_message2").hide();
		}

	}
    function check_content2() {
		var content2_length = $("#content2").val().length;

		if(content2_length ==0) {
			$("#content_error_message2").html("Please fill out this field");
			$("#content_error_message2").show();
			error_content2 = true;
		} else if(content2_length < 5 || content2_length > 150) {
			$("#content_error_message2").html("Must be between 5-150 characters");
			$("#content_error_message2").show();      
			error_content2 = true;
		}
		else
		{
			$("#content_error_message2").hide();
		}

	}
    $("#login_form_3options").submit(function() {

		error_questionID2 = false;
		error_content2 = false;

        
		check_questionID2();
		check_content2();

        
		if(error_questionID2 == false && error_content2 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    
    //form repair question with 4 options
	$("#content_error_message3").hide();
    
    var error_content3 = false;
    
	$("#content3").focusout(function() {
		check_content3();
	});
    
    function check_content3() {
		var content3_length = $("#content3").val().length;

		if(content3_length ==0) {
			$("#content_error_message3").html("Please fill out this field");
			$("#content_error_message3").show();
			error_content3 = true;
		} else if(content3_length < 5 || content3_length > 150) {
			$("#content_error_message3").html("Must be between 5-150 characters");
			$("#content_error_message3").show();      
			error_content3 = true;
		}
		else
		{
			$("#content_error_message3").hide();
		}

	}
    $("#login_form_repair_4ops").submit(function() {

		error_content3 = false;
        
		check_content3();

		if(error_content3 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    //form repair question with 3 options
	$("#content_error_message4").hide();
    
    var error_content4 = false;
    
	$("#content4").focusout(function() {
		check_content4();
	});
    
    function check_content4() {
		var content4_length = $("#content4").val().length;

		if(content4_length ==0) {
			$("#content_error_message4").html("Please fill out this field");
			$("#content_error_message4").show();
			error_content4 = true;
		} else if(content4_length < 5 || content4_length > 150) {
			$("#content_error_message4").html("Must be between 5-150 characters");
			$("#content_error_message4").show();      
			error_content4 = true;
		}
		else
		{
			$("#content_error_message4").hide();
		}

	}
    
    $("#login_form_repair_3ops").submit(function() {

		error_content4 = false;
        
		check_content4();

		if(error_content4 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    //form add content Group, class, option, authority
    $("#contentGrID_error_message").hide();
	$("#contentGrName_error_message").hide();
    
    var error_contentGrID = false;
    var error_contentGrName = false;
    
    $("#contentGrID").focusout(function() {
		check_contentGrID();
	});

	$("#contentGrName").focusout(function() {
		check_contentGrName();
	});
    
    function check_contentGrID() {
		var contentGrID_length = $("#contentGrID").val().length;

		if(contentGrID_length ==0) {
			$("#contentGrID_error_message").html("Please fill out this field");
			$("#contentGrID_error_message").show();
			error_contentGrID = true;
		} else if(contentGrID_length < 1 || contentGrID_length > 10) {
			$("#contentGrID_error_message").html("Must be between 1-10 characters");
			$("#contentGrID_error_message").show();      
			error_contentGrID = true;
		}
		else
		{
			$("#contentGrID_error_message").hide();
		}

	}
    function check_contentGrName() {
		var contentGrName_length = $("#contentGrName").val().length;

		if(contentGrName_length ==0) {
			$("#contentGrName_error_message").html("Please fill out this field");
			$("#contentGrName_error_message").show();
			error_contentGrName = true;
		} else if(contentGrName_length < 5 || contentGrName_length > 20) {
			$("#contentGrName_error_message").html("Must be between 5-20 characters");
			$("#contentGrName_error_message").show();      
			error_contentGrName = true;
		}
		else
		{
			$("#contentGrName_error_message").hide();
		}

	}
    $("#login_form_contentGr").submit(function() {

		error_contentGrID = false;
		error_contentGrName = false;

        
		check_contentGrID();
		check_contentGrName();

        
		if(error_contentGrID == false && error_contentGrName == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    //form repair content Group, class, option, authority
	$("#contentGrName_error_message2").hide();
    
    var error_contentGrName2 = false;
    
	$("#contentGrName2").focusout(function() {
		check_contentGrName2();
	});
    
    function check_contentGrName2() {
		var contentGrName2_length = $("#contentGrName2").val().length;

		if(contentGrName2_length ==0) {
			$("#contentGrName_error_message2").html("Please fill out this field");
			$("#contentGrName_error_message2").show();
			error_contentGrName2 = true;
		} else if(contentGrName2_length < 5 || contentGrName2_length > 20) {
			$("#contentGrName_error_message2").html("Must be between 5-20 characters");
			$("#contentGrName_error_message2").show();      
			error_contentGrName2 = true;
		}
		else
		{
			$("#contentGrName_error_message2").hide();
		}

	}
    $("#login_form_contentGr2").submit(function() {

		error_contentGrName2 = false;
        
		check_contentGrName2();
        
		if(error_contentGrName2 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    
    //form add bill
    $("#login_form_addbill").submit(function() {

		error_triGiaHD = false;
		error_username = false;
        error_username2 = false;
        
		check_triGiaHD();
		check_username();
        check_username2();

        
		if(error_triGiaHD == false && error_username == false && error_username2 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    //form repair bill
    $("#username_error_message3").hide();
    $("#username_error_message4").hide();

    var error_username3 = false, error_username4 = false;

    $("#username3").focusout(function() {
		check_username3();
	});
    $("#username4").focusout(function() {
		check_username4();
	});
    
    function check_username3() {
		var username3_length = $("#username3").val().length;

		if(username3_length ==0) {
			$("#username_error_message3").html("Vui lòng không để trống");
			$("#username_error_message3").show();
			error_username3 = true;
		} else if(username3_length < 5 || username3_length > 30) {
			$("#username_error_message3").html("Vui lòng nhập từ 5-30 ký tự");
			$("#username_error_message3").show();      
			error_username3 = true;
		}
		else
		{
			$("#username_error_message3").hide();
		}

	}
    
    function check_username4() {
		var username4_length = $("#username4").val().length;

		if(username4_length ==0) {
			$("#username_error_message4").html("Vui lòng không để trống");
			$("#username_error_message4").show();
			error_username4 = true;
		} else if(username4_length < 5 || username4_length > 30) {
			$("#username_error_message4").html("Vui lòng nhập từ 5-30 ký tự");
			$("#username_error_message4").show();      
			error_username4 = true;
		}
		else
		{
			$("#username_error_message4").hide();
		}

	}
    

    $("#login_form_repairbill").submit(function() {

		error_triGiaHD2 = false;
		error_username3 = false;
        error_username4 = false;
        
		check_triGiaHD2();
		check_username3();
        check_username4();

        
		if(error_triGiaHD2 == false && error_username3 == false && error_username4 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    
    
    
    
     //form add khách hàng
    $("#login_form_studentuser").submit(function() {

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
         error_phonenumber == false && error_address == false && error_email == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    //form repair khách hàng
    $("#login_form_studentuser2").submit(function() {
        error_username2 = false;
		error_password2 = false;
        error_fullname2=false;
        error_phonenumber2=false;
        error_address2=false;
        error_email2=false;
        
        check_username2()
		check_password2();
        check_fullname2();
        check_phonenumber2();
        check_address2();
        check_email2();
        
		if(error_username2 == false && error_password2 == false && error_fullname2 == false &&
         error_phonenumber2 == false && error_address2 == false && error_email2 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    //form add nhân viên
    $("#login_form_agent").submit(function() {

		error_username = false;
		error_password = false;
        error_fullname=false;
        error_phonenumber=false;
        error_address=false;
        error_email=false;
        error_luong=false;
        
		check_username();
		check_password();
        check_fullname();
        check_phonenumber();
        check_address();
        check_email();
        check_luong();
        
		if(error_username == false && error_password == false && error_fullname == false &&
         error_phonenumber == false && error_address == false && error_email == false && error_luong == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    //form edit nhan vien
    $("#login_form_agent2").submit(function() {

		error_username = false;
		error_password = false;
        error_fullname=false;
        error_phonenumber=false;
        error_address=false;
        error_email=false;
        error_luong=false;
        error_soHD=false;
        
		check_username();
		check_password();
        check_fullname();
        check_phonenumber();
        check_address();
        check_email();
        check_luong();
        check_soHD();
        
		if(error_username == false && error_password == false && error_fullname == false &&
         error_phonenumber == false && error_address == false && error_email == false && error_luong == false && error_soHD == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    //thêm khách hàng
    $("#login_form_agent3").submit(function() {

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
         error_phonenumber == false && error_address == false && error_email == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    //form edit khach hang
    $("#login_form_client").submit(function() {

		error_username = false;
		error_password = false;
        error_fullname=false;
        error_phonenumber=false;
        error_address=false;
        error_email=false;
        //error_soHD=false;
        
		check_username();
		check_password();
        check_fullname();
        check_phonenumber();
        check_address();
        check_email();
       // check_soHD();
        
		if(error_username == false && error_password == false && error_fullname == false &&
         error_phonenumber == false && error_address == false && error_email == false ) {
			return true;
		} else {
			return false;	
		}

	});
    
    //form repair nhân viên
    $("#login_form_studentuser2").submit(function() {
        error_username2 = false;
		error_password2 = false;
        error_fullname2=false;
        error_phonenumber2=false;
        error_address2=false;
        error_email2=false;
        error_luong2=false;
        
        check_username2()
		check_password2();
        check_fullname2();
        check_phonenumber2();
        check_address2();
        check_email2();
        check_luong2();
        
		if(error_username2 == false && error_password2 == false && error_fullname2 == false &&
         error_phonenumber2 == false && error_address2 == false && error_email2 == false && error_luong2 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    
     
    //from add mỹ phẩm
    $("#tenmypham_error_message").hide();
	$("#thuonghieu_error_message").hide();
    $("#dungtich_error_message").hide();
	$("#giaban_error_message").hide();
    $("#hinhanh_error_message").hide();
	$("#thanhphan_error_message").hide();
    $("#congdung_error_message").hide();
	$("#loaisp_error_message").hide();
    $("#hdsd_error_message").hide();
    $("#hinhanhchinh_error_message").hide();
    $("#hinhanhphu1_error_message").hide();
    $("#hinhanhphu2_error_message").hide();
    $("#phanloai_error_message").hide();
    $("#xuatxu_error_message").hide();
    
	var error_tenmypham = false, error_thuonghieu = false;
    var error_dungtich = false, error_giaban = false;
    var error_hinhanh = false, error_thanhphan = false;
    var error_congdung = false, error_loaisp = false, error_hdsd= false;
    var error_hinhanhchinh = false, error_hinhanhphu1 = false, error_hinhanhphu2 = false;
    var error_phanloai=false, error_xuatxu=false;
    
	$("#tenmypham").focusout(function() {
		check_tenmypham();
	});

	$("#thuonghieu").focusout(function() {
		check_thuonghieu();
	});
    
    $("#dungtich").focusout(function() {
		check_dungtich();
	});

    $("#giaban").focusout(function() {
		check_giaban();
	});

	$("#hinhanh").focusout(function() {
		check_hinhanh();
	});
    
    $("#thanhphan").focusout(function() {
		check_thanhphan();
	});

     $("#congdung").focusout(function() {
		check_congdung();
	});

	$("#loaisp").focusout(function() {
		check_loaisp();
	});
    
    $("#hdsd").focusout(function() {
		check_hdsd();
	});
    
    $("#hinhanhchinh").focusout(function() {
		check_hinhanhchinh();
	});
    $("#hinhanhphu1").focusout(function() {
		check_hinhanhphu1();
	});
    $("#hinhanhphu2").focusout(function() {
		check_hinhanhphu2();
	});
    
    $("#phanloai").focusout(function() {
		check_phanloai();
	});
    $("#xuatxu").focusout(function() {
		check_xuatxu();
	});
    
    function check_hinhanhchinh() {
        var hinhanhchinh_length = $("#hinhanhchinh").val().length;
        var urlregex = new RegExp("^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)");
	
		if(hinhanhchinh_length ==0) {
			$("#hinhanhchinh_error_message").html("Vui lòng không để trống");
			$("#hinhanhchinh_error_message").show();
			error_hinhanhchinh = true;
		} else {
			
			$("#hinhanhchinh_error_message").hide();
		}
	
	}
    
    function check_hinhanhphu1() {
        var hinhanhphu1_length = $("#hinhanhphu1").val().length;
        var urlregex = new RegExp("^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)");
	
		if(hinhanhphu1_length ==0) {
			$("#hinhanhphu1_error_message").html("Vui lòng không để trống");
			$("#hinhanhphu1_error_message").show();
			error_hinhanhphu1 = true;
		} else {
			
			$("#hinhanhphu1_error_message").hide();
		}
	
	}
    
    function check_hinhanhphu2() {
        var hinhanhphu2_length = $("#hinhanhphu2").val().length;
        var urlregex = new RegExp("^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)");
	
		if(hinhanhphu2_length ==0) {
			$("#hinhanhphu2_error_message").html("Vui lòng không để trống");
			$("#hinhanhphu2_error_message").show();
			error_hinhanhphu2 = true;
		} else {
			
			$("#hinhanhphu2_error_message").hide();
		}
	
	}
    
    function check_tenmypham() {
		var tenmypham_length = $("#tenmypham").val().length;

		if(tenmypham_length ==0) {
			$("#tenmypham_error_message").html("Vui lòng không để trống");
			$("#tenmypham_error_message").show();
			error_tenmypham = true;
		} else if(tenmypham_length < 10 || tenmypham_length > 100) {
			$("#tenmypham_error_message").html("Vui lòng nhập từ 10-100 ký tự");
			$("#tenmypham_error_message").show();      
			error_tenmypham = true;
		}
		else
		{
			$("#tenmypham_error_message").hide();
			error_tenmypham = false;

		}

	}
    
    function check_thuonghieu() {
		var thuonghieu_length = $("#thuonghieu").val().length;

		if(thuonghieu_length ==0) {
			$("#thuonghieu_error_message").html("Vui lòng không để trống");
			$("#thuonghieu_error_message").show();
			error_thuonghieu = true;
		} else if(thuonghieu_length < 1 || thuonghieu_length > 30) {
			$("#thuonghieu_error_message").html("Vui lòng nhập từ 1-30 ký tự");
			$("#thuonghieu_error_message").show();      
			error_thuonghieu = true;
		}
		else
		{
			$("#thuonghieu_error_message").hide();
			error_thuonghieu = false;
		}

	}
    
    function check_dungtich() {
		var dungtich_length = $("#dungtich").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(dungtich_length ==0) {
			$("#dungtich_error_message").html("Vui lòng không để trống");
			$("#dungtich_error_message").show();
			error_dungtich = true;
		} else if(filter.test($("#dungtich").val()) <1 ) {
            $("#dungtich_error_message").html("Vui lòng nhập số");
            $("#dungtich_error_message").show();
            error_dungtich = true;
        } else if($("#dungtich").val() < 1 || $("#dungtich").val() > 2000) {
			$("#dungtich_error_message").html("Vui lòng nhập từ 1-2000 ml");
			$("#dungtich_error_message").show();      
			error_dungtich = true;
		}
		else
		{
			$("#dungtich_error_message").hide();
			error_dungtich = false;
		}

	}
    
    function check_giaban() {
		var giaban_length = $("#giaban").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(giaban_length ==0) {
			$("#giaban_error_message").html("Vui lòng không để trống");
			$("#giaban_error_message").show();
			error_giaban = true;
		} else if(filter.test($("#giaban").val()) <1 ) {
            $("#giaban_error_message").html("Vui lòng nhập số");
            $("#giaban_error_message").show();
            error_giaban = true;
        } else if($("#giaban").val() < 1000 || $("#giaban").val() > 50000000) {
			$("#giaban_error_message").html("Vui lòng nhập từ 1000-50000000 VNĐ");
			$("#giaban_error_message").show();      
			error_giaban = true;
		}
		else
		{
			$("#giaban_error_message").hide();
			error_giaban = false;
		}

	}
    
    function check_hinhanh() {
        var hinhanh_length = $("#hinhanh").val().length;
        var urlregex = new RegExp("^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)");
	
		if(hinhanh_length ==0) {
			$("#hinhanh_error_message").html("Vui lòng không để trống");
			$("#hinhanh_error_message").show();
			error_hinhanh = true;
		} else {
			
			$("#hinhanh_error_message").hide();
			error_hinhanh = false;
		}
		/*else if(urlregex.test($("#hinhanh").val()) < 1) {
			$("#hinhanh_error_message").html("Vui lòng nhập vào URL hợp lệ");
			$("#hinhanh_error_message").show();
            error_hinhanh= true;*/
	
	}
    
    function check_thanhphan() {
		var thanhphan_length = $("#thanhphan").val().length;

		if(thanhphan_length ==0) {
			$("#thanhphan_error_message").html("Vui lòng không để trống");
			$("#thanhphan_error_message").show();
			error_thanhphan = true;
		} else if(thanhphan_length < 100 || thanhphan_length > 1000) {
			$("#thanhphan_error_message").html("Vui lòng nhập từ 100-1000 ký tự");
			$("#thanhphan_error_message").show();      
			error_thanhphan = true;
		}
		else
		{
			$("#thanhphan_error_message").hide();
			error_thanhphan = false;
		}

	}
    
    function check_congdung() {
		var congdung_length = $("#congdung").val().length;

		if(congdung_length ==0) {
			$("#congdung_error_message").html("Vui lòng không để trống");
			$("#congdung_error_message").show();
			error_congdung = true;
		} else if(congdung_length < 100 || congdung_length > 1500) {
			$("#congdung_error_message").html("Vui lòng nhập từ 100-1500 ký tự");
			$("#congdung_error_message").show();      
			error_congdung = true;
		}
		else
		{
			$("#congdung_error_message").hide();
			error_congdung = false;
		}

	}
    
    function check_loaisp() {
		var loaisp_length = $("#loaisp").val().length;

		if(loaisp_length ==0) {
			$("#loaisp_error_message").html("Vui lòng không để trống");
			$("#loaisp_error_message").show();
			error_loaisp = true;
		} else if(loaisp_length < 100 || loaisp_length > 1000) {
			$("#loaisp_error_message").html("Vui lòng nhập từ 100-1000 ký tự");
			$("#loaisp_error_message").show();      
			error_loaisp = true;
		}
		else
		{
			$("#loaisp_error_message").hide();
			error_loaisp = false;
		}

	}
    
    function check_hdsd() {
		var hdsd_length = $("#hdsd").val().length;

		if(hdsd_length ==0) {
			$("#hdsd_error_message").html("Vui lòng không để trống");
			$("#hdsd_error_message").show();
			error_hdsd = true;
		} else if(hdsd_length < 100 || hdsd_length > 1200) {
			$("#hdsd_error_message").html("Vui lòng nhập từ 100-1200 ký tự");
			$("#hdsd_error_message").show();      
			error_hdsd = true;
		}
		else
		{
			$("#hdsd_error_message").hide();
			error_hdsd = false;
		}

	}
    
    function check_phanloai() {
		var phanloai_length = $("#phanloai").val().length;

		if(phanloai_length ==0) {
			$("#phanloai_error_message").html("Vui lòng không để trống");
			$("#phanloai_error_message").show();
			error_phanloai= true;
		} else if(phanloai_length < 5 || phanloai_length > 20) {
			$("#phanloai_error_message").html("Vui lòng nhập từ 5-20 ký tự");
			$("#phanloai_error_message").show();      
			error_phanloai = true;
		}
		else
		{
			$("#phanloai_error_message").hide();
		}

	}
    
    function check_xuatxu() {
		var xuatxu_length = $("#xuatxu").val().length;

		if(xuatxu_length ==0) {
			$("#xuatxu_error_message").html("Vui lòng không để trống");
			$("#xuatxu_error_message").show();
			error_xuatxu= true;
		} else if(xuatxu_length < 2 || xuatxu_length > 30) {
			$("#xuatxu_error_message").html("Vui lòng nhập từ 2-30 ký tự");
			$("#xuatxu_error_message").show();      
			error_xuatxu = true;
		}
		else
		{
			$("#xuatxu_error_message").hide();
		}

	}
    
     $("#login_form_mypham").submit(function() {
        error_tenmypham = false, error_thuonghieu = false;
        error_dungtich = false, error_giaban = false;
        error_hinhanh = false, error_thanhphan = false;
        error_congdung = false, error_loaisp = false, error_hdsd= false;
        
        check_tenmypham()
		check_thuonghieu();
        check_dungtich();
        check_giaban();
        check_hinhanh();
        check_thanhphan();
        check_congdung();
        check_loaisp();
        check_hdsd();
        
		if(error_tenmypham == false && error_thuonghieu == false && error_dungtich == false &&
	error_giaban == false && error_hinhanh == false && error_thanhphan == false && error_congdung == false
          && error_loaisp == false && error_hdsd == false ) {
			return true;
		} else {
			return false;	
		}

	});
    
     $("#login_form_editmypham").submit(function() {
         error_tenmypham = false, error_thuonghieu = false;
         error_dungtich = false, error_giaban = false;
         error_hinhanhchinh = false, error_thanhphan = false;
         error_congdung = false, error_loaisp = false, error_hdsd= false;
         error_hinhanhphu1 = false, error_hinhanhphu2 = false;
         error_phanloai=false, error_xuatxu=false;
          
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
          
 		if(error_tenmypham == false && error_thuonghieu == false && error_dungtich == false &&
 	error_giaban == false && error_hinhanhchinh == false && error_thanhphan == false && error_congdung == false
           && error_loaisp == false && error_hdsd == false && error_hinhanhphu1 == false && error_hinhanhphu2 == false
           && error_phanloai == false && error_xuatxu == false) {
 			return true;
 		} else {
 			return false;	
 		}

 	});
    
    //from repair mỹ phẩm
    $("#tenmypham_error_message2").hide();
	$("#thuonghieu_error_message2").hide();
    $("#dungtich_error_message2").hide();
	$("#giaban_error_message2").hide();
    $("#hinhanh_error_message2").hide();
	$("#thanhphan_error_message2").hide();
    $("#congdung_error_message2").hide();
	$("#loaisp_error_message2").hide();
    $("#hdsd_error_message2").hide();
    
    
	var error_tenmypham2 = false, error_thuonghieu2 = false;
    var error_dungtich2 = false, error_giaban2 = false;
    var error_hinhanh2 = false, error_thanhphan2 = false;
    var error_congdung2 = false, error_loaisp2 = false, error_hdsd2= false;
    
	$("#tenmypham2").focusout(function() {
		check_tenmypham2();
	});

	$("#thuonghieu2").focusout(function() {
		check_thuonghieu2();
	});
    
    $("#dungtich2").focusout(function() {
		check_dungtich2();
	});

    $("#giaban2").focusout(function() {
		check_giaban2();
	});

	$("#hinhanh2").focusout(function() {
		check_hinhanh2();
	});
    
    $("#thanhphan2").focusout(function() {
		check_thanhphan2();
	});

     $("#congdung2").focusout(function() {
		check_congdung2();
	});

	$("#loaisp2").focusout(function() {
		check_loaisp2();
	});
    
    $("#hdsd2").focusout(function() {
		check_hdsd2();
	});
    
    function check_tenmypham2() {
		var tenmypham2_length = $("#tenmypham2").val().length;

		if(tenmypham2_length ==0) {
			$("#tenmypham_error_message2").html("Vui lòng không để trống");
			$("#tenmypham_error_message2").show();
			error_tenmypham2 = true;
		} else if(tenmypham2_length < 10 || tenmypham2_length > 100) {
			$("#tenmypham_error_message2").html("Vui lòng nhập từ 10-100 ký tự");
			$("#tenmypham_error_message2").show();      
			error_tenmypham2 = true;
		}
		else
		{
			$("#tenmypham_error_message2").hide();
		}

	}
    
    function check_thuonghieu2() {
		var thuonghieu2_length = $("#thuonghieu2").val().length;

		if(thuonghieu2_length ==0) {
			$("#thuonghieu_error_message2").html("Vui lòng không để trống");
			$("#thuonghieu_error_message2").show();
			error_thuonghieu2 = true;
		} else if(thuonghieu2_length < 1 || thuonghieu2_length > 30) {
			$("#thuonghieu_error_message2").html("Vui lòng nhập từ 1-30 ký tự");
			$("#thuonghieu_error_message2").show();      
			error_thuonghieu2 = true;
		}
		else
		{
			$("#thuonghieu_error_message2").hide();
		}

	}
    
    function check_dungtich2() {
		var dungtich2_length = $("#dungtich2").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(dungtich2_length ==0) {
			$("#dungtich_error_message2").html("Vui lòng không để trống");
			$("#dungtich_error_message2").show();
			error_dungtich2 = true;
		} else if(filter.test($("#dungtich2").val()) <1 ) {
            $("#dungtich_error_message2").html("Vui lòng nhập số");
            $("#dungtich_error_message2").show();
            error_dungtich2 = true;
        } else if($("#dungtich2").val() < 1 || $("#dungtich2").val() > 2000) {
			$("#dungtich_error_message2").html("Vui lòng nhập từ 1-2000 ml");
			$("#dungtich_error_message2").show();      
			error_dungtich2 = true;
		}
		else
		{
			$("#dungtich_error_message2").hide();
		}

	}
    
    function check_giaban2() {
		var giaban2_length = $("#giaban2").val().length;
        var filter = /^[0-9-+]+$/;
        
        if(giaban2_length ==0) {
			$("#giaban_error_message2").html("Vui lòng không để trống");
			$("#giaban_error_message2").show();
			error_giaban2 = true;
		} else if(filter.test($("#giaban2").val()) <1 ) {
            $("#giaban_error_message2").html("Vui lòng nhập số");
            $("#giaban_error_message2").show();
            error_giaban2 = true;
        } else if($("#giaban2").val() < 1000 || $("#giaban2").val() > 50000000) {
			$("#giaban_error_message2").html("Vui lòng nhập từ 1000-50000000 VNĐ");
			$("#giaban_error_message2").show();      
			error_giaban2 = true;
		}
		else
		{
			$("#giaban_error_message2").hide();
		}

	}
    
    function check_hinhanh2() {
        var hinhanh2_length = $("#hinhanh2").val().length;
        var urlregex = new RegExp("^(http:\/\/www.|https:\/\/www.|ftp:\/\/www.|www.){1}([0-9A-Za-z]+\.)");
	
		if(hinhanh2_length ==0) {
			$("#hinhanh_error_message2").html("Vui lòng không để trống");
			$("#hinhanh_error_message2").show();
			error_hinhanh2 = true;
		} else if(urlregex.test($("#hinhanh2").val()) < 1) {
			$("#hinhanh_error_message2").html("Vui lòng nhập vào URL hợp lệ");
			$("#hinhanh_error_message2").show();
            error_hinhanh2= true;
		} else {
			
			$("#hinhanh_error_message2").hide();
		}
	
	}
    
    function check_thanhphan2() {
		var thanhphan2_length = $("#thanhphan2").val().length;

		if(thanhphan2_length ==0) {
			$("#thanhphan_error_message2").html("Vui lòng không để trống");
			$("#thanhphan_error_message2").show();
			error_thanhphan2 = true;
		} else if(thanhphan2_length < 100 || thanhphan2_length > 1000) {
			$("#thanhphan_error_message2").html("Vui lòng nhập từ 100-1000 ký tự");
			$("#thanhphan_error_message2").show();      
			error_thanhphan2 = true;
		}
		else
		{
			$("#thanhphan_error_message2").hide();
		}

	}
    
    function check_congdung2() {
		var congdung2_length = $("#congdung2").val().length;

		if(congdung2_length ==0) {
			$("#congdung_error_message2").html("Vui lòng không để trống");
			$("#congdung_error_message2").show();
			error_congdung2 = true;
		} else if(congdung2_length < 100 || congdung2_length > 1500) {
			$("#congdung_error_message2").html("Vui lòng nhập từ 100-1500 ký tự");
			$("#congdung_error_message2").show();      
			error_congdung2 = true;
		}
		else
		{
			$("#congdung_error_message2").hide();
		}

	}
    
    function check_loaisp2() {
		var loaisp2_length = $("#loaisp2").val().length;

		if(loaisp2_length ==0) {
			$("#loaisp_error_message2").html("Vui lòng không để trống");
			$("#loaisp_error_message2").show();
			error_loaisp2 = true;
		} else if(loaisp2_length < 100 || loaisp2_length > 1000) {
			$("#loaisp_error_message2").html("Vui lòng nhập từ 100-1000 ký tự");
			$("#loaisp_error_message2").show();      
			error_loaisp2 = true;
		}
		else
		{
			$("#loaisp_error_message2").hide();
		}

	}
    
    function check_hdsd2() {
		var hdsd2_length = $("#hdsd2").val().length;

		if(hdsd2_length ==0) {
			$("#hdsd_error_message2").html("Vui lòng không để trống");
			$("#hdsd_error_message2").show();
			error_hdsd2 = true;
		} else if(hdsd2_length < 100 || hdsd2_length > 1200) {
			$("#hdsd_error_message2").html("Vui lòng nhập từ 100-1200 ký tự");
			$("#hdsd_error_message2").show();      
			error_hdsd2= true;
		}
		else
		{
			$("#hdsd_error_message2").hide();
		}

	}
    
     $("#login_form_mypham2").submit(function() {
    	 error_mamypham2=false;
        error_tenmypham2 = false, error_thuonghieu2 = false;
        error_dungtich2 = false, error_giaban2 = false;
        error_hinhanh2 = false, error_thanhphan2 = false;
        error_congdung2 = false, error_loaisp2 = false, error_hdsd2= false;
        
        check_mamypham2();
        check_tenmypham2()
		check_thuonghieu2();
        check_dungtich2();
        check_giaban2();
        check_hinhanh2();
        check_thanhphan2();
        check_congdung2();
        check_loaisp2();
        check_hdsd2();
        
		if(error_mamypham2==false && error_tenmypham2 == false && error_thuonghieu2 == false && error_dungtich2 == false &&
	error_giaban2 == false && error_hinhanh2== false && error_thanhphan2 == false && error_congdung2 == false
          && error_loaisp2 == false && error_hdsd2 == false ) {
			return true;
		} else {
			return false;	
		}

	});
    
    
   //form edit hóa đơn
     $("#login_form_edithoadon").submit(function() {
         error_username = false;
 		error_username2 = false;
         error_fullname=false;
         error_soHD=false;
         error_triGiaHD=false;

         check_username();
 		check_username2();
         check_fullname();
         check_soHD();
         check_triGiaHD();
         
 		if(error_username == false && error_username2 == false && error_fullname == false &&
          error_soHD == false && error_triGiaHD==false) {
 			return true;
 		} else {
 			return false;	
 		}

 	});
     
     
     //form edit phieu thu
     $("#login_form_editphieuthu").submit(function() {
         error_fullname=false;
         error_soHD=false;
         error_triGiaHD=false;

         check_fullname();
         check_soHD();
         check_triGiaHD();
         
 		if(error_fullname == false && error_soHD == false && error_triGiaHD==false) {
 			return true;
 		} else {
 			return false;	
 		}

 	});
    
    //form add phiếu thu
    $("#login_form_addphieuthu").submit(function() {

		error_fullname = false;
		error_triGiaHD = false;
        error_soHD = false;
        
		check_fullname();
		check_triGiaHD();
        check_soHD();

        
		if(error_fullname == false && error_triGiaHD == false && error_soHD == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    //form edit chi tiet hd
  //form edit chi tiết hóa đơn
    $("#login_form_editchitiethd").submit(function() {

		error_soHD2 = false;
		error_soHD = false;
        error_soluong = false;
        
		check_soHD2();
		check_soHD();
        check_soluong();

        
		if(error_soHD == false && error_soHD2 == false && error_soluong == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    //form repair phiếu thu
    $("#login_form_repairphieuthu").submit(function() {

		error_fullname2 = false;
		error_triGiaHD2 = false;
        error_soHD2 = false;
        
		check_fullname2();
		check_triGiaHD2();
        check_soHD2();

        
		if(error_fullname2 == false && error_triGiaHD2 == false && error_soHD2 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    
    //form add chi tiết hóa đơn
    $("#login_form_addchitiethd").submit(function() {

		error_soHD = false;
		error_mamypham = false;
        error_soluong = false;
        
		check_soHD();
		check_mamypham();
        check_soluong();

        
		if(error_soHD == false && error_mamypham == false && error_soluong == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    //form repair chi tiết hóa đơn
    $("#login_form_repairchitiethd").submit(function() {

		error_soHD2 = false;
		error_mamypham2 = false;
        error_soluong2 = false;
        
		check_soHD2();
		check_mamypham2();
        check_soluong2();

        
		if(error_soHD2 == false && error_mamypham2 == false && error_soluong2 == false) {
			return true;
		} else {
			return false;	
		}

	});
    
    
    
    
    
     // end close button event handler
       $(window).resize(function() { /*nếu như size của cửa sổ HTML thay đổi thì ẩn thanh underbanner đi*/
            if($(window).width()<1024){
                $("#avt").hide();
                $("#underbanner").hide();
            }
            else{
                $("#avt").show();
                $("#underbanner").show();
            }
    });  
    
    
 
       
});
