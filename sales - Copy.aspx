﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sales - Copy.aspx.cs" Inherits="sales" %>

<!DOCTYPE html>
<html lang="en">
	<head>
          <title>WebStore - Online Shop Manager</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Online Shop Manager,Megahit Systems, Stacklogic System, software company, Abuja, WebStore" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<meta charset utf="8"/>
    <link rel="shortcut icon" href="/images/appicon.ico"/>
           <link rel="stylesheet" href="css/font-awesome.min.css"> 
		<!--bootstrap-->
			<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!--custom css-->
			<link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--component-css-->
			<script src="js/jquery-2.1.4.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			 <!--script-->
			 <script src="js/modernizr.custom.js"></script>
            <script src="js/bigSlide.js"></script>
            <script>
				$(document).ready(function() {
				$('.menu-link').bigSlide();
				});
            </script>
			<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<script src="js/simpleCart.min.js"> </script>
            <!--script-->
<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <script src="js/easyResponsiveTabs.js"></script>
			
		<!--script-->
		<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    </head>
<body>
<div class="body-back">
	<div class="masthead pdng-stn1">
		<div id="menu" class="panel" role="navigation">
			<div class="wrap-content">
							
			<div class="profile-menu text-center">
					<img class="img-circle border-effect" src="images/shopLogo.png" alt=" ">
						<h3><asp:Label runat="server" ID="lblsystemsuser"> System User</asp:Label> </h3>
						<p><asp:Label runat="server" ID="lblAccessLevel">AccessLevel</asp:Label></p>
						<div class="pro-menu">
								<ul class="nav navbar-right">
									<li><a class="active" href="default.aspx">Log off</a></li>
									<li><a  href="sales.aspx">Sales</a></li>
                                    <li><a  href="restock.aspx">Restock</a></li>
                                    <li><a  href="audit.aspx">Audit</a></li>
                                    <li><a  href="dashboard.aspx">Dashboard</a></li>
									<li><a  href="#latest">Latest Products</a></li>
                                    <%--<li><a class="scroll" href="#latest">Latest Products</a></li>--%>
									<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Setups<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#login"  data-letters="Login">Product Category</a></li>
									<li><a href="systemusers.aspx"  data-letters="Sign Up">System Users</a></li>
								</ul>
				</li>

                                    
                                    <li><a class="scroll" href="#checkout">Reports</a></li>
									<%--<li><a class="scroll" href="#checkout">CheckOut</a></li>
									<li><a class="scroll" href="#view" >Get Shop</a></li>
									<li><a class="scroll" href="#contact">Contact Us</a></li>--%>
								</ul>
								
						</div>
				</div>
			</div>
		</div>
		<div class="phone-box wrap push" id="home">
			<div class="menu-notify">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">Sales</h5>
				</div>
				<div class="Profile-right">
						<div class="cart box_1">
							<a class="scroll" href="#checkout">
								<h3> <div class="total">
									<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
									<i class="fa fa-shopping-cart"></i></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty"></i></a></p>
								<p><a href="javascript:;" class="simpleCart_empty"><img src="images/empty.png" alt=""></a></p>
								<div class="clearfix"> </div>
							</div>
					</div>
					<div class="clearfixfix"></div>
				</div>
			<div class="details-grid">
				<div class="details-shade">
						<div class="details-right">
							<h3>New Collection</h3>
							<h4>Sale 30% off all Items !</h4>
							<h6>Different Products :</h6>
								<ul class="bann-btns">
									<li><select class="bann-size">
									<option value="select your location">Shirts</option>
									<option value="saab">Shoes</option>
									<option value="fiat">Tops</option>
									<option value="audi">Jeans</option>
									</select>
								</li>
								<li><a href="#" class="item_add">Shop Now</a></li>
							   </ul>
							</div>
						</div>
				</div>
   <div class="goals" id="sales">
					<div class="menu-notify2">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
				<div class="Profile-right">
						<div class="cart box_1">
								<a href="#">
								<h3> <div class="total">
									<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
									<i class="fa fa-shopping-cart"></i></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty"></i></a></p>
								<p><a href="javascript:;" class="simpleCart_empty"><img src="images/empty.png" alt=""></a></p>
								<div class="clearfix"> </div>
							</div>
					</div>
					<div class="clearfixfix"></div>
				</div>
					<div class="welcome" id="about">
					              <h2 class="tittle">BEST SALES</h2>
						<div class="col-sm-6 banner-top banner-bottom">
								<a href="#">
									<div class="banner-top-in at">
										<img src="images/4.jpg" class="img-responsive" alt="">
									</div></a>
								<div class="cart-at grid_1 simpleCart_shelfItem">
										<div class="item_add"><span class="item_price">180 $ <i class="fa fa-shopping-cart"></i> </span></div>
									<div class="off">
										<label>35% off !</label>
										<p>White Blended Cotton "still fresh" t-shirt</p>
									</div>
								</div>
								<div class="clearfix"> </div>
								
								</div>
								<div class="col-sm-6 banner-top banner-bottom">
								<a href="#">
									<div class="banner-top-in at">
										<img src="images/5.jpg" class="img-responsive" alt="">
									</div></a>
								<div class="cart-at grid_1 simpleCart_shelfItem">
								  <div class="item_add"><span class="item_price">123 $ <i class="fa fa-shopping-cart"></i> </span></div>
									<div class="off">
										<label>50% off !</label>
										<p>White Blended Cotton "Orange Top" Kurti</p>
									</div>
								</div>
								<div class="clearfix"> </div>
								
								</div>
							<div class="clearfix"> </div>
				
					</div>
			</div>
			<div class="parker" id="service">
		<div class="menu-notify">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
				<div class="Profile-right">
						<div class="cart box_1">
								<a class="scroll" href="#checkout">
								<h3> <div class="total">
									<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
									<i class="fa fa-shopping-cart"></i></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty"></i></a></p>
								<p><a href="javascript:;" class="simpleCart_empty"><img src="images/empty.png" alt=""></a></p>
								<div class="clearfix"> </div>
							</div>
					</div>
					<div class="clearfixfix"></div>
				</div>
				<!---->
					<!--Vertical Tab-->
	<div class="categories-section main-grid-border" id="latest">
		<div class="inner-products">
		<h3 class="tittle two">Latest Products</h3>
			<div class="category-list">
				<div id="parentVerticalTab">
					<ul class="resp-tabs-list hor_1">
						<li>Foot Wear</li>
						<li>Watches</li>
						<li>Goggles</li>
						<li>Bags</li>
						
						
					</ul>
					<div class="resp-tabs-container hor_1">
						<span class="active total" style="display:block;" data-toggle="modal" data-target="#myModal"><strong>All Products</strong> (Select your Product)</span>
						<div>
							<div class="category">
								<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi2.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
													 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 
												<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Heel</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
												
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
								 </div>
								 <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi3.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
													 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 
												<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Shoes</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
												
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
								 </div>
								<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi4.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
													 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 
												<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Shoes</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
												
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>Sale <span>30%</span></p>

											  </div>
								 </div>
								 <div class="clearfix"> </div>
							</div>
					
						</div>
							<div>
							<div class="category">
								 	<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi8.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Watch</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
											 </div>
									<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi9.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Watch</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi10.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Watch</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	<p>Sale <span>30%</span></p>
											  </div>
											</div>
											<div class="clearfix"></div>


							</div>
							
						</div>
						<div>
							<div class="category">
								 	<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi5.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Goggles</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
											 </div>
									<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi6.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Goggles</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi7.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Goggles</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	<p>Sale <span>30%</span></p>
											  </div>
											</div>
											<div class="clearfix"></div>


							</div>
							
						</div>
						<div>
							<div class="category">
									<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi11.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Bag</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
											 </div>
									<div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi12.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Bag</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											  <div class="col-in">
											  	<p>New</p>
											  </div>
											 </div>
											  <div class="img-top simpleCart_shelfItem">
										  
					   		  			   <img src="images/pi13.jpg" class="img-responsive" alt=""/>
											<div class="tab_desc">
												 <ul class="round-top">
												 	<li><a href="#"><i class="glyphicon glyphicon-search"> </i></a></li>
												 	<li><a href="#"><i class="glyphicon glyphicon-resize-small"> </i></a></li>
												 </ul>
												 
												 	<div class="agency ">
													<div class="agency-left">
														<h6 class="jean">Bag</h6>
														<span class="dollor item_price">$50.00</span>
														<div class="clearfix"> </div>
													</div>
													
												 </div>
											  </div>
											 <div class="col-in col-in-1">
											  	<p>Sale <span>30%</span></p>
											  </div>
											</div>
											<div class="clearfix"></div>


							</div>
							
						</div>

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--Plug-in Initialisation-->
	<script type="text/javascript">
    $(document).ready(function() {

        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo2');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script>
	<!-- //Categories -->
</div>
		<!--products-main-->
			<div class="products" id="product">
			  <div class="menu-notify2">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
				<div class="Profile-right">
						<div class="cart box_1">
								<a class="scroll" href="#checkout">
								<h3> <div class="total">
									<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
									<i class="fa fa-shopping-cart"></i></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty"></i></a></p>
								<p><a href="javascript:;" class="simpleCart_empty"><img src="images/empty.png" alt=""></a></p>
								<div class="clearfix"> </div>
							</div>
					</div>
					<div class="clearfixfix"></div>
				</div>
<!--products-->
	<div class="content">
		<div class="content-top">
		   <h3 class="tittle two">New Arrivals</h3>
		<div class="pink">
			<!-- requried-jsfiles-for owl -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<script src="js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 4,
						lazyLoad : true,
						autoPlay : true,
						pagination : true,
					});
				});
			</script>
		<!-- //requried-jsfiles-for owl -->
			<div id="owl-demo" class="owl-carousel text-center">
			<div class="item">
				<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s1.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
					<!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >120 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>
			<div class="item">
		<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s2.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				  <!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >180 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
					
				</div>
			</div>

			<div class="item">
				<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s3.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				   <!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >153 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>

			<div class="item">
				<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s4.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				
				<!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >123 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>

			<div class="item">
				<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s5.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				<!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >163 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>

			<div class="item">
				<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s6.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				<!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >143 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>
			<div class="item">
				<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s7.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				<!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >123 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>
		<div class="item">
				<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s8.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				<!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >193 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>
		<div class="item">
		<div class=" box-in">
			<div class=" grid_box">		
							 <a href="#" > <img src="images/s9.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
						</ul>
					
						</div> </a> 	
		           </div>
				<!---->
						<div class="grid_1 simpleCart_shelfItem">
							<a href="#" class="cup item_add"><span class=" item_price" >150 $ <i class="fa fa-shopping-cart"></i> </span></a>					
						</div>
					<!---->
				</div>
			</div>
				<div class="clearfix"> </div>
			</div>
			
		</div>
		<!--//products-->	
		 </div>
   </div>
  <!--//products-main-->
  <!--/item-->
       <div class="info-products" id="info">
	   
	      <div class="info-inner">
		     <div class="menu-notify">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
				<div class="Profile-right">
						<div class="cart box_1">
							<a class="scroll" href="#checkout">
								<h3> <div class="total">
									<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
									<i class="fa fa-shopping-cart"></i></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty"></i></a></p>
								<p><a href="javascript:;" class="simpleCart_empty"><img src="images/empty.png" alt=""></a></p>
								<div class="clearfix"> </div>
							</div>
					</div>
					<div class="clearfixfix"></div>
				</div>
				
				<div class="section-info">
				<h3 class="tittle">View Products</h3>
				  <div class="col-md-4 pro-grid">
				     <div class=" box-in">
							<div class=" grid_box">		
							 <a href="#" > <img src="images/s4.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
							</ul>
						</div> </a> 	
						   </div>
						<!---->
								<div class="grid_1 simpleCart_shelfItem">
									<a href="#" class="cup item_add"><span class=" item_price" >173 $ <i class="fa fa-shopping-cart"></i> </span></a>					
								</div>
							<!---->
						</div>
				  </div>
				    <div class="col-md-4 pro-grid">
				     <div class=" box-in">
							<div class=" grid_box">		
							 <a href="#" > <img src="images/s5.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
							</ul>
						</div> </a> 	
						   </div>
						<!---->
								<div class="grid_1 simpleCart_shelfItem">
									<a href="#" class="cup item_add"><span class=" item_price" >180 $ <i class="fa fa-shopping-cart"></i> </span></a>					
								</div>
							<!---->
						</div>
				  </div>
				    <div class="col-md-4 pro-grid">
				     <div class=" box-in">
							<div class=" grid_box">		
							 <a href="#" > <img src="images/s6.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
							</ul>
						</div> </a> 	
						   </div>
						<!---->
								<div class="grid_1 simpleCart_shelfItem">
									<a href="#" class="cup item_add"><span class=" item_price" >150 $ <i class="fa fa-shopping-cart"></i> </span></a>					
								</div>
							<!---->
						</div>
				  </div>
				  	  <div class="col-md-4 pro-grid">
				     <div class=" box-in">
							<div class=" grid_box">		
							 <a href="#" > <img src="images/s7.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
							</ul>
						</div> </a> 	
						   </div>
						<!---->
								<div class="grid_1 simpleCart_shelfItem">
									<a href="#" class="cup item_add"><span class=" item_price" >143 $ <i class="fa fa-shopping-cart"></i> </span></a>					
								</div>
							<!---->
						</div>
				  </div>
				    <div class="col-md-4 pro-grid">
				     <div class=" box-in">
							<div class=" grid_box">		
							 <a href="#" > <img src="images/s8.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
							</ul>
						</div> </a> 	
						   </div>
						<!---->
								<div class="grid_1 simpleCart_shelfItem">
									<a href="#" class="cup item_add"><span class=" item_price" >183 $ <i class="fa fa-shopping-cart"></i> </span></a>					
								</div>
							<!---->
						</div>
				  </div>
				    <div class="col-md-4 pro-grid">
				     <div class=" box-in">
							<div class=" grid_box">		
							 <a href="#" > <img src="images/s2.jpg" class="img-responsive" alt="">
							 	<div class="zoom-icon">
							 		
									<ul class="in-by">
										<li><h5>sizes:</h5></li>                     
										<li><span>S</span></li>
										<li><span>XS</span></li>
										<li><span>M</span></li>
										<li><span> L</span></li>
										<li><span>XL</span></li>
										<li><span> XXL</span></li>
									</ul>
					
					
						<ul class="in-by-color">
							<li><h5>colors:</h5></li>                   
							<li><span > </span></li>
							<li><span class="color"> </span></li>
							<li><span class="color1"> </span></li>
							<li><span class="color2"> </span></li>
							<li><span class="color3"> </span></li>
							
							</ul>
						</div> </a> 	
						   </div>
						<!---->
								<div class="grid_1 simpleCart_shelfItem">
									<a href="#" class="cup item_add"><span class=" item_price" >150 $ <i class="fa fa-shopping-cart"></i> </span></a>					
								</div>
							<!---->
						</div>
				  </div>
				    <div class="clearfix"> </div>
				</div>
		  </div>
	   </div>
  <!--//item-->
    <!--/view-product-->
  <div class="view-product">
    		<div class="menu-notify">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
				<div class="Profile-right">
						<div class="cart box_1">
							<a class="scroll" href="#checkout">
								<h3> <div class="total">
									<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
									<i class="fa fa-shopping-cart"></i></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty"></i></a></p>
								<div class="clearfix"> </div>
							</div>
					</div>
					<div class="clearfixfix"></div>
				</div>
				<!--/checkout-->
				  <div class="checkout" id="checkout">
				      <h3 class="tittle two">Check Out</h3>
					<ul class="icon1 sub-icon1 profile_img">
						<ul class="sub-icon1 list">
						  <h3>My Shopping Bag(3)</h3>
						  <div class="shopping_cart">
							  <div class="cart_box">
							   	 <div class="message">
							   	     <div class="alert-close"><i class="fa fa-times"></i> </div> 
					                <div class="list_img"><img src="images/1.jpg" class="img-responsive" alt=""/></div>
								    <div class="list_desc"><h4><a href="#">Velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span>
									    <div class="delivery">
										 <p>Service Charges : Rs.100.00</p>
										 <span>Delivered in 2-3 bussiness days</span>
										 <div class="clearfix"></div>
									</div>
									 </div>
		                              <div class="clearfix"></div>
	                              </div>
								 
	                            </div>
	                            <div class="cart_box">
							   	 <div class="message1">
							   	     <div class="alert-close1"><i class="fa fa-times"></i> </div> 
					                <div class="list_img"><img src="images/2.jpg" class="img-responsive" alt=""/></div>
								    <div class="list_desc"><h4><a href="#">Velit esse molestie</a></h4>1 x<span class="actual">
		                             $12.00</span>
									  <div class="delivery">
										 <p>Service Charges : Rs.100.00</p>
										 <span>Delivered in 2-3 bussiness days</span>
										 <div class="clearfix"></div>
									</div>
									 </div>
		                              <div class="clearfix"></div>
	                              </div>
								 
	                            </div>
	                            <div class="cart_box1">
								  <div class="message2">
							   	     <div class="alert-close2"><i class="fa fa-times"></i> </div> 
					                <div class="list_img"><img src="images/3.jpg" class="img-responsive" alt=""/></div>
										<div class="list_desc"><h4>
										<a href="#">Velit esse molestie</a></h4>1 x
										<span class="actual">
										 $12.00</span>
										  <div class="delivery">
										 <p>Service Charges : Rs.100.00</p>
										 <span>Delivered in 2-3 bussiness days</span>
										 <div class="clearfix"></div>
									</div>
									 </div>

		                              <div class="clearfix"></div>
	                              </div>
	                            </div>
	                        </div>
										<div class="total">
											<div class="total_left">CartSubtotal : </div>
											<div class="total_right">$250.00</div>
											<div class="clearfix"> </div>
										</div>
										<div class="login_buttons">
										  <div class="check_button"><a href="#">Check out</a></div>
										</div>
									  <div class="clearfix"></div>
									</ul>
								 </li>
						  </ul>
							<script>$(document).ready(function(c) {
								$('.alert-close').on('click', function(c){
									$('.message').fadeOut('slow', function(c){
										$('.message').remove();
									});
								});	  
							});
							</script>
							<script>$(document).ready(function(c) {
								$('.alert-close1').on('click', function(c){
									$('.message1').fadeOut('slow', function(c){
										$('.message1').remove();
									});
								});	  
							});
							</script>
							<script>$(document).ready(function(c) {
								$('.alert-close2').on('click', function(c){
									$('.message2').fadeOut('slow', function(c){
										$('.message2').remove();
									});
								});	  
							});
							</script>
						</div>
				  <!--//checkout-->
				  
  </div>
  <!--/view-product-->
  <div class="view-product" id="view">
   		<div class="menu-notify">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
				<div class="Profile-right">
						<div class="cart box_1">
								<a class="scroll" href="#checkout">
								<h3> <div class="total">
									<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
									<i class="fa fa-shopping-cart"></i></h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty"></i></a></p>
								<p><a href="javascript:;" class="simpleCart_empty"><img src="images/empty.png" alt=""></a></p>
								<div class="clearfix"> </div>
							</div>
					</div>
					<div class="clearfixfix"></div>
				</div>
				  <!--/view-->
				 
			<div class="cont span_2_of_3 inner">
			 <h3 class="tittle two">Get Shop</h3>
			     <div class="labout span_1_of_a1">
				<!-- start product_slider -->
				<div class="flexslider">
							  <ul class="slides">
								<li data-thumb="images/s11.jpg">
									<div class="thumb-image"> <img src="images/s11.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/s12.jpg">
									 <div class="thumb-image"> <img src="images/s12.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/s13.jpg">
								   <div class="thumb-image"> <img src="images/s13.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="images/s11.jpg">
								   <div class="thumb-image"> <img src="images/s11.jpg" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							  </ul>
							<div class="clearfix"></div>
					</div>		

				<!-- end product_slider -->
			</div>
			<div class="cont1 span_2_of_a1 pull-right">
				<h3 class="m_3">Lorem ipsum dolor sit amet</h3>
				
				<div class="price_single">
							  <span class="reducedfrom">$66.00</span>
							  <span class="actual">$12.00</span> <a href="#">click for offer</a>
							</div>
				<ul class="options list-unstyled">
					<h4 class="m_9">Select a Size</h4>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<div class="clearfix"></div>
				</ul>
				<div class="btn_form">
				   <form>
					 <input type="submit" value="buy now" title="">
				  </form>
				</div>
				<ul class="add-to-links list-unstyled">
    			   <li><i class="fa fa-heart-o"></i> <a href="#">Add to Wish list</a></li>
    			</ul>
    			<p class="m_desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
    			
                <div class="social_single">	
				   <ul list-unstyled>	
					  <li class="fb"><a href="#"><span> </span></a></li>
					  <li class="tw"><a href="#"><span> </span></a></li>
					  <li class="g_plus"><a href="#"><span> </span></a></li>
					  <li class="rss"><a href="#"><span> </span></a></li>		
				   </ul>
			    </div>
			</div>
			
			<div class="clearfix"></div>
         </div>
				<!-- FlexSlider -->
	<script src="js/imagezoom.js"></script>
		<script defer src="js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<script>
		// Can also be used with $(document).ready()
			$(window).load(function() {
				$('.flexslider').flexslider({
					animation: "slide",
					controlNav: "thumbnails"
				 });
			});
		</script>
	<!-- //FlexSlider-->
					
				  <!--//view-->
  </div>
   <!--//view-product-->
   <div class="loging-section" id="login">
				<div class="menu-notify1">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
						<div class="Profile-right two">
							<div id="dd1" class="wrapper-dropdown-1" tabindex="1"><i class="fa fa-user"></i>

								<ul class="dropdown">
									<li><a href="#">Edit Profile </a></li>
									<li><a href="#">Help</a></li>
									<li><a href="#">Activity log</a></li>
									<li><a href="#">Log Out</a></li>
								</ul>
									<script type="text/javascript">
																function DropDown(el) {
																	this.dd = el;
																	this.initEvents();
																}
																DropDown.prototype = {
																	initEvents : function() {
																		var obj = this;
													
																		obj.dd.on('click', function(event){
																			$(this).toggleClass('active');
																			event.stopPropagation();
																		});	
																	}
																}
																$(function() {
													
																	var dd = new DropDown( $('#dd3') );
													
																	$(document).click(function() {
																		// all dropdowns
																		$('.wrapper-dropdown-3').removeClass('active');
																	});
													
																});
									</script>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<!--/login-->
					
						<div class="login-grids">
						 <h3 class="tittle two">Login with us</h3>
								<div class="login">
									<div class="login-left">
										<ul>
											<li><a class="fb" href="#"><i></i>Sign in with Facebook</a></li>
											<li><a class="goog" href="#"><i></i>Sign in with Google</a></li>
											<li><a class="linkin" href="#"><i></i>Sign in with Linkedin</a></li>
										</ul>
									</div>
									<div class="login-right">
										<form>
											<h3>Signin with your account </h3>
											<input type="text" placeholder="Email" required="">
										<input type="password" placeholder="Password" required="">
											<h4><a href="#">Forgot password</a> / <a href="#">Create new password</a></h4>
											<div class="single-bottom">
												<input type="checkbox" id="brand" value="">
												<label for="brand"><span></span>Remember Me.</label>
											</div>
											<input type="submit" value="SIGNIN">
										</form>
									</div>
									<div class="clearfix"></div>								
								</div>
								<p>By logging in you agree to our <span>Terms and Conditions</span> and <span>Privacy Policy</span></p>
							</div>
				    <!--//login-->

			</div>
			   <!--/sign up-->
   <div class="sign-section" id="sign">
				<div class="menu-notify1">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">E-Shopin</h5>
				</div>
					<div class="Profile-right two">
					<div id="dd3" class="wrapper-dropdown-3" tabindex="1"><i class="fa fa-user"></i>

						<ul class="dropdown">
							<li><a href="#">Edit Profile </a></li>
							<li><a href="#">Help</a></li>
							<li><a href="#">Activity log</a></li>
							<li><a href="#">Log Out</a></li>
						</ul>
							<script type="text/javascript">
														function DropDown(el) {
															this.dd = el;
															this.initEvents();
														}
														DropDown.prototype = {
															initEvents : function() {
																var obj = this;
											
																obj.dd.on('click', function(event){
																	$(this).toggleClass('active');
																	event.stopPropagation();
																});	
															}
														}
														$(function() {
											
															var dd = new DropDown( $('#dd1') );
											
															$(document).click(function() {
																// all dropdowns
																$('.wrapper-dropdown-1').removeClass('active');
															});
											
														});
							</script>
					</div>
				</div>

						<div class="clearfix"></div>
					</div>
					<!--/login-->
					<div class="login-grids">
					 <h3 class="tittle two">Sign Up</h3>
								<div class="login">
									<div class="login-left">
										<ul>
											<li><a class="fb" href="#"><i></i>Sign in with Facebook</a></li>
											<li><a class="goog" href="#"><i></i>Sign in with Google</a></li>
											<li><a class="linkin" href="#"><i></i>Sign in with Linkedin</a></li>
										</ul>
									</div>
									<div class="login-right two">
									 <form>
									 <h3>Create your account </h3>
										<input type="text" placeholder="Name" required="">
										<input type="text" placeholder="phone" required="">
										<input type="text" placeholder="Email" required="">
										<input type="password" placeholder="Password" required="">
										
							
										<input type="submit" value="SEND" >

						   </form>

										
									</div>
									<div class="clearfix"></div>								
								</div>
								<p>By logging in you agree to our <span>Terms and Conditions</span> and <span>Privacy Policy</span></p>
							</div>
					
				    <!--//login-->

			</div>
		   <!--/contact-->
   <div class="contact" id="contact">
   
					<div class="contact-bottom">
						<div class="contact_inner">
						
							<h3>Contact Us</h3>
						</div>
						<div class="sing-up-icon text-center"></div>
					<form class="contact">
									<div class="styled-input">
									  <input type="text" required />
									  <label>Name</label>
									  <span></span> </div>
									<div class="styled-input">
									  <input type="email" required />
									  <label>Email</label>
									  <span></span> </div>
									<div class="styled-input">
									  <input type="tel" required />
									  <label>Phone</label>
									  <span></span> </div>
									<div class="styled-input">
									  <textarea required></textarea>
									  <label>Message</label>
									  <span></span> </div>
										<div class="send">
											<input type="submit" value="Send" >
										</div>
						     </form>

					</div>
			</div>
						
		</div>
				</div> 
</div>
</div>

<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>
