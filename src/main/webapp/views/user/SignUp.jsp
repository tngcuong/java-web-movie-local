<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="views/user/assets2" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${url }/css/signup.css">
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
<title>Sign up</title>
</head>
<body>
<div class="signup__container">
  <div class="container__child signup__thumbnail">
    <div class="thumbnail__logo">
    </div>
    <div class="thumbnail__content text-center">
      <h1 class="heading--primary">Welcome to Cuog.</h1>
    </div>
    <div class="signup__overlay"></div>
  </div>
  <div class="container__child signup__form">
    <form action="SignUp" method="post">
      <div class="form-group">
        <label for="username">Username</label>
        <input class="form-control" type="text" name="username" id="username" placeholder="james.bond" required />
       	<span style="color: red">${loi }</span>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <input class="form-control" type="email" name="email"  placeholder="james.bond@spectre.com" required />
      </div>
      <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control" type="password" name="password" id="password" placeholder="********" required />
      </div>
      <div class="m-t-lg">
        <ul class="list-inline">
          <li>
            <input class="btn btn--form" type="submit" value="SignUp" />
          </li>
          <li>
            <a class="signup__link" href="Login">I am already a member</a>
          </li>
        </ul>
      </div>
    </form>  
  </div>
</div>
</body>
</html>