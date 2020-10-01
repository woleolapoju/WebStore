<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sales.aspx.cs" Inherits="sales" ViewStateMode="Enabled" EnableViewState="True" %>

<!DOCTYPE html>
<html lang="en">
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
		<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
  
 
		
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
		<div class="phone-box wrap push" id="home" style="margin-right:0px">
			<div class="menu-notify" style="margin-right:0px">
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
									<span class="simpleCart_total1">
									   
										<asp:Label ID="lblbasket" runat="server" Text="0 (0)"></asp:Label>
									</span><%-- (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)--%>
								   
									 </div>
									<i class="fa fa-shopping-cart"></i>

								</h3>
								</a>
						   
								<p><a href="javascript:;"  class="simpleCart_empty"></a></p>
								<p onclick="clearBasket()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="sales.aspx" class="simpleCart_empty" ><img src="images/empty.png" alt="" ></a></p>
								<div class="clearfix"> </div>

								</div>

							
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

			<div class="login-grids" style="margin-top:auto;margin-bottom:auto">
					 
								<div class="login login-div">
									<%--<h3 class= "two">CREATE SYSTEM USERS</h3>--%>
									<%-- <br />
									<br />--%>

									<div class="login-div login-right">
								
	
										 <table style="margin:auto">
											 <tr>
												 <td colspan="4">
													 <a data-target="#myModalforfinancialsummary" data-toggle="modal" class="MainNavText" id="MainNavHelp" 
														href="#myModalforfinancialsummary">Show Todays' Financial Summarry</a>
												 </td>
											 </tr>
											 <tr>
												 
												 <td>
												 
													
												   <%--  <input type="text"  placeholder="product code" text="tel"  autocomplete="off" required="" id="txtproductcode" runat="server">--%>
													   <asp:TextBox ID="txtproductcode"  placeholder="product code" autocomplete="off" style="background-color:lightgray;color:black;font-size:medium; padding-bottom:10px;padding-top:10px;   width:200px;margin-top:20px;" runat="server" ></asp:TextBox>   <%--TextMode="Phone" --%>
												 </td>
												 <td>
													 &nbsp;
												 </td>
												 <td>
													<asp:Button ID="cmdFind" runat="server" style="font-size:medium;margin-top:20px;"  OnClientClick="fetchItem(); return false;" Text="Find"  ToolTip="Find Product"  />
												 </td>

											 </tr>
											 
										 </table>
										 <br />
										 <div id="divProductDetails" style="border-bottom-style:solid;border-top-style:solid; display:none" runat="server">  <%--style="display:none"--%>
										 <br />
										  <h3 >
											  <%--<asp:Label ID="lblproductname" runat="server" Text="product description"></asp:Label>--%>
											  <label ID="lblproductname" style="font-size:small" runat="server">product description</label>

										  </h3>
										<table>
											<tr>
												<td>
													Qty:
												</td>
												<td>
												 <%--   <input type="number"  autocomplete="off" min="1" value="1"  id="txtqty" style="width:70px" runat="server">--%>
													<asp:TextBox ID="txtqty" style="width:70px;" min="1"  TextMode="Number" runat="server"></asp:TextBox>
										  
												</td>
												<td>
												  <h3><asp:Label ID="lblPriceRange" Style="margin-top:0px;color:red;font-size:small" runat="server" Text="2,000 - 5,000"></asp:Label></h3>
												  <h4 style="margin-top:0px">Available: <asp:Label ID="lblQtyInstore" Style="color:red;font-size:small;font-weight:800" runat="server" Text="0"></asp:Label></h4>
												</td>
			
											</tr>
										   <tr>
											   <td>&nbsp;</td>
										   </tr>
											<tr>

												<td style="padding-top:15px">
													Sell Price:
												</td>
												<td >

												  <asp:TextBox ID="txtSellPrice"  TextMode="Number" step="0.01" Text="0"  autocomplete="off" style="width:100px; padding-top:10px;padding-bottom:10px; background-color:lightgray;" runat="server" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></asp:TextBox>   <%--onkeypress="return isNumber(event)"--%>

													 </td>
												<td>
														<button type="button" id="btnAdd2Basket" class="btn btn-danger"  style=" border-radius:0px; font-size:medium;padding-top:8px;padding-bottom:8px; margin-left:5px; width:90px; background-color:crimson;color:white" onclick="addtobasket()">Add</button>
												 </td>
											</tr>
											<tr>
											   <td>
													&nbsp;
											   </td>
											</tr>
										</table>
</div>
								</div>

									<div class="clearfix"></div>

									<br />
									
									<div id="divGrid" runat="server">
										  <h4>Shopping Bag</h4>
	<asp:GridView ID="gvCart" CssClass="table" runat="server" AutoGenerateColumns="false" CellPadding="1" ForeColor="#333333" GridLines="None">
		<AlternatingRowStyle BackColor="White"  />
		<EditRowStyle BackColor="#7C6F57" />
		<FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
		<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
		<RowStyle BackColor="#E3EAEB" />
		<Columns>
			<asp:TemplateField HeaderText="Item Description" ItemStyle-Width="220px" ItemStyle-CssClass="Product">
				<ItemTemplate>
					<%# Eval("UserId") %>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Qty" ItemStyle-Width="30px" ItemStyle-CssClass="qty">
				<ItemTemplate>
					<%# Eval("username")%>
				</ItemTemplate>
			</asp:TemplateField>
			 <asp:TemplateField HeaderText="Rate" ItemStyle-Width="80px" ItemStyle-CssClass="price" HeaderStyle-HorizontalAlign="Right"  ItemStyle-HorizontalAlign="Right">
				<ItemTemplate>
					<%# Eval("UserPassword")%>
				</ItemTemplate>
			</asp:TemplateField>
			<asp:TemplateField HeaderText="Action">
				<ItemTemplate>
					<a href="#" id='<%# Eval("UserId") %>' class="deletable" onclick="return RemoveRow(this)">Delete</a>
					
				</ItemTemplate>
			</asp:TemplateField>
		</Columns>
	</asp:GridView>
<style>
	input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button { 
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	margin: 0; 
}
</style>

	<div class="total">
		<div class="total_left">&nbsp;&nbsp;&nbsp;Cart total : =N=<label style="font-size:medium;color:red" id="lblTotal">0.00</label> </div>
		<%--<div class="total_right"  style="color:red">=N= </div>--%>
		<%--<div class="clearfix"> </div>--%>
	</div >
		<div id="checkout" style="border:medium;border-color:blue" >
		   <%-- <hr style="color:red" />--%>

			<div class="clearfix"><h4 style="color:#1C5E55;font-weight:700">PAYMENT</h4> </div>
		<div class="total">
			<div class="total_left">CASH: </div>
			<div class="total_right"><asp:TextBox ID="txtCash" autocomplete="off" TextMode="Number" step="0.01" Text="0"  AutoCompleteType="None" style="background-color:lightgray;color:black; padding:5px ;width:100px" runat="server" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></asp:TextBox> </div>
			<div class="clearfix"> </div>
		</div>
		<div class="total">
			<div class="total_left">POS: </div>
			 <div class="total_right"><asp:TextBox ID="txtPOS" autocomplete="off"  TextMode="Number" step="0.01" Text="0"  AutoCompleteType="None" style="background-color:lightgray;color:black; padding:5px ;width:100px" runat="server" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></asp:TextBox> </div>
			<div class="clearfix"> </div>
		</div>
		 <div class="total">
			 <div class="total_left">TRANSFER: </div>
			 <div class="total_right"><asp:TextBox ID="txtTransfer" autocomplete="off" TextMode="Number" step="0.01"  Text="0"  AutoCompleteType="None" style="background-color:lightgray;color:black; padding:5px ;width:100px" runat="server" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" ></asp:TextBox> </div>
			<div class="clearfix"> </div>
		</div>
		 <div class="total">
			 <div class="total_left">CREDIT: </div>
			 <div class="total_right"><asp:TextBox ID="txtCredit"  autocomplete="off" TextMode="Number" step="0.01" Text="0"  AutoCompleteType="None" style="background-color:lightgray;color:black; padding:5px ;width:100px" runat="server" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></asp:TextBox> </div>
		   <%-- <div class="clearfix"> </div>--%>
		 </div>
	 
		</div>
	<div class="login_buttons">
		<div class="check_button">
			<asp:Button ID="cmdChkOut" data-toggle="modal" runat="server" style="font-size:medium;width:100px;padding-top:10px;padding-bottom:10px;color:white; background-color:#1C5E55;margin-right:auto;margin-left:auto" data-target="#myModal" Text="Check out"  OnClientClick="javascript: return false" />
		</div>
	</div>

	</div>
			<p  style="text-align: center">WebStore - Online Shop Manager</p>								
				</div>
					 <div style="display:none" >
							<asp:TextBox ID="txtAbsMin"  Text="0" style="width:100px" runat="server"></asp:TextBox>
							<asp:TextBox ID="txtMin"   Text="0" style="width:100px" runat="server"></asp:TextBox>
							<asp:TextBox ID="txtMax"  Text="0" style="width:100px" runat="server"></asp:TextBox>
							<asp:TextBox ID="totalPrice" Text="0" style="width:100px" runat="server"></asp:TextBox>
							<asp:TextBox ID="totalQty"  Text="0" style="width:100px" runat="server"></asp:TextBox>
							<asp:TextBox ID="txtunitinstore"  Text="0" style="width:100px" runat="server"></asp:TextBox>
						 <asp:GridView id="gvList" runat="server"
								  AutoGenerateColumns="true">
						  </asp:GridView>
							<asp:GridView id="gvCustomer" runat="server"
								  AutoGenerateColumns="true">
						 </asp:GridView>
						
					</div>


			  

 <script type="text/javascript">
	   

		function SetValue(row, index, name, textbox) {
			//Reference the Cell and set the value.
			row.cells[index].innerHTML = textbox; //.value;

			//Create and add a Hidden Field to send value to server. 
			var input = document.createElement("input");
			input.type = "hidden";
			input.name = name;
			input.value = textbox; //.value;
			row.cells[index].appendChild(input);

			//Clear the TextBox.
			textbox=""; //.value = "";
		}
	</script>

			
</div> 
</div>
</div>
</div>

		  <!-- Modal content-->
	<style>
 .center-screen {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  min-height: 100vh;
}
	</style>

	 <div class="modal fade" id="myModal" role="dialog" style="width:auto;height:auto">
	<div class="modal-dialog center-screen" >

	  <div class="modal-content"  style="width:400px;background-color:#1C5E55" >
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" style="color:white">&times;</button>
		  <h4 class="modal-title" style="color:white">Confirm Sales</h4>
		</div>
		<div class="modal-body" style="background-color:#E3EAEB" >
		  <h4>Qty: <label id="lblqtyOfSale"> </label></h4>
		  <h2>Value: <label id="lblvalueOfSale"> </label></h2>

			<table>
				<tr>
					<td>
					  <h6>Customer Infor:</h6>
					</td>
					<td>
						<asp:TextBox ID="txtCustomerPhone" placeholder="Phone" onfocusout="chkPhoneNo()"  TextMode="number" autocomplete="off" style="background-color:lightgray;color:black; padding:5px ;width:110px" runat="server" ></asp:TextBox>
					</td>
					<td>
						&nbsp;
					</td>
					<td>
						<asp:TextBox ID="txtCustomerName"  placeholder="Customer name"   autocomplete="off" style="background-color:lightgray;color:black; padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>
			</table>
	  
		</div>
		<div class="modal-footer" style="background-color:#E3EAEB">
	  
		  <asp:Button ID="cmdSubmit" runat="server" style="float:left ; font-size:medium;width:150px;padding-top:10px;padding-bottom:10px;color:white; background-color:crimson;" Text="Save" OnClick="cmdSubmit_Click" OnClientClick="javascript: return validateEntry()" />

		  <asp:Button ID="cmdClose" runat="server" align="left" style="font-size:medium;width:70px;padding-top:10px;padding-bottom:10px;color:white; background-color:#1C5E55;" Text="Close"  data-dismiss="modal" OnClientClick="javascript: return false" />

		</div>
	  </div>
	  
	</div>
  </div>




	<script>
		function addtobasket()
		{

			if (parseFloat(document.getElementById("txtqty").value) > parseFloat(document.getElementById("txtunitinstore").value))
			{
				alert("Sales Quantity more than available");
				document.getElementById("txtqty").focus();
				document.getElementById("txtqty").select();
				return;
			}
			if (parseFloat(document.getElementById("txtSellPrice").value.replace(/,/g, '')) < parseFloat(document.getElementById("txtAbsMin").value.replace(/,/g, ''))) {
				alert("Sorry!! can't sell at that price");
				document.getElementById("txtSellPrice").focus();
				document.getElementById("txtSellPrice").select();
				return;
			}

			if (document.getElementById("lblproductname").innerText == "") {
				alert("Please, select an item");
				document.getElementById("txtproductcode").focus();
				document.getElementById("txtproductcode").select();
				return;
			}

		   
			  //Reference the GridView.
			var gridView = document.getElementById("<%=gvCart.ClientID %>");

			//Reference the TBODY tag.
			var tbody = gridView.getElementsByTagName("tbody")[0];

			//Reference the first row.
			var row = tbody.getElementsByTagName("tr")[1];

			//Check if row is dummy, if yes then remove.
			if (row.getElementsByTagName("td")[0].innerHTML.replace(/\s/g, '') == "") {
				tbody.removeChild(row);
			}

			//Clone the reference first row.
			row = row.cloneNode(true);
			
			SetValue(row, 0, "product", "(" + document.getElementById("txtproductcode").value + ")- " + document.getElementById("lblproductname").innerText);
			SetValue(row, 1, "qty", document.getElementById("txtqty").value);
			//SetValue(row, 2, "price", parseFloat(document.getElementById("txtSellPrice").value.replace(/,/g, '')).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,'));
			SetValue(row, 2, "price", parseFloat(document.getElementById("txtSellPrice").value.replace(/,/g, '')));



			//Add the row to the GridView.
			tbody.appendChild(row);


			document.getElementById("lblproductname").innerText = "";
			document.getElementById("lblPriceRange").innerText = "";
			document.getElementById("lblQtyInstore").innerText = "";
	
			document.getElementById("txtqty").removeAttribute("max");
			document.getElementById("txtqty").value = "1";
			document.getElementById("txtSellPrice").value = "0";

		 
			document.getElementById("txtproductcode").focus();
			document.getElementById("txtproductcode").select();

			document.getElementById("divGrid").style.removeProperty("Display");

			calitemvalues();

  
		}
		function calitemvalues()
		{
			 var sumPrice = 0;
			var sumQty = 0;
		   var gvDrv = document.getElementById("<%=gvCart.ClientID %>");
			document.getElementById("lblbasket").innerText = gvDrv.rows.length-1;
			for (i = 1; i < gvDrv.rows.length; i++) {
				var cell = gvDrv.rows[i].cells;
				var HTML = cell[1].innerHTML;
				sumPrice = sumPrice + (parseFloat(cell[1].innerHTML.replace(/,/g, '')) * parseFloat(cell[2].innerHTML.replace(/,/g, '')))
				sumQty = sumQty + parseFloat(cell[1].innerHTML);
			}

			document.getElementById("lblbasket").innerText = sumPrice;
			document.getElementById("totalQty").value = sumQty;
			document.getElementById("totalPrice").value = sumPrice;
			document.getElementById("lblbasket").innerText = parseFloat(sumPrice).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " (" + sumQty + ")";
			document.getElementById("lblTotal").innerText = parseFloat(sumPrice).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');

			document.getElementById("txtCash").value = parseFloat(sumPrice).toFixed(2); //.replace(/\d(?=(\d{3})+\.)/g, '$&,');

			document.getElementById("lblqtyOfSale").innerText = sumQty;
			document.getElementById("lblvalueOfSale").innerText = parseFloat(sumPrice).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
			

		}
	   function SetValue(row, index, name, textbox) {
			//Reference the Cell and set the value.
			row.cells[index].innerHTML = textbox; //.value;

			//Create and add a Hidden Field to send value to server. 
			var input = document.createElement("input");
			input.type = "hidden";
			input.name = name;
			input.value = textbox; //.value;
			row.cells[index].appendChild(input);

			//Clear the TextBox.
			textbox.value = "";
		}
	

	   function chkPhoneNo()
	   {
		  
		   var myGrid = document.getElementById("<%= gvCustomer.ClientID  %>");
			var oRows = myGrid.rows;
			var k;
					for (k = 1; k < oRows.length; k++)
					{
						var currentRow = myGrid.rows[k];
						if (currentRow.cells[0].innerHTML != document.getElementById("txtCustomerPhone").value) {
						   
						}
						else
						{
							document.getElementById("txtCustomerName").value = currentRow.cells[1].innerHTML;
							return;
						}
					}
	   }


		function fetchItem()
				{
				var myGrid = document.getElementById("<%= gvList.ClientID  %>");
				var oRows = myGrid.rows;
				var k;
				//alert(oRows.length);
					for (k = 1; k < oRows.length; k++)
					{
						var currentRow = myGrid.rows[k];
						if (currentRow.cells[0].innerHTML.toUpperCase() != document.getElementById("txtproductcode").value.toUpperCase()) {
						   
						}
						else
						{
					   
							//ProductCode0, ProductName1, Category2, CostPrice3, Pack4, AbsMinSellPrice5, MinSellprice6, MaxSellPrice7, UnitInStore8

							document.getElementById("txtAbsMin").value = currentRow.cells[5].innerHTML;
							document.getElementById("lblproductname").innerHTML = "("+ currentRow.cells[2].innerHTML + ") " + currentRow.cells[1].innerHTML;
							document.getElementById("lblPriceRange").innerText = parseFloat(currentRow.cells[6].innerHTML).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + " - " + parseFloat(currentRow.cells[7].innerHTML).toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,');
							//txtSellPrice.Text =Convert.ToDouble(drSQL["MinSellprice"]).ToString("n2");
							document.getElementById("txtSellPrice").value = parseFloat(currentRow.cells[6].innerHTML).toFixed(2);
							document.getElementById("txtAbsMin").value = currentRow.cells[5].innerHTML;
							document.getElementById("txtMin").value = currentRow.cells[6].innerHTML;
							document.getElementById("txtMax").value = currentRow.cells[7].innerHTML;
							document.getElementById("lblQtyInstore").innerText =currentRow.cells[8].innerHTML;


							document.getElementById("txtunitinstore").value = currentRow.cells[8].innerHTML;

							document.getElementById("txtqty").max= currentRow.cells[8].innerHTML;
							document.getElementById("txtqty").value = "1";

							//addtobasket();
						
							document.getElementById("divProductDetails").style.removeProperty("display");
							document.getElementById("divProductDetails").style.display = "block";
							//document.getElementById("txtproductcode").value = "";

							document.getElementById("txtSellPrice").focus();
							document.getElementById("txtSellPrice").select();
							return;
						}
					}

					alert("Item not found, or no longer available");

				 }


		$('#txtSellPrice').keypress(function (event) {
			var keycode = (event.keyCode ? event.keyCode : event.which);
			if (keycode == '13') {
				//alert('You pressed a "enter" key in textbox');
				document.getElementById("btnAdd2Basket").click();
			}
			event.stopPropagation();
		});


		function clearBasket()
		{
			document.getElementById("lblproductname").innerText = "";
			document.getElementById("lblPriceRange").innerText = "";
			document.getElementById("lblQtyInstore").innerText = "";
			document.getElementById("txtSellPrice").value = "0";
			document.getElementById("totalQty").value = "0";
			document.getElementById("totalPrice").value = "0";
			document.getElementById("txtqty").removeAttribute("max");
			document.getElementById("txtqty").value = "1";
			document.getElementById("lblbasket").innerText = "0 (0)";
		}

	 
	</script>

	<script>


		function validateEntry()
		{
			//if (document.getElementById("divCustomerDetails").style.display != "none" && document.getElementById("txtCustomerDetails").value == "") {
			//    alert("Pls. enter customer information");
			//    return false
			//}


			var sum = 0;
			sum = sum + parseFloat(document.getElementById("txtCash").value.replace(/,/g, '')) + parseFloat(document.getElementById("txtPOS").value.replace(/,/g, '')) + parseFloat(document.getElementById("txtTransfer").value.replace(/,/g, '')) + parseFloat(document.getElementById("txtCredit").value.replace(/,/g, '')) ;
			if (sum != (parseFloat(document.getElementById("lblTotal").innerText.replace(/,/g, ''))))
			{
				alert("Payment Details not correct");
				return false;
			}

			if (document.getElementById("txtCustomerPhone").value == "" && ((parseFloat(document.getElementById("txtTransfer").value.replace(/,/g, ''))>0 || parseFloat(document.getElementById("txtCredit").value.replace(/,/g, ''))>0)))
			{
				alert("Please, enter customer details");
				return false;
			}

				//to prevent muliple submission
				var isSumitted = false;
				if (!isSumitted)
					{
				    $("#cmdSubmit").text("Submitting...Pls Wait");
				    $("#cmdSubmit").hide();
					$("#cmdClose").hide();
						isSumitted=true;
						return true;
					}
					else {
						return false;
					}
			

		}

		function isNumber(evt) {
			evt = (evt) ? evt : window.event;
			var charCode = (evt.which) ? evt.which : evt.keyCode;
			if (charCode > 31 && (charCode < 46 || charCode > 57)) {
				return false;
			}
			if (charCode == 47) {
				return false;
			}
			return true;
		}

		

	  
	  
		function RemoveRow(item) {
			var table = document.getElementById('gvCart'); //OR
		 <%--   var table = document.getElementById("<%= gvCart.ClientID %>");--%>
			table.deleteRow(item.parentNode.parentNode.rowIndex);

			calitemvalues();

			return false;
		}


	  
	</script>



	<script type="text/javascript">
	//$(window).one('load',function(){
	//    $('#myModalforfinancialsummary').modal('show');
	//});


	//$(document).one('ready', function () {
	//    $('#myModalforfinancialsummary').modal('show');
	//});

	//$(document).ready(function () {
	//    $('#myModalforfinancialsummary').modal('show');
	//});



</script>


<%--<div class="modal fade" id="myModalforfinancialsummary">--%>
	<div class="modal fade" id="myModalforfinancialsummary" role="dialog" style="width:auto;height:auto">
	<div class="modal-dialog center-screen" >

	  <div class="modal-content"  style="width:300px;background-color:#1C5E55" >
		<div class="modal-header">
		  <button type="button" class="close" data-dismiss="modal" style="color:white">&times;</button>
		  <h4 class="modal-title" style="color:white">Todays Financial summary</h4>
		</div>
		<div class="modal-body" style="background-color:#E3EAEB" >
		  <%--<h4>Value of Sales: <label id="lblvalueofsales"  runat="server" style="color:red;font-size:larger">0.0 </label></h4>--%>
		  <h6>Cash at hand: <label id="lblcash" runat="server" style="color:red;font-size:x-large">0.0 </label></h6>

			<table>

				 <tr>

					  <td style="text-align:left">
					   <h6>Value of Sales:</h6>
					</td>
					<td>
						<asp:TextBox ID="txtvalueofsales"   placeholder="0.0"   autocomplete="off" style=" font-weight:900;color:red; font-size:medium;padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>

				  <tr>

					  <td style="text-align:left">
					   <h6>Today's Cash:</h6>
					</td>
					<td >
						<asp:TextBox ID="txttodaycash"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>
				 <tr>

					  <td style="text-align:left">
					   <h6>POS:</h6>
					</td>
					<td>
						<asp:TextBox ID="txtPossummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>
				 <tr>

					 <td style="text-align:left">
					   <h6>Transfer:</h6>
					</td>
					<td>
						<asp:TextBox ID="txtTransfersummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>
				 <tr>

					 <td style="text-align:left">
					   <h6>Credit:</h6>
					</td>
					<td>
					   <asp:TextBox ID="txtCreditsummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>

				 <tr>

					  <td style="text-align:left">
					   <h6>Sent to Bank:</h6>
					</td>
					<td>
						<asp:TextBox ID="txttobanksummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>
				 <tr>

					<td style="text-align:left">
					   <h6>Expenditure:</h6>
					</td>
					<td>
						<asp:TextBox ID="txtexpensessummary"  ReadOnly="true" placeholder="0.0"   autocomplete="off" style=" font-weight:900;font-size:medium;padding:5px ;width:190px" runat="server" ></asp:TextBox>

					</td>
				</tr>
			</table>
	  
		</div>
		<div class="modal-footer" style="background-color:#E3EAEB">

		  <asp:Button ID="Button2" runat="server" align="left" style="font-size:medium;width:70px;padding-top:10px;padding-bottom:10px;color:white; background-color:#1C5E55;" Text="Close"  data-dismiss="modal" OnClientClick="javascript: return false" />

		</div>
	  </div>
	  
	</div>
  </div>

  <%--  MAGIC!!! to prevent resubmitting and repeat saving of data --%>
<script>
if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
</script>
  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
			 </form>
</body>
</html>
