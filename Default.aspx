<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>WebStore - Online Shop Manager</title>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Online Shop Manager,Megahit Systems, Stacklogic System, software company, Abuja,WebStore" />
		<script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <meta charset="UTF-8"/>
    <link rel="shortcut icon" href="/images/appicon.ico"/>

     <!--font-awsome-css-->
           <link rel="stylesheet" href="css/font-awesome.min.css"/> 
		<!--bootstrap-->
			<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
    <style>
        .login-div {
            width: 400px;
            margin-left:auto;
            margin-right:auto;
        }
 </style>



</head>
<body class="body-back" onload="checkCookie()">
    <form id="form1" runat="server">
    <div class="login-grids" style="margin-top:auto;margin-bottom:auto">
						 
		<div class="login login-div" >
                       <img class="img-circle border-effect" src="images/shopLogo.png" alt=" ">
            <h2 style="text-align: center; font-weight:700" ><asp:Label runat="server" ID="lblowner">NIFTOM BOUTIQUE</asp:Label></h2>
 
            <br />
            <br />
			<div class="login-div login-right" >
				<h3>Signin with your account </h3>
					<input id="userID" type="text" placeholder="UserID" required="" runat="server"/>
				<input id="userPwd" type="password" placeholder="Password" required="" runat="server"/>
					<%--<h4><a href="#">Forgot password</a> / <a href="#">Create new password</a></h4>--%>
                <br />
                <br />
                <br />
					<div class="single-bottom">
						<input type="checkbox" id="brand" checked="checked" value="" style="font-size:x-large"/>
						<label for="brand"><span></span>Remember Me.</label>
					</div>
					<%--<input type="submit" value="SIGNIN"/>--%>
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click"  OnClientClick="rememberUser()" Text="Log In" />
			</div>
			<div class="clearfix"></div>	
            <p  style="text-align: center">WebStore - Online Shop Manager</p>							
		</div>
								
	</div>
    </form>

       <%--Cookie functions  for remember--%>
    <script>

        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }

        function checkCookie() {
            var useruserId = getCookie("ws_userId");

            if (useruserId != "") {
                document.getElementById("userID").value = useruserId;
                document.getElementById("band").checked = true;
            }

        }

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
    </script>

       <script>
         function rememberUser() {

             var checkBox = document.getElementById("brand");
          
             if (checkBox.checked == true) {
                 setCookie("ws_userId", document.getElementById("userID").value, 365);
             } else {
                 setCookie("ws_userId", "", 365);
             }
        }
    </script>
</body>
</html>
