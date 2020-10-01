<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard_Old.aspx.cs" Inherits="dashboard" %>

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
     <style>
        .login-div {
            width: 400px;
            margin-left:auto;
            margin-right:auto;
        }



    </style>
    
    </head>
<body class="body-back" style="margin:0px;width:100%;height:100%" onload="loaddefaults()">
   
     <form id="form1" runat="server">

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
									<li><a  href="bankandexpense.aspx">Bank/Expense</a></li>
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

        	<div class="menu-notify1">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">DASHBOARD</h5>
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
        <div style="float: left; width: 50%;">1

		<div class="phone-box wrap push" id="home">
		
			   <!--/sign up-->
   <div class="sign-section" id="sign">
			
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
									



		                    <h3 class="modal-title" >Financial summary</h3>
                                  <h6>Cash at hand: <label id="lblcash" runat="server" style="color:red;font-size:x-large">0.0 </label></h6>
                                         <table>
                                             
                                             <tr>
                                                <%-- <td>
                                                     Start Date:
                                                 </td>--%>
                                                 <td>
                                                 <%--   <asp:TextBox ID="txtStartdate" style="width:270px;"  TextMode="Date"  runat="server"></asp:TextBox>--%>
                                                      Start Date:<asp:TextBox ID="txtstart" style="width:140px; padding:2px;margin:2px" runat="server"></asp:TextBox>
                                     
                                                 </td>
                                                 <td>
                                                      End Date:<asp:TextBox ID="txtEnddate" style="width:140px;padding:2px;margin:2px"   runat="server"></asp:TextBox>
                                                 </td>
                                                 <td>
                                                      <asp:Button ID="cmdload" runat="server" Text="LOAD" style="padding:5px" OnClick="cmdload_Click" />
                                                 </td>
                                             </tr>
                                            
                                         </table>
<div class="modal-body" style="background-color:#E3EAEB;padding:2px;" >
          <%--<h4>Value of Sales: <label id="lblvalueofsales"  runat="server" style="color:red;font-size:larger">0.0 </label></h4>--%>
         

            <table>

                 <tr>

                      <td style="text-align:left">
                       <h6>Value of Sales:</h6>
                    </td>
                    <td>
                        <asp:TextBox ID="txtvalueofsales"   placeholder="0.0"   autocomplete="off" style=" font-weight:900;color:red; font-size:medium;padding:5px ;width:170px;margin-top:1px" runat="server" ></asp:TextBox>

                    </td>
                </tr>

                  <tr>

                      <td style="text-align:left">
                       <h6>Cash:</h6>
                    </td>
                    <td >
                        <asp:TextBox ID="txttodaycash"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:170px;margin-top:1px" runat="server" ></asp:TextBox>

                    </td>
                </tr>
                 <tr>

                      <td style="text-align:left">
                       <h6>POS:</h6>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPossummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:170px;margin-top:1px" runat="server" ></asp:TextBox>

                    </td>
                </tr>
                 <tr>

                     <td style="text-align:left">
                       <h6>Transfer:</h6>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTransfersummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:170px;margin-top:1px" runat="server" ></asp:TextBox>

                    </td>
                </tr>
                 <tr>

                     <td style="text-align:left">
                       <h6>Credit:</h6>
                    </td>
                    <td>
                       <asp:TextBox ID="txtCreditsummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:170px;margin-top:1px" runat="server" ></asp:TextBox>

                    </td>
                </tr>

                 <tr>

                      <td style="text-align:left">
                       <h6>Sent to Bank:</h6>
                    </td>
                    <td>
                        <asp:TextBox ID="txttobanksummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:170px;margin-top:1px" runat="server" ></asp:TextBox>

                    </td>
                </tr>
                 <tr>

                    <td style="text-align:left">
                       <h6>Expenditure:</h6>
                    </td>
                    <td>
                        <asp:TextBox ID="txtexpensessummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:170px;margin-top:1px" runat="server" ></asp:TextBox>

                    </td>
                </tr>
            </table>
      
        </div>
                            				
                                        
							

						  

										
									</div>
									<div class="clearfix"></div>
                                    
                                   <p  style="text-align: center">WebStore - Online Shop Manager</p>							
								</div>
								
							</div>
					
				    <!--//login-->

			</div>
	
						
		</div>

            </div>

        <div style="float: right; width: 50%;">2
             <div id="divProductDetails" style="border-bottom-style:solid;border-top-style:solid;" runat="server">  <%--style="display:none"--%>
                   <h4>Item(s) Sold</h4>
                   <asp:GridView ID="gvCart" CssClass="table" runat="server" AutoGenerateColumns="true" CellPadding="1" ForeColor="#333333" GridLines="None" Font-Size="Small">
        <AlternatingRowStyle BackColor="White"  />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#E3EAEB" />
       
    </asp:GridView>

                 </div>
        </div>
<br style="clear: both;" />
<div style="float: left; width: 50%;">3</div>
<div style="float: right; width: 50%;">4</div>
<br style="clear: both;" />

				</div> 
</div>

<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

        <script>
            function loaddefaults() {

             //   document.getElementById("txtStartdate").defaultValue = document.getElementById("txtfakestart1").value.toString();
             //document.getElementById("txtEnddate").defaultValue = document.getElementById("txtfakeEnddate").value.toString();
         
                 //"2014-02-09";
                 return;
        }
    </script>

    </form>   
</body>
</html>