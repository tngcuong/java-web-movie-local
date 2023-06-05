<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="views/user/assets" var="url"></c:url>	
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${url }/css/ProfileUser.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="views/user/assets/images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/MagnificPopup/magnific-popup.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/user/assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="views/user/assets/css/main.css">
<!--===============================================================================================-->
<title>My profile</title>
</head>
<body class="animsition">
<%
	
	if(session.getAttribute("permission").equals("1") ){

		response.sendRedirect(request.getContextPath()+"/Login");
	}
	
%>
<%@include file="Layout/Header.jsp" %>
<div style="padding-top: 100px">
<div class="container ">
<c:set var="user" value="${requestScope.user}"></c:set>
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="${url }/images/profile.png" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
								<div class="mt-3">
									<h4>${user.familyName } ${user.name } </h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-lg-8">
				<form action="update-profile" method="post">
					<div class="card">
						<div class="card-body">
							<div class="row mb-3">
							<% String pass = (String)session.getAttribute("pass");%>
							
							
								<div class="col-sm-3">
									<h6 class="mb-0">Family name : </h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input name="familyname" type="text" class="form-control" value="${user.familyName }">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Name :</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input name="name" type="text" class="form-control" value="${user.name }">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Born :</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input name="date" type="date" class="form-control" value="${user.born }">
								</div>
							</div>
							
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Phone :</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input name="phone" type="number" min="0" maxlength="11" class="form-control" value="${user.phone }">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Email :</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input name="email" type="email" class="form-control" value="${user.email }" required="required">
								</div>
							</div>
						<%-- 	<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Account name :</h6>
								</div>
								<%String nameuser = (String)session.getAttribute("nameuser"); %>
								
								<div class="col-sm-9 text-secondary">
									<input name="accountuser" type="text" class="form-control" value="${nameuser } " required="required">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Password :</h6>
								</div>
								<div class="col-sm-9 	">
									<input name="password" type="text" class="form-control" value="${pass }" required="required">
								</div>
							</div>
							--%>
							<div class="row">
								<div class="col-sm-3"></div> 
								<div class="col-sm-9 text-secondary">
									<input type="submit" class="btn btn-primary px-4" value="Save Changes">
								</div>
							</div>
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<!--===============================================================================================-->	
	<script src="views/user/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/bootstrap/js/popper.js"></script>
	<script src="views/user/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="views/user/assets/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/slick/slick.min.js"></script>
	<script src="views/user/assets/js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		
	
	
		$('.js-addwish-b2').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	</script>
<!--===============================================================================================-->
	<script src="views/user/assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="views/user/assets/js/main.js"></script>
	</div>
</body>
</html>