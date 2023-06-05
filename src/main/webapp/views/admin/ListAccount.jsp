<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="views/admin/assets" var="url"></c:url>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin's Page</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${url}/img/favicon.png" rel="icon">
  <link href="${url}/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${url}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${url}/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${url}/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
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
   <script type="text/javascript">
	function delete_account(accountuser){
		if(confirm("Sure to delete account with user name: "+ accountuser +" ?")){
			window.location = "delete_account?accountuser="+accountuser;
		}
	}
</script>
</head>

<body>

  <!-- ======= Header ======= -->
  <%@include file="Layout/header.jsp" %>
  <!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <%@include file="Layout/sidebar.jsp" %>
  <%--<aside id="sidebar" class="sidebar">

     <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index.html">
          <i class="bi bi-grid"></i>
          <span>Movie mangement</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Actor management</span>
        </a>      
      </li><!-- End Components Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Account management</span>
        </a>       
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>List user</span>
        </a>     
      </li><!-- End Tables Nav -->

     <%--  <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bar-chart"></i><span></span>
        </a>       
      </li><!-- End Charts Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-gem"></i><span>Quản lý Color</span>
        </a>
        
      </li><!-- End Icons Nav -->
         
      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-login.html">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>Quản lý người dùng</span>
        </a>
      </li><!-- End Login Page Nav -->   
  
    </ul>
--%>
  </aside>--%><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item active">Account</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">List account</h5>
							<a href="add-actor" class="btn btn-primary mb-3">Add account</a>
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">#</th>
										<th scope="col">User name</th>
										<th scope="col">Password</th>
										<th scope="col">Permission</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								<tbody>
								<%int i=0; %>
									<c:forEach items="${requestScope.accounts}" var="account">
									<%i++; %>
										<tr>
											<th scope="row"><%=i %></th>
											<td>${account.accountUser}</td>
											<td>${account.password}</td>
											<td>${account.permission}</td>
											<td>
												<a href="update_account?accountuser=${account.accountUser}"><i class="fa-solid fa-pen-to-square"></i></a> | 
												<a href="#" onclick="delete_account('${account.accountUser}')"><i class="fa-solid fa-trash"></i></a>
											</td>
										</tr>		
									</c:forEach>																
								</tbody>
							</table>
							<!-- End Default Table Example -->
						</div>
					</div>
				</div>
			</div>
		</section>

	</main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>CUOG</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">CUOG</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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