<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menuTemplate.aspx.cs" Inherits="bankandexpense" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
          <title>WebStore - Online Shop Manager</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Online Shop Manager,Megahit Systems, Stacklogic System, software company, Abuja, WebStore" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<meta charset="UTF-8"/>
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
		<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'/>
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'/>
  
 
        
          </head>
<body class="body-back" style="margin:0px;width:100%;height:100%"> <%--onload="loadLB()"--%>

<form id="form1" runat="server">
   
    <div class="body-back" style="margin:0px">
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
									<li><a  href="#latest">Bank/Expense</a></li>
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


        <div class="phone-box wrap push" id="home" style="margin-right:0px">
			<div class="menu-notify" style="margin-right:0px">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">Bank/Expense Transaction</h5>
				</div>
				
					<div class="clearfixfix"></div>
				</div>

                <style>
        .login-div {
            width: 400px;
            margin-left:auto;
            margin-right:auto;
        }
 </style>
           
     
        
        </div>
        </div>
        </div>
    


    </form>
</body>
</html>
