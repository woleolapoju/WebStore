<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bankandexpense.aspx.cs" Inherits="bankandexpense" %>

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
<body class="body-back" style="margin:0px;width:100%;height:100%"> <%--onload="loadLB()"--%>
   
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
		<div class="phone-box wrap push" id="home">
		
			   <!--/sign up-->
   <div class="sign-section" id="sign">
				<div class="menu-notify1">
				<div class="profile-left">
					<a href="#menu" class="menu-link"><i class="fa fa-list-ul"></i></a>
				</div>
				<div class="Profile-mid">
					<h5 class="pro-link">Bank/Expense Transactions</h5>
				</div>
					<div class="Profile-right two">
					<div id="dd3" class="wrapper-dropdown-3" tabindex="1"><i class="fa fa-user"></i>

						<ul>
                            <li><a href="default.aspx">Log Out</a></li>
						</ul>
						
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
                                    

									<div class="login-div login-right">
									 <form id="form1" runat="server">
<table>
    <tr>
        <td><h3>Cash at hand </h3></td>
         <td> <h2 style="color:red;">=N=<asp:Label ID="lblCashAtHand" runat="server"  Text="0.0"></asp:Label></h2></td>
    </tr>
   
</table>
 <br />

<%--Style to enlarge radio button--%>
<style>

     input[type=radio] {
         margin:0px;
    border: 0px;
    width: 100%;
    height: 2em;
}


</style>

<div  style="display:flex;padding:0px">
  Bank:<input type="radio" name="status" value="BankTrans" checked="checked" onclick="openBank()">
  Expenditure:<input type="radio" name="status" value="Expenditure" onclick="openExpense()">    


</div>
                                                              
                                       
<br />
<h3 style="color:red;" id="lblbank">BANK TRANSACTION</h3>  
<div id="divBank" style="border-bottom-style:solid;border-top-style:solid;" runat="server">  <%--style="display:none"--%>
    <table>
      
   
          
          <tr>
               <td> <label  style="margin-top:30px">Send to Bank:</label></td>
                        <td>
                            <div style="display:none">
                        <asp:TextBox ID="txtcashathand" runat="server" ></asp:TextBox>  
                        </div>
                         <asp:TextBox ID="txtamttobank" TextMode="Number"  step="0.01"  placeholder="cash to bank" autocomplete="off" style="background-color:lightgray;color:black;font-size:medium; padding-bottom:10px;padding-top:10px;width:160px;margin-top:20px;" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" runat="server" ></asp:TextBox>   <%--TextMode="Phone" --%>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>

                            
                        <asp:Button ID="cmdSaveToBank" runat="server" style="font-size:medium;margin-top:20px;" OnClick="cmdSaveToBank_Click"  OnClientClick="if (verifyamttobank()==false) { return false; }" Text="Save"  ToolTip="Send cash to bank"  />
             </td>
         </tr>
    </table>
   <br />

		
</div>
		
   
<h3 style="color:red; display:none " id="lblexpense">EXPENDITURE</h3>                                 
<div id="divExpense" style="border-bottom-style:solid;border-top-style:solid;display:none" runat="server">  <%--style="display:none"--%>
    <table style="width:auto">
      
        <tr>
             <td> <label  style="margin-top:30px">Description:</label></td>
       <td colspan="3">
               <asp:TextBox ID="txtDetails"   placeholder="Expense details " autocomplete="off" style="background-color:lightgray;color:black;font-size:medium; padding-bottom:10px;padding-top:10px;" runat="server" ></asp:TextBox> 
             </td>
   
        </tr>
          
          <tr>
               <td> <label  style="margin-top:30px">Amount:</label></td>
                        <td >
                            <asp:TextBox ID="txtAmtExpense" TextMode="Number" step="0.01" placeholder="amount" autocomplete="off" style="background-color:lightgray;color:black;font-size:medium; padding-bottom:10px;padding-top:10px;width:160px;margin-top:20px;" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" runat="server" ></asp:TextBox>   <%--TextMode="Phone" --%>
                        </td>
              <td> &nbsp; &nbsp; &nbsp;</td>
                       <td>    <asp:Button ID="cmdSaveExpense" runat="server" style="font-size:medium;margin-top:20px;" OnClick="cmdSaveExpense_Click"  OnClientClick="if (verifyamtexpense()==false) { return false; }" Text="Save"  ToolTip="Expended cash"  /></td>
                
         </tr>
      
    </table>
   <br />

		
</div>
	
 <script>
      function openExpense()
      {
          document.getElementById("divBank").style.display = "none";
          document.getElementById("lblbank").style.display = "none";
          document.getElementById("divExpense").style.display = "block";
          document.getElementById("lblexpense").style.display = "block";
       
          

      }
      function openBank()
      {
          document.getElementById("divBank").style.display = "block";
          document.getElementById("lblbank").style.display = "block";
          document.getElementById("divExpense").style.display = "none";
          document.getElementById("lblexpense").style.display = "none";

      }
  </script>					

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
            function verifyamttobank()
            {

                //alert(document.getElementById("txtamttobank").value.replace(/,/g, ''));

                //alert(document.getElementById("txtcashathand").value.replace(/,/g, ''));


                if (document.getElementById("txtamttobank").value == "") {
                    alert("Pls. enter amount sent to bank");
                    return false;
                }

          
                if (parseFloat(document.getElementById("txtamttobank").value.replace(/,/g, '')) > parseFloat(document.getElementById("txtcashathand").value.replace(/,/g, ''))) {
                    alert("Amount sent greater than available Cash balance");
                    return false;
                }
              
                return true;

            }


            function verifyamtexpense() {

    
                if (document.getElementById("txtAmtExpense").value == "") {
                    alert("Pls. enter amount expended");
                    return false;
                }

                if (document.getElementById("txtDetails").value == "") {
                    alert("Pls. enter expenditure details");
                    return false;
                }

 
                if (parseFloat(document.getElementById("txtAmtExpense").value.replace(/,/g, '')) > parseFloat(document.getElementById("txtcashathand").value.replace(/,/g, ''))) {
                    //alert("Amount sent greater than available Cash balance");

                    if (confirm("Amount expended greater than available Cash balance!...continue?")) {
                        return true;
                    } else {
                        return false;
                    }
       
                   
                }

                return true;

            }


            
    </script>

      
</body>
</html>