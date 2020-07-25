<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Member List</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
		============================================ -->
<link rel="shortcut icon" type="image/x-icon" href="/Food/resources/img/favicon.ico">
<!-- Google Fonts
		============================================ -->
<link href="https://fonts.googleapis.com/css?family=Play:400,700"
	rel="stylesheet">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/bootstrap2.min.css">
<!-- Bootstrap CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/font-awesome1.min.css">
<!-- owl.carousel CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/owl.carousel.css">
<link rel="stylesheet" href="/Food/resources/css/owl.theme.css">
<link rel="stylesheet" href="/Food/resources/css/owl.transitions.css">
<!-- animate CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/animate1.css">
<!-- normalize CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/normalize.css">
<!-- meanmenu icon CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/meanmenu.min.css">
<!-- main CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/main.css">
<!-- morrisjs CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/morrisjs/morris.css">
<!-- mCustomScrollbar CSS
		============================================ -->
<link rel="stylesheet"
	href="/Food/resources/css/scrollbar/jquery.mCustomScrollbar.min.css">
<!-- metisMenu CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/metisMenu/metisMenu.min.css">
<link rel="stylesheet" href="/Food/resources/css/metisMenu/metisMenu-vertical.css">
<!-- calendar CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/calendar/fullcalendar.min.css">
<link rel="stylesheet" href="/Food/resources/css/calendar/fullcalendar.print.min.css">
<!-- style CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/style2.css">
<!-- responsive CSS
		============================================ -->
<link rel="stylesheet" href="/Food/resources/css/responsive.css">
<!-- modernizr JS
		============================================ -->
<!-- Bootstrap cdn -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="/Food/resources/js/vendor/modernizr-2.8.3.min.js"></script>
<script type="text/javascript" src="/Food/resources/js/memberList.js"></script>

</head>



<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<div class="left-sidebar-pro">
		<nav id="sidebar" class="">
			<div class="sidebar-header">
				<a href="index.html"><img class="main-logo"
					src="/Food/resources/img/logo/logo.png" alt="" /></a> 
			</div>
			<div class="left-custom-menu-adp-wrap comment-scrollbar">
				<nav class="sidebar-nav left-sidebar-menu-pro">
					<ul class="metismenu" id="menu1">
						<li class="active"><a class="has-arrow" href="index.html">
								<i class="fa big-icon fa-home icon-wrap"></i> <span
								class="mini-click-non">Ecommerce</span>
						</a>
							<ul class="submenu-angle" aria-expanded="true">
								<li><a title="Dashboard v.1" href="index.html"><i
										class="fa fa-bullseye sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Dashboard v.1</span></a></li>
								<li><a title="Dashboard v.2" href="index-1.html"><i
										class="fa fa-circle-o sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Dashboard v.2</span></a></li>
								<li><a title="Dashboard v.3" href="index-2.html"><i
										class="fa fa-cube sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Dashboard v.3</span></a></li>
								<li><a title="Member List" href="member-list.do"><i
										class="fa fa-female sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Member List</span></a></li>
										<li><a title="Black List" href="black-list.do"><i
										class="fa fa-female sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Black List</span></a></li>
								<li><a title="Declaration Board" href="declarationBoard.do"><i
										class="fa big-icon fa-files-o icon-wrap" aria-hidden="true"></i> <span
										class="mini-click-non">Declaration Board</span></a></li>
								<li><a title="Product Detail" href="product-detail.html"><i
										class="fa fa-heart-o sub-icon-mg" aria-hidden="true"></i> 
										<span class="mini-sub-pro">Product Detail</span></a></li>

								<li><a title="Product Cart" href="product-cart.html"><i
										class="fa fa-level-down sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Product Cart</span></a></li>
								<li><a title="Product Payment" href="product-payment.html"><i
										class="fa fa-location-arrow sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">Product Payment</span></a></li>
								<li><a title="Analytics" href="analytics.html"><i
										class="fa fa-line-chart sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Analytics</span></a></li>
								<li><a title="Widgets" href="widgets.html"><i
										class="fa fa-magnet sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Widgets</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-envelope icon-wrap"></i> <span
								class="mini-click-non">Mailbox</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Inbox" href="mailbox.html"><i
										class="fa fa-inbox sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Inbox</span></a></li>
								<li><a title="View Mail" href="mailbox-view.html"><i
										class="fa fa-television sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">View Mail</span></a></li>
								<li><a title="Compose Mail" href="mailbox-compose.html"><i
										class="fa fa-paper-plane sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">Compose Mail</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-flask icon-wrap"></i> <span
								class="mini-click-non">Interface</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Google Map" href="google-map.html"><i
										class="fa fa-map-marker sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Google Map</span></a></li>
								<li><a title="Data Maps" href="data-maps.html"><i
										class="fa fa-map-o sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Data Maps</span></a></li>
								<li><a title="Pdf Viewer" href="pdf-viewer.html"><i
										class="fa fa-file-pdf-o sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Pdf Viewer</span></a></li>
								<li><a title="X-Editable" href="x-editable.html"><i
										class="fa fa-fighter-jet sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">X-Editable</span></a></li>
								<li><a title="Code Editor" href="code-editor.html"><i
										class="fa fa-code sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Code Editor</span></a></li>
								<li><a title="Tree View" href="tree-view.html"><i
										class="fa fa-frown-o sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Tree View</span></a></li>
								<li><a title="Preloader" href="preloader.html"><i
										class="fa fa-circle sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Preloader</span></a></li>
								<li><a title="Images Cropper" href="images-cropper.html"><i
										class="fa fa-file-image-o sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">Images Cropper</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-pie-chart icon-wrap"></i> <span
								class="mini-click-non">Miscellaneous</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="File Manager" href="file-manager.html"><i
										class="fa fa-folder sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">File Manager</span></a></li>
								<li><a title="Blog" href="blog.html"><i
										class="fa fa-square sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Blog</span></a></li>
								<li><a title="Blog Details" href="blog-details.html"><i
										class="fa fa-tags sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Blog Details</span></a></li>
								<li><a title="404 Page" href="404.html"><i
										class="fa fa-tint sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">404 Page</span></a></li>
								<li><a title="500 Page" href="500.html"><i
										class="fa fa-tree sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">500 Page</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-bar-chart-o icon-wrap"></i> <span
								class="mini-click-non">Charts</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Bar Charts" href="bar-charts.html"><i
										class="fa fa-line-chart sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Bar Charts</span></a></li>
								<li><a title="Line Charts" href="line-charts.html"><i
										class="fa fa-area-chart sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Line Charts</span></a></li>
								<li><a title="Area Charts" href="area-charts.html"><i
										class="fa fa-pie-chart sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Area Charts</span></a></li>
								<li><a title="Rounded Charts" href="rounded-chart.html"><i
										class="fa fa-signal sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Rounded Charts</span></a></li>
								<li><a title="C3 Charts" href="c3.html"><i
										class="fa fa-barcode sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">C3 Charts</span></a></li>
								<li><a title="Sparkline Charts" href="sparkline.html"><i
										class="fa fa-sort-amount-desc sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">Sparkline Charts</span></a></li>
								<li><a title="Peity Charts" href="peity.html"><i
										class="fa fa-object-ungroup sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">Peity Charts</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-table icon-wrap"></i> <span
								class="mini-click-non">Data Tables</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Peity Charts" href="static-table.html"><i
										class="fa fa-table sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Static Table</span></a></li>
								<li><a title="Data Table" href="data-table.html"><i
										class="fa fa-th sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Data Table</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-table icon-wrap"></i> <span
								class="mini-click-non">Forms Elements</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Basic Form Elements"
									href="basic-form-element.html"><i
										class="fa fa-pencil sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Bc Form Elements</span></a></li>
								<li><a title="Advance Form Elements"
									href="advance-form-element.html"><i
										class="fa fa-lightbulb-o sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">Ad Form Elements</span></a></li>
								<li><a title="Password Meter" href="password-meter.html"><i
										class="fa fa-hourglass sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Password Meter</span></a></li>
								<li><a title="Multi Upload" href="multi-upload.html"><i
										class="fa fa-hdd-o sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Multi Upload</span></a></li>
								<li><a title="Text Editor" href="tinymc.html"><i
										class="fa fa-globe sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Text Editor</span></a></li>
								<li><a title="Dual List Box" href="dual-list-box.html"><i
										class="fa fa-hand-paper-o sub-icon-mg" aria-hidden="true"></i>
										<span class="mini-sub-pro">Dual List Box</span></a></li>
							</ul></li>
						<li><a class="has-arrow" href="mailbox.html"
							aria-expanded="false"><i
								class="fa big-icon fa-desktop icon-wrap"></i> <span
								class="mini-click-non">App views</span></a>
							<ul class="submenu-angle" aria-expanded="false">
								<li><a title="Notifications" href="notifications.html"><i
										class="fa fa-external-link-square sub-icon-mg"
										aria-hidden="true"></i> <span class="mini-sub-pro">Notifications</span></a></li>
								<li><a title="Alerts" href="alerts.html"><i
										class="fa fa-crop sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Alerts</span></a></li>
								<li><a title="Modals" href="modals.html"><i
										class="fa fa-building sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Modals</span></a></li>
								<li><a title="Buttons" href="buttons.html"><i
										class="fa fa-adjust sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Buttons</span></a></li>
								<li><a title="Tabs" href="tabs.html"><i
										class="fa fa-eye sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Tabs</span></a></li>
								<li><a title="Accordion" href="accordion.html"><i
										class="fa fa-life-ring sub-icon-mg" aria-hidden="true"></i> <span
										class="mini-sub-pro">Accordion</span></a></li>
							</ul></li>
						<li id="removable"><a class="has-arrow" href="#"
							aria-expanded="false"><i
								class="fa big-icon fa-files-o icon-wrap"></i> <span
								class="mini-click-non">Pages</span></a>
						</li>
						<li><a title="Landing Page" href="#" aria-expanded="false"><i
								class="fa fa-bookmark icon-wrap sub-icon-mg" aria-hidden="true"></i>
								<span class="mini-click-non">Landing Page</span></a></li>
					</ul>
				</nav>
			</div>
		</nav>
	</div>
	<!-- Start Welcome area -->
	<div class="all-content-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="logo-pro">
						<a href="index.html"><img class="main-logo"
							src="/Food/resources/img/logo/logo.png" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
		<div class="header-advance-area">
			<div class="header-top-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="header-top-wraper">
								<div class="row">
									<div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
										<div class="menu-switcher-pro">
											<button type="button" id="sidebarCollapse"
												class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
												<i class="fa fa-bars"></i>
											</button>
										</div>
									</div>
									<div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
										<div class="header-top-menu tabl-d-n">
											<ul class="nav navbar-nav mai-top-nav">
												<li class="nav-item"><a href="Home.do" class="nav-link">Home</a>
												</li>                                                                                                                             
												<li class="nav-item"><a href="#" class="nav-link">About</a>
												</li>
												<li class="nav-item"><a href="#" class="nav-link">Services</a>
												</li>
												<li class="nav-item"><a href="#" class="nav-link">Support</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
										<div class="header-right-info">
											<ul class="nav navbar-nav mai-top-nav header-right-menu">
												<li class="nav-item dropdown"><a href="#"
													data-toggle="dropdown" role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"><i
														class="fa fa-envelope-o adminpro-chat-pro"
														aria-hidden="true"></i><span class="indicator-ms"></span></a>
													<div role="menu"
														class="author-message-top dropdown-menu animated zoomIn">
														<div class="message-single-top">
															<h1>Message</h1>
														</div>
														<ul class="message-menu">
															<li><a href="#">
																	<div class="message-img">
																		<img src="/Food/resources/img/contact/1.jpg" alt="">
																	</div>
																	<div class="message-content">
																		<span class="message-date">16 Sept</span>
																		<h2>Advanda Cro</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
															<li><a href="#">
																	<div class="message-img">
																		<img src="/Food/resources/img/contact/4.jpg" alt="">
																	</div>
																	<div class="message-content">
																		<span class="message-date">16 Sept</span>
																		<h2>Sulaiman din</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
															<li><a href="#">
																	<div class="message-img">
																		<img src="/Food/resources/img/contact/3.jpg" alt="">
																	</div>
																	<div class="message-content">
																		<span class="message-date">16 Sept</span>
																		<h2>Victor Jara</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
															<li><a href="#">
																	<div class="message-img">
																		<img src="/Food/resources/img/contact/2.jpg" alt="">
																	</div>
																	<div class="message-content">
																		<span class="message-date">16 Sept</span>
																		<h2>Victor Jara</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
														</ul>
														<div class="message-view">
															<a href="#">View All Messages</a>
														</div>
													</div></li>
												<li class="nav-item"><a href="#" data-toggle="dropdown"
													role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"><i
														class="fa fa-bell-o" aria-hidden="true"></i><span
														class="indicator-nt"></span></a>
													<div role="menu"
														class="notification-author dropdown-menu animated zoomIn">
														<div class="notification-single-top">
															<h1>Notifications</h1>
														</div>
														<ul class="notification-menu">
															<li><a href="#">
																	<div class="notification-icon">
																		<i
																			class="fa fa-check adminpro-checked-pro admin-check-pro"
																			aria-hidden="true"></i>
																	</div>
																	<div class="notification-content">
																		<span class="notification-date">16 Sept</span>
																		<h2>Advanda Cro</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
															<li><a href="#">
																	<div class="notification-icon">
																		<i class="fa fa-cloud adminpro-cloud-computing-down"
																			aria-hidden="true"></i>
																	</div>
																	<div class="notification-content">
																		<span class="notification-date">16 Sept</span>
																		<h2>Sulaiman din</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
															<li><a href="#">
																	<div class="notification-icon">
																		<i class="fa fa-eraser adminpro-shield"
																			aria-hidden="true"></i>
																	</div>
																	<div class="notification-content">
																		<span class="notification-date">16 Sept</span>
																		<h2>Victor Jara</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
															<li><a href="#">
																	<div class="notification-icon">
																		<i class="fa fa-line-chart adminpro-analytics-arrow"
																			aria-hidden="true"></i>
																	</div>
																	<div class="notification-content">
																		<span class="notification-date">16 Sept</span>
																		<h2>Victor Jara</h2>
																		<p>Please done this project as soon possible.</p>
																	</div>
															</a></li>
														</ul>
														<div class="notification-view">
															<a href="#">View All Notification</a>
														</div>
													</div></li>
												<li class="nav-item"><a href="#" data-toggle="dropdown"
													role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"> <i
														class="fa fa-user adminpro-user-rounded header-riht-inf"
														aria-hidden="true"></i> <span class="admin-name">Advanda
															Cro</span> <i
														class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
												</a>
													<ul role="menu"
														class="dropdown-header-top author-log dropdown-menu animated zoomIn">
														<li><a href="register.html"><span
																class="fa fa-home author-log-ic"></span>Register</a></li>
														<li><a href="#"><span
																class="fa fa-user author-log-ic"></span>My Profile</a></li>
														<li><a href="lock.html"><span
																class="fa fa-diamond author-log-ic"></span> Lock</a></li>
														<li><a href="#"><span
																class="fa fa-cog author-log-ic"></span>Settings</a></li>
														<li><a href="login.html"><span
																class="fa fa-lock author-log-ic"></span>Log Out</a></li>
													</ul></li>
												<li class="nav-item nav-setting-open"><a href="#"
													data-toggle="dropdown" role="button" aria-expanded="false"
													class="nav-link dropdown-toggle"><i class="fa fa-tasks"></i></a>

													<div role="menu"
														class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
														<ul class="nav nav-tabs custon-set-tab">
															<li class="active"><a data-toggle="tab"
																href="#Notes">News</a></li>
															<li><a data-toggle="tab" href="#Projects">Activity</a>
															</li>
															<li><a data-toggle="tab" href="#Settings">Settings</a>
															</li>
														</ul>

														<div class="tab-content custom-bdr-nt">
															<div id="Notes" class="tab-pane fade in active">
																<div class="notes-area-wrap">
																	<div class="note-heading-indicate">
																		<h2>
																			<i class="fa fa-comments-o"></i> Latest News
																		</h2>
																		<p>You have 10 New News.</p>
																	</div>
																	<div class="notes-list-area notes-menu-scrollbar">
																		<ul class="notes-menu-list">
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/4.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/1.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/2.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/3.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/4.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/1.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/2.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/1.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/2.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="notes-list-flow">
																						<div class="notes-img">
																							<img src="/Food/resources/img/contact/3.jpg" alt="" />
																						</div>
																						<div class="notes-content">
																							<p>The point of using Lorem Ipsum is that it
																								has a more-or-less normal.</p>
																							<span>Yesterday 2:45 pm</span>
																						</div>
																					</div>
																			</a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div id="Projects" class="tab-pane fade">
																<div class="projects-settings-wrap">
																	<div class="note-heading-indicate">
																		<h2>
																			<i class="fa fa-cube"></i> Recent Activity
																		</h2>
																		<p>You have 20 Recent Activity.</p>
																	</div>
																	<div
																		class="project-st-list-area project-st-menu-scrollbar">
																		<ul class="projects-st-menu-list">
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New User Registered</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">1 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New Order Received</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">2 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New Order Received</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">3 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New Order Received</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">4 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New User Registered</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">5 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New Order</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">6 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New User</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">7 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																			<li><a href="#">
																					<div class="project-list-flow">
																						<div class="projects-st-heading">
																							<h2>New Order</h2>
																							<p>The point of using Lorem Ipsum is that it
																								has a more or less normal.</p>
																							<span class="project-st-time">9 hours ago</span>
																						</div>
																					</div>
																			</a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div id="Settings" class="tab-pane fade">
																<div class="setting-panel-area">
																	<div class="note-heading-indicate">
																		<h2>
																			<i class="fa fa-gears"></i> Settings Panel
																		</h2>
																		<p>You have 20 Settings. 5 not completed.</p>
																	</div>
																	<ul class="setting-panel-list">
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Show notifications</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								class="onoffswitch-checkbox" id="example">
																							<label class="onoffswitch-label" for="example">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Disable Chat</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								class="onoffswitch-checkbox" id="example3">
																							<label class="onoffswitch-label" for="example3">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Enable history</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								class="onoffswitch-checkbox" id="example4">
																							<label class="onoffswitch-label" for="example4">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Show charts</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								class="onoffswitch-checkbox" id="example7">
																							<label class="onoffswitch-label" for="example7">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Update everyday</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								checked="" class="onoffswitch-checkbox"
																								id="example2"> <label
																								class="onoffswitch-label" for="example2">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Global search</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								checked="" class="onoffswitch-checkbox"
																								id="example6"> <label
																								class="onoffswitch-label" for="example6">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																		<li>
																			<div class="checkbox-setting-pro">
																				<div class="checkbox-title-pro">
																					<h2>Offline users</h2>
																					<div class="ts-custom-check">
																						<div class="onoffswitch">
																							<input type="checkbox" name="collapsemenu"
																								checked="" class="onoffswitch-checkbox"
																								id="example5"> <label
																								class="onoffswitch-label" for="example5">
																								<span class="onoffswitch-inner"></span> <span
																								class="onoffswitch-switch"></span>
																							</label>
																						</div>
																					</div>
																				</div>
																			</div>
																		</li>
																	</ul>

																</div>
															</div>
														</div>
													</div></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Mobile Menu start -->
			<div class="mobile-menu-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="mobile-menu">
								<nav id="dropdown">
									<ul class="mobile-menu-nav">
										<li><a data-toggle="collapse" data-target="#Charts"
											href="#">Home <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul class="collapse dropdown-header-top">
												<li><a href="index.html">Dashboard v.1</a></li>
												<li><a href="index-1.html">Dashboard v.2</a></li>
												<li><a href="index-3.html">Dashboard v.3</a></li>
												<li><a href="member-list.do">Member List</a></li>
												<li><a href="product-edit.html">Product Edit</a></li>
												<li><a href="product-detail.html">Product Detail</a></li>
												<li><a href="product-cart.html">Product Cart</a></li>
												<li><a href="product-payment.html">Product Payment</a></li>
												<li><a href="analytics.html">Analytics</a></li>
												<li><a href="widgets.html">Widgets</a></li>
											</ul></li>
										<li><a data-toggle="collapse" data-target="#demo"
											href="#">Mailbox <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="demo" class="collapse dropdown-header-top">
												<li><a href="mailbox.html">Inbox</a></li>
												<li><a href="mailbox-view.html">View Mail</a></li>
												<li><a href="mailbox-compose.html">Compose Mail</a></li>
											</ul></li>
										<li><a data-toggle="collapse" data-target="#others"
											href="#">Miscellaneous <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="others" class="collapse dropdown-header-top">
												<li><a href="file-manager.html">File Manager</a></li>
												<li><a href="contacts.html">Contacts Client</a></li>
												<li><a href="projects.html">Project</a></li>
												<li><a href="project-details.html">Project Details</a></li>
												<li><a href="blog.html">Blog</a></li>
												<li><a href="blog-details.html">Blog Details</a></li>
												<li><a href="404.html">404 Page</a></li>
												<li><a href="500.html">500 Page</a></li>
											</ul></li>
										<li><a data-toggle="collapse"
											data-target="#Miscellaneousmob" href="#">Interface <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="Miscellaneousmob"
												class="collapse dropdown-header-top">
												<li><a href="google-map.html">Google Map</a></li>
												<li><a href="data-maps.html">Data Maps</a></li>
												<li><a href="pdf-viewer.html">Pdf Viewer</a></li>
												<li><a href="x-editable.html">X-Editable</a></li>
												<li><a href="code-editor.html">Code Editor</a></li>
												<li><a href="tree-view.html">Tree View</a></li>
												<li><a href="preloader.html">Preloader</a></li>
												<li><a href="images-cropper.html">Images Cropper</a></li>
											</ul></li>
										<li><a data-toggle="collapse" data-target="#Chartsmob"
											href="#">Charts <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="Chartsmob" class="collapse dropdown-header-top">
												<li><a href="bar-charts.html">Bar Charts</a></li>
												<li><a href="line-charts.html">Line Charts</a></li>
												<li><a href="area-charts.html">Area Charts</a></li>
												<li><a href="rounded-chart.html">Rounded Charts</a></li>
												<li><a href="c3.html">C3 Charts</a></li>
												<li><a href="sparkline.html">Sparkline Charts</a></li>
												<li><a href="peity.html">Peity Charts</a></li>
											</ul></li>
										<li><a data-toggle="collapse" data-target="#Tablesmob"
											href="#">Tables <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="Tablesmob" class="collapse dropdown-header-top">
												<li><a href="static-table.html">Static Table</a></li>
												<li><a href="data-table.html">Data Table</a></li>
											</ul></li>
										<li><a data-toggle="collapse" data-target="#formsmob"
											href="#">Forms <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="formsmob" class="collapse dropdown-header-top">
												<li><a href="basic-form-element.html">Basic Form
														Elements</a></li>
												<li><a href="advance-form-element.html">Advanced
														Form Elements</a></li>
												<li><a href="password-meter.html">Password Meter</a></li>
												<li><a href="multi-upload.html">Multi Upload</a></li>
												<li><a href="tinymc.html">Text Editor</a></li>
												<li><a href="dual-list-box.html">Dual List Box</a></li>
											</ul></li>
										<li><a data-toggle="collapse" data-target="#Appviewsmob"
											href="#">App views <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="Appviewsmob" class="collapse dropdown-header-top">
												<li><a href="basic-form-element.html">Basic Form
														Elements</a></li>
												<li><a href="advance-form-element.html">Advanced
														Form Elements</a></li>
												<li><a href="password-meter.html">Password Meter</a></li>
												<li><a href="multi-upload.html">Multi Upload</a></li>
												<li><a href="tinymc.html">Text Editor</a></li>
												<li><a href="dual-list-box.html">Dual List Box</a></li>
											</ul></li>
										<li><a data-toggle="collapse" data-target="#Pagemob"
											href="#">Pages <span
												class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
											<ul id="Pagemob" class="collapse dropdown-header-top">
												<li><a href="login.html">Login</a></li>
												<li><a href="register.html">Register</a></li>
												<li><a href="lock.html">Lock</a></li>
												<li><a href="password-recovery.html">Password
														Recovery</a></li>
											</ul></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Mobile Menu end -->
			<div class="breadcome-area">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="breadcome-list single-page-breadcome">
								<div class="row">
									
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
										<ul class="breadcome-menu">
											<li><a href="#">Home</a> <span class="bread-slash">/</span>
											</li>
											<li><span class="bread-blod">Product List</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="product-status mg-tb-15">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="product-status-wrap">
						
								
								
									<div class="del-member">
							<button data-toggle="tooltip" title="Trash" class="chk_del">
											<i class="fa fa-trash-o" aria-hidden="true"></i>
							</button>
							<div class="add-decla">
								<a href="#" onclick="window.open('addDecla.do','_blank','width=600 ,height=400');">Add Declaration</a>
							</div>
							</div>
							<h4>Declaration Board	</h4>
							<table>
								<tr>
									<th>게시판</th>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>날짜</th>
									<th>조회수</th>
									<th><div class="check_all"><input type='checkbox' id="check_all"></div></th>
								</tr>
								<c:forEach items="${declarationList }" var="board">
									<tr>
										<td>
											<c:if test="${board.b_no eq 3}">밥친구</c:if>
											<c:if test="${board.b_no eq 5}">예약</c:if>
											<c:if test="${board.b_no eq 4}">Q&A</c:if>
										</td>
										<td>${board.title }</td>
										<td>${board.userId}</td>
										<td>${board.b_content }</td>
										<td>${board.b_date }</td>
										<td>${board.viewCount}</td>
										<td>
											<button data-toggle="tooltip" title="Edit"
												class="pd-setting-ed">
												<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
											</button> 
											<button data-toggle="tooltip" title="Trash" class="pd-setting-ed" onclick="location.href='Delete.do?m_id=${member.m_id}'">
											<i class="fa fa-trash-o" aria-hidden="true"></i>
											</button>
											<input type='checkbox' class='input_check' name="${board.b_no}">
											<input type='hidden' class='boardType' name="${board.boardType}"/>
										</td>
									</tr>
								</c:forEach>
							</table>

							<div class="custom-pagination">
								<nav aria-label="Page navigation example">
								
								<div class="breadcome-heading">
			
										<form role="search" class="frm">

											<div class="form-select-list">
												<select class="form-control custom-select-value" id="searchType"
													name="searchType">
													<option <c:if test="${searchType eq 'userId'}">selected</c:if>>작성자</option>
													<option <c:if test="${searchType eq 'b_no'}">selected</c:if>>글번호</option>
													<option <c:if test="${searchType eq 'boardType'}">selected</c:if>>게시판</option>
												</select> <input type="text" placeholder="Search..."
													class="form-control" name='keyword' id='keywordInput' <c:if test="${keyword ne null}">value="${keyword}"</c:if>> <a href="javascript:formname.submit();"
													class="searchvalue"><i class="fa fa-search"></i></a>
											</div>
											
											<input type="hidden" id="nowPage"
													name="nowPage" value="${paging.nowPage}"> <input
													type="hidden" id="cntPerPage" name="cntPerPage"
													value="${paging.cntPerPage }"> <input type="hidden"
													id="searchClick" name="searchClick" value="Y">
										</form>

										</div>
								
								
								
								<div class='pagediv'>
									<ul class="pagination">
										<li class="page-item"><a class="page-link"
												href="../manager/member-list.do?nowPage=${paging.startPage }&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&keyword=${keyword}&searchClick=N"
											style="font-size: 20px;">Start</a></li>
										<c:if test="${paging.nowPage != 1 }">
											<li class="page-item"><a class="page-link"
												href="../manager/member-list.do?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&keyword=${keyword}&searchClick=N"
												style="font-size: 20px;">Previous</a></li>
										</c:if>
										<c:forEach begin="${paging.startPage }"
											end="${paging.endPage }" var="p">
											<c:choose>
												<c:when test="${p == paging.nowPage }">
													<li class="page-item"><a class="page-link" href="#"
														style="font-size: 30px;">${p }</a></li>
												</c:when>
												<c:when test="${p != paging.nowPage }">
													<li class="page-item"><a class="page-link"
														href="../manager/member-list.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&keyword=${keyword}&searchClick=N"
														style="font-size: 20px;">${p }</a></li>
												</c:when>
											</c:choose>
										</c:forEach>
										<c:if test="${paging.nowPage != paging.lastPage}">
											<li class="page-item"><a class="page-link"
												href="../manager/member-list.do?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&keyword=${keyword}&searchClick=N"
												style="font-size: 20px;">Next</a></li>
										</c:if>
										<li class="page-item"><a class="page-link"
											href="../manager/member-list.do?nowPage=${paging.lastPage }&cntPerPage=${paging.cntPerPage}&searchType=${searchType}&keyword=${keyword}&searchClick=N"
											style="font-size: 20px;">End</a></li>

									</ul>
									</div>
								</nav>
								</div>
								
									<!-- id는 고유한 이름으로 설정하고 tab의 href와 연결되어야 한다. -->
						
									<!-- fade 클래스는 선택적인 사항으로 트랜지션(transition)효과가 있다.
									<!-- in 클래스는 fade 클래스를 선언하여 트랜지션효과를 사용할 때 in은 active와 선택되어 있는 탭 영역의 설정이다. -->







							
								

								
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-copyright-area">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="footer-copy-right">
							<p>
								Copyright &copy; 2020 <a
									href="https://colorlib.com/wp/templates/">Colorlib</a> All
								rights reserved.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jquery
		============================================ -->
	<script src="/Food/resources/js/vendor/jquery-1.11.3.min.js"></script>
	<!-- bootstrap JS
		============================================ -->
	<script src="/Food/resources/js/bootstrap.min.js"></script>
	<!-- wow JS
		============================================ -->
	<script src="/Food/resources/js/wow.min.js"></script>
	<!-- price-slider JS
		============================================ -->
	<script src="/Food/resources/js/jquery-price-slider.js"></script>
	<!-- meanmenu JS
		============================================ -->
	<script src="/Food/resources/js/jquery.meanmenu.js"></script>
	<!-- owl.carousel JS
		============================================ -->
	<script src="/Food/resources/js/owl.carousel.min.js"></script>
	<!-- sticky JS
		============================================ -->
	<script src="/Food/resources/js/jquery.sticky.js"></script>
	<!-- scrollUp JS
		============================================ -->
	<script src="/Food/resources/js/jquery.scrollUp.min.js"></script>
	<!-- mCustomScrollbar JS
		============================================ -->
	<script src="/Food/resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="/Food/resources/js/scrollbar/mCustomScrollbar-active.js"></script>
	<!-- metisMenu JS
		============================================ -->
	<script src="/Food/resources/js/metisMenu/metisMenu.min.js"></script>
	<script src="/Food/resources/js/metisMenu/metisMenu-active.js"></script>
	<!-- morrisjs JS
		============================================ -->
	<script src="/Food/resources/js/sparkline/jquery.sparkline.min.js"></script>
	<script src="/Food/resources/js/sparkline/jquery.charts-sparkline.js"></script>
	<!-- calendar JS
		============================================ -->
	<script src="/Food/resources/js/calendar/moment.min.js"></script>
	<script src="/Food/resources/js/calendar/fullcalendar.min.js"></script>
	<script src="/Food/resources/js/calendar/fullcalendar-active.js"></script>
	<!-- plugins JS
		============================================ -->
	<script src="/Food/resources/js/plugins.js"></script>
	<!-- main JS
		============================================ -->
	<script src="/Food/resources/js/main.js"></script>
</body>

</html>