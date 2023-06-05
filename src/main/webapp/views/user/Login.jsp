<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="views/user/assets2" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${url }/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url }/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url }/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url }/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url }/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${url }/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url }/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url }/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${url }/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${url }/css/util.css">
	<link rel="stylesheet" type="text/css" href="${url }/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<%
	if(session.getAttribute("permission").equals("") || session.getAttribute("permission").equals("admin")){
		response.sendRedirect(request.getContextPath()+"/Home");
	}
	
%>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="Login" class="login100-form validate-form" method="POST">
					<span class="login100-form-title p-b-26">
						<a href="Home" title="Home"><img alt="" src="views/user/assets/images/cuog-logo.png" style="width: 100%"></a>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
					<span style="color: red;text-align: center;">${errorMsg }</span>
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" ></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" ></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button value="Login" class="login100-form-btn" type="submit">
								Login
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Don’t have an account?
						</span>

						<a class="txt2" href="SignUp">
							Sign Up
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="${url }/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${url }/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${url }/vendor/bootstrap/js/popper.js"></script>
	<script src="${url }/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${url }/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${url }/vendor/daterangepicker/moment.min.js"></script>
	<script src="${url }/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${url }/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${url }/js/main.js"></script>

</body>
</html>