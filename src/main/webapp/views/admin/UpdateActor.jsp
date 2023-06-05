<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="views/admin/assets" var="url"></c:url>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Update Actor</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${url}/img/favicon.png" rel="icon">
<link href="${url}/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${url}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="${url}/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="${url}/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="${url}/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="${url}/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="${url}/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${url}/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${url}/css/style.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">

<!-- =======================================================
  * Template Name: NiceAdmin - v2.4.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	 <%@include file="Layout/header.jsp" %>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
 <%@include file="Layout/sidebar.jsp" %>
 <!-- End Sidebar-->
	 

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item active">Actor</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
						<c:set var="actor" value="${requestScope.actor}"></c:set>
							<h5 class="card-title">Update actor</h5>
							
							<form action="update_actor" method="post" >
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Id :</label>
									<div class="col-sm-10">
										<input type="text" value="${actor.actorId}" name="id" class="form-control"  readonly="readonly">
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Name :</label>
									<div class="col-sm-10">
										<input type="text" value="${actor.actorName}" name="name" class="form-control">
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Age :</label>
									<div class="col-sm-10">
										<input type="number" min="0" name="age" class="form-control" value="${actor.age}" >
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Height :</label>
									<div class="col-sm-10">
										<input type="number" min="0" name="height" class="form-control" value="${actor.height}">
									</div>
								</div>
								<div class="row mb-3">
									<label for="" class="col-sm-2 col-form-label">Nationality :</label>
									<div class="col-sm-10">
										<input type="text" name="nationality" class="form-control" value="${actor.nationality}">
									</div>
								</div>
								

								<div class="row mb-3">
									
									<div class="col-sm-10 offset-sm-2">
										
								<input type="submit" value="Update" class="btn btn-primary"/>
								
									</div>
								</div>

							</form>
							<!-- End General Form Elements -->
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	 <footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>CUOG</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by <a href="https://bootstrapmade.com/">CUOG</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="${url}/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="${url}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${url}/vendor/chart.js/chart.min.js"></script>
	<script src="${url}/vendor/echarts/echarts.min.js"></script>
	<script src="${url}/vendor/quill/quill.min.js"></script>
	<script src="${url}/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="${url}/vendor/tinymce/tinymce.min.js"></script>
	<script src="${url}/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="${url}/js/main.js"></script>

</body>

</html>