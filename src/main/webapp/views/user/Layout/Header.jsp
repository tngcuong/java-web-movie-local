<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:url value="views/user/assets" var="url"></c:url>


	<!-- Header -->
	<header class="header-v3 ">
		<!-- Header desktop -->
		<div class="container-menu-desktop trans-03">
			<div class="wrap-menu-desktop">
		
				<nav class="limiter-menu-desktop p-l-45">
					
					<!-- Logo desktop -->		
					<a title="Home" href="Home" class="logo">
						<img src="views/user/assets/images/cuog-logo.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
					
						<ul class="main-menu">
							<li>
								<a href="Home">Home</a>
							</li>

				<%-- 			<li>
								<a href="product.html">Shop</a>
							</li>

							<li class="label1" data-label1="hot">
								<a href="shoping-cart.html">Features</a>
							</li>

							<li>
								<a href="blog.html">Blog</a>
							</li>
				--%>
							<li>
								<a href="developing/Error404.jsp">About</a>
							</li>

							<li>
								<a href="developing/Error404.jsp">Contact</a>
							</li>
							
						</ul>
						</div>
						
						<div  style="text-align: right;"><%
								String userName = (String)session.getAttribute("userName");
								if(!userName.equals("")){
							%>
							<p>Hello <%=userName%></p>
							<%} %></div>
						

					<!-- Icon header -->
			 		<div class="wrap-icon-header flex-w flex-r-m h-full">							
				<%-- 	<div class="flex-c-m h-full p-r-25 bor6">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="2">
								<i class="zmdi zmdi-shopping-cart"></i>
							</div>
						</div>
						--%>	
						<div class="flex-c-m h-full p-lr-19">
							<div class="icon-header-item cl0 hov-cl1 trans-04 p-lr-11 js-show-sidebar">
								<i class="zmdi zmdi-menu"></i>
							</div>
						</div>
					</div>
				</nav>
			</div>	
		</div>
	
		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="Home"><img src="views/user/assets/images/cuog-logo.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
		<%-- 	<div class="wrap-icon-header flex-w flex-r-m h-full m-r-15">
				<div class="flex-c-m h-full p-r-5">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-lr-11 icon-header-noti js-show-cart" data-notify="2">
						<i class="zmdi zmdi-shopping-cart"></i>
					</div>
				</div>
			</div>
--%>
			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="main-menu-m">
				<li>
					<a href="Home">Home</a>
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>
	<%--
				<li>
					<a href="developing/Error404.jsp" class="label1 rs1" data-label1="hot">Features</a>
				</li>

				<li>
					<a href="developing/Error404.jsp">Blog</a>
				</li>
 --%>
				<li>
					<a href="developing/Error404.jsp">About</a>
				</li>

				<li>
					<a href="developing/Error404.jsp">Contact</a>
				</li>
				
					<%String permission2 = (String)session.getAttribute("permission");
						if(!permission2.equals("admin") && !permission2.equals("1")){
							%>
							<li class="p-b-13">
							<a href="Profile" class="stext-102 cl2 hov-cl1 trans-04">
							My Profile
						</a>
						</li>
							<% 
						}
					%>
						
					
				<li>
				<%String permission1 = (String)session.getAttribute("permission");
						if(permission1.equals("admin")){
							%>
							<a href="/list-movie" class="stext-102 cl2 hov-cl1 trans-04">
							Admin Page
						</a>
							<% 
						}
					%>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
	<%-- 	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<button class="flex-c-m btn-hide-modal-search trans-04">
				<i class="zmdi zmdi-close"></i>
			</button>

			<form class="container-search-header">
				<div class="wrap-search-header">
					<input class="plh0" type="text" name="search" placeholder="Search...">

					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
				</div>
			</form>
		</div>
		--%>
	</header>


	<!-- Sidebar -->
	<aside class="wrap-sidebar js-sidebar">
		<div class="s-full js-hide-sidebar"></div>

		<div class="sidebar flex-col-l p-t-22 p-b-25">
			<div class="flex-r w-full p-b-30 p-r-27">
				<div class="fs-35 lh-10 cl2 p-lr-5 pointer hov-cl1 trans-04 js-hide-sidebar">
					<i class="zmdi zmdi-close"></i>
				</div>
			</div>

			<div class="sidebar-content flex-w w-full p-lr-65 js-pscroll">
			
			
			
				<ul class="sidebar-link w-full">
				
					<li class="p-b-13">
						<a href="Home" class="stext-102 cl2 hov-cl1 trans-04">
							Home
						</a>
					</li>

					<li class="p-b-13">
						<a href="developing/Error404.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							My Wishlist
						</a>
					</li>
					<li class="p-b-13">
						<a href="developing/Error404.jsp" class="stext-102 cl2 hov-cl1 trans-04">
							Track Oder
						</a>
					</li>
					<li class="p-b-13">
						<a href="list-cart" class="stext-102 cl2 hov-cl1 trans-04">
							My Cart
						</a>
					</li>
					
					<%String permission3 = (String)session.getAttribute("permission");
						if(!permission3.equals("admin") && !permission3.equals("1")){
							%>
							<li class="p-b-13">
							<a href="Profile" class="stext-102 cl2 hov-cl1 trans-04">
							My Profile
						</a>
						</li>
							<% 
						}
					%>
						
					

					


					<li class="p-b-13">
					<%String permission = (String)session.getAttribute("permission");
						if(permission.equals("admin")){
							%>
							<a href="list-movie" class="stext-102 cl2 hov-cl1 trans-04">
							Admin Page
						</a>
							<% 
						}
					%>
					</li>
				</ul>

				<div class="sidebar-gallery w-full">
				<%String visible = (String)session.getAttribute("permission");
						if(visible.equals("1")){
							%>
							<a href="Login" class="stext-102 cl2 hov-cl1 trans-04">
					Login
					</a>
							<% 
						}
					%>
					
					
				
				<%String visible2 = (String)session.getAttribute("permission");
						if(!visible2.equals("1")){
							%>
							<a href="LogOut" class="stext-102 cl2 hov-cl1 trans-04">
					Log out
					</a>
							<% 
						}
					%>
					
					
				</div>
			</div>
		</div>
	</aside>


