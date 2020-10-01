<%@ Page Language="C#" AutoEventWireup="true" CodeFile="systemusers.aspx.cs" Inherits="systemusers" %>


<!DOCTYPE html>
<html lang="en">
	<head>
          <title>WebStore - Online Shop Manager</title>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Online Shop Manager,Megahit Systems, Stacklogic System, software company, Abuja, WebStore" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

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
     <style>
        .login-div {
            width: 400px;
            margin-left:auto;
            margin-right:auto;
        }



    </style>
    
    </head>
<body class="body-back">
   
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

                                    
                                    <li><a class="scroll" href="#checkout">Refund</a></li>
									<li><a class="scroll" href="#checkout">REPORTS</a></li>
									<%--<li><a class="scroll" href="#view" >Get Shop</a></li>--%>
									<%--<li><a class="scroll" href="#contact">Contact Us</a></li>--%>
								</ul>
								
						</div>
				</div>
			</div>
		</div>
		<div class="phone-box wrap push" id="home">
		
			   <!--/sign up-->
   <div class="sign-section" id="sign">
				<div class="menu-notify1">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">CREATE SYSTEM USERS</h5>
				</div>
					<div class="Profile-right two">
					<div id="dd3" class="wrapper-dropdown-3" tabindex="1"><i class="fa fa-user"></i>
                        
						<ul >
							<%--<li><a href="#">Edit Profile </a></li>--%>
						<%--	<li><a href="#">Help</a></li>
							<li><a href="#">Activity log</a></li>--%>
							<li><a href="default.aspx">Log Out</a></li>
                            
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

<style>
        .Chklabel {
            display: block;
            padding-left: 15px;
            text-indent: -15px;
        }
        .chkList {
            width: 13px;
            height: 13px;
            padding: 0;
            margin:0;
            vertical-align: bottom;
            position: relative;
            top: -1px;
            *overflow: hidden;
        }
</style>    

					<div class="login-grids" style="margin-top:auto;margin-bottom:auto">
					 
								<div class="login login-div">
									<%--<h3 class= "two">CREATE SYSTEM USERS</h3>--%>
                                     <br />
                                    <br />
									<div class="login-div login-right">
									 <form id="form1" runat="server">



									 <h3>Create account </h3>
										<input type="text" placeholder="User ID" required="" id="userid" runat="server">
										<input type="text" placeholder="User name" required="" id="username" runat="server">
                                       <input type="password" placeholder="Password" required="" id="pwd" runat="server">
											<input type="password" placeholder="Confirm Password" required="" id="pwdconfirm" runat="server">
                                  <table>
                                             <tr>
                                                  <td>  <h3>Access Level</h3> </td>
                                                   <td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                 <td>
                                                        <label class="Chklabel"><input class="chkList" type="checkbox" id="chkAdmin" runat="server" /> Admin</label>
                                                 </td>
                                                 <td>  &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                 <td>
                                                      <label class="Chklabel"><input class="chkList" type="checkbox" id="chkSales" runat="server"/> Sales</label>
                                                 </td>
                                             </tr>
                                              <tr>
                                                  <td>  <h3></h3> </td>
                                                    <td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                 <td>
                                                      <label class="Chklabel"><input class="chkList" type="checkbox" id="chkRestock" runat="server" /> Restock</label>
                                                 </td>
                                                   <td>  &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                                 <td>
                                                      <label class="Chklabel"><input class="chkList" type="checkbox" id="chkAudit" runat="server" /> Audit</label>
                                                 </td>
                                             </tr>
                                         </table>
                            				
                                         <asp:Button ID="cmdsave" runat="server" Text="SAVE"  OnClick="cmdsave_Click"  OnClientClick="validatePwd()" />
							

						   </form>

										
									</div>
									<div class="clearfix"></div>
                                    
                                 <p  style="text-align: center">WebStore - Online Shop Manager</p>								
								</div>
								
							</div>
					
				    <!--//login-->

			</div>
		
						
		</div>
				</div> 
</div>

<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

        <script>
         function validatePwd() {
   
             if (document.getElementById("pwdconfirm").value != document.getElementById("pwd").value) {
                 alert("Password not the same");
                 document.getElementById("pwdconfirm").value = "";
                 return;
             } 
        }
    </script>

      
</body>
</html>
