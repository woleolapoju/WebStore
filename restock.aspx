<%@ Page Language="C#" AutoEventWireup="true" CodeFile="restock.aspx.cs" Inherits="Restock" %>

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
           <link rel="stylesheet" href="css/font-awesome.min.css"/> 
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
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
  
 
        
          </head>
<body class="body-back" style="margin:0px;width:100%;height:100%" onload="hidshowgridcolumn()"> <%--onload="loadLB()"--%>
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
					<h5 class="pro-link">Restock</h5>
				</div>
				</div>

                <style>
        .login-div {
            width: 700px;
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
                                                 <td>
                                                     <%--  <asp:TextBox ID="txtproductcode"  placeholder="product code"  TextMode="Phone" autocomplete="off" style="background-color:lightgray;color:black;font-size:medium; padding-bottom:10px;padding-top:10px;   width:200px;margin-top:20px;" runat="server" ></asp:TextBox>--%>
                                                     <asp:DropDownList ID="cboCategory" style="color:black;font-size:medium; padding-bottom:5px;padding-top:5px;width:200px;margin-top:20px;" OnSelectedIndexChanged="cboCategory_SelectedIndexChanged"  AutoPostBack="true" runat="server"></asp:DropDownList>
                                                 </td>
                                                 <td>
                                                     &nbsp;
                                                 </td>
                                                 <td>
                                                    <asp:Button ID="cmdFind" data-toggle="modal" data-target="#myModal" runat="server" style="font-size:medium;margin-top:20px;"  OnClientClick="javascript: return false" Text="New"  ToolTip="New Category"  />

                                                 </td>

                                             </tr>
                                             
                                         </table>
                                         <br />
                                         <div id="divProductDetails" style="border-bottom-style:solid;border-top-style:solid;" runat="server">  <%--style="display:none"--%>
                                          
                                              <asp:LinkButton ID="lbtnAdd" runat="server" onclick="lbtnAdd_Click" style="font-size:medium;color:red">AddNew</asp:LinkButton> 
 
 
                                            <asp:Panel ID="pnlAdd" runat="server" Visible="False"> 



                                                <table>
                                                    <tr>
                                                        <td>
                                                             Product Code: 
                                                        </td>
                                                        <td>
                                                             <asp:TextBox ID="tbProductCode" runat="server" style="width:100px;padding:5px;margin-bottom:2px"></asp:TextBox> 
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                             Product name: 
                                                        </td>
                                                        <td>
                                                             <asp:TextBox ID="tbProductName" runat="server" style="width:250px;padding:5px;margin-bottom:2px;margin-top:2px"></asp:TextBox>  ** pls avoid commas **
                                                        </td>
                                                    </tr>
                                                       
                                                    <tr>
                                                        <td>
                                                             Absolute SellPrice: 
                                                        </td>
                                                        <td>
                                                              <asp:TextBox ID="tbAbs" TextMode="Number" Text="0" style="width:90px;background-color:darkgray;color:white;padding:5px;margin-bottom:2px;margin-top:2px" runat="server"></asp:TextBox>  
                                                        </td>
                                                    </tr> 
                                                  
                                                    <tr>
                                                        <td>
                                                             Min. SellPrice: 
                                                        </td>
                                                        <td>
                                                             <asp:TextBox ID="tbMin" TextMode="Number" Text="0" style="width:90px;background-color:darkgray;color:white;padding:5px;margin-bottom:2px" runat="server"></asp:TextBox> 
                                                        </td>
                                                    </tr> 
                                                    <tr>
                                                        <td>
                                                              Max. SellPrice: 
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="tbMax" TextMode="Number" Text="0" style="width:90px;background-color:darkgray;color:white;padding:5px;margin-bottom:2px" runat="server"></asp:TextBox> 
                                                        </td>
                                                    </tr> 
                                                     <tr>
                                                        <td>
                                                             Qty:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="tbQty" TextMode="Number" Text="0" style="width:40px;background-color:darkgray;color:white;padding:5px;margin-bottom:2px" runat="server"></asp:TextBox> 
                                                        </td>
                                                    </tr> 
                                                </table>
                                               
                                                
                                                <br />
                                                <asp:LinkButton ID="lbtnSubmit" runat="server" style="color:red" onclick="lbtnSubmit_Click">Submit</asp:LinkButton> 
                                                <asp:LinkButton ID="lbtnCancel" runat="server" onclick="lbtnCancel_Click">Cancel</asp:LinkButton> 
                                            </asp:Panel>                            
                                      

                                              <asp:GridView ID="gvItems" CssClass="table" runat="server" AutoGenerateColumns="false" CellPadding="1" ForeColor="#333333" Font-Size="Small" HeaderStyle-Font-Bold="false" GridLines="None" PagerSettings-Position="Top"  PagerStyle-Font-Size="Large" PagerStyle-Font-Bold="true"  
                                                  onpageindexchanging="gvItems_PageIndexChanging"  
                                                onrowcancelingedit="gvItems_RowCancelingEdit"  
                                                onrowdatabound="gvItems_RowDataBound" onrowdeleting="gvItems_RowDeleting"  
                                                onrowediting="gvItems_RowEditing" onrowupdating="gvItems_RowUpdating"  
                                                onsorting="gvItems_Sorting"> 

                            <AlternatingRowStyle BackColor="White"  />
                            <%--<EditRowStyle BackColor="#7C6F57" />--%>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" /> 
                            <RowStyle BackColor="#E3EAEB" />
                               <Columns> 

<asp:CommandField ShowEditButton="True" ControlStyle-ForeColor="red" ControlStyle-Font-Underline="true" EditText="Add"/> 

        <asp:BoundField DataField="Productcode" HeaderText="Code" ReadOnly="True"  
            SortExpression="Productcode" /> 


        <asp:TemplateField HeaderText="Item Name" SortExpression="Productname"> 
          <%--  <EditItemTemplate> 
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Productname") %>'></asp:TextBox> 
            </EditItemTemplate> --%>

            <ItemTemplate> 
                <asp:Label ID="lblProductname" runat="server" Text='<%# Bind("Productname") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 

    <asp:TemplateField HeaderText="Qty" SortExpression="UnitInStore"> 
            <EditItemTemplate> 
                <asp:TextBox ID="txtnewStock" style="width:50px; padding:2px;margin:0px;color:white;background-color:darkgray" TextMode="Number" runat="server" Text=''></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="lblUnit" runat="server" Text='0'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 


<asp:TemplateField HeaderText="Bal." SortExpression="UnitInStore"> 
            <ItemTemplate> 
                <asp:Label ID="lblLevel" runat="server" Text='<%# Bind("UnitInStore") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 

        <asp:TemplateField HeaderText="Abs. Price" SortExpression="AbsMinSellPrice" > 
           <%-- <EditItemTemplate> 
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AbsMinSellPrice","{0:n}") %>'></asp:TextBox> 
            </EditItemTemplate> --%>
            <ItemTemplate > 
                <asp:Label ID="lblAbs" runat="server" Text='<%# Bind("AbsMinSellPrice","{0:n}") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
         <asp:TemplateField HeaderText="Min. Price" SortExpression="MinSellprice"> 
          <%--  <EditItemTemplate> 
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MinSellprice","{0:n}") %>'></asp:TextBox> 
            </EditItemTemplate> --%>
            <ItemTemplate> 
                <asp:Label ID="lblMin" runat="server" Text='<%# Bind("MinSellprice","{0:n}") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
         <asp:TemplateField HeaderText="Max. Price" SortExpression="MaxSellPrice"> 
           <%-- <EditItemTemplate> 
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MaxSellPrice","{0:n}") %>'></asp:TextBox> 
            </EditItemTemplate> --%>
            <ItemTemplate> 
                <asp:Label ID="lblMax" runat="server" Text='<%# Bind("MaxSellPrice","{0:n}") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 

       <%-- <asp:CommandField ShowDeleteButton="True" /> --%>
    </Columns> 
  <%-- <FooterStyle BackColor="#99CCCC" ForeColor="#003399" /> 
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" /> 
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" /> 
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" /> --%>
                        </asp:GridView>

  </div>
								</div>

									<div class="clearfix"></div>
                                    Estimated Value: <asp:Label ID="lblTotalValue" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    
                                 
<style>
    input[type=number]::-webkit-inner-spin-button, 
    input[type=number]::-webkit-outer-spin-button { 
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    margin: 0; 
}
</style>

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


    <script>


        function validateEnter()
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
                return false
            }

            if (document.getElementById("txtCustomerPhone").value == "" && ((parseFloat(document.getElementById("txtTransfer").value.replace(/,/g, ''))>0 || parseFloat(document.getElementById("txtCredit").value.replace(/,/g, ''))>0)))
            {
                alert("Please, enter customer details");
                return false
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

      
  

    </script>


<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

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
          <h4 class="modal-title" style="color:white">Category Setup</h4>
        </div>
        <div class="modal-body" style="background-color:#E3EAEB" >

            <table>
                <tr>
                    <td>
                      <h6>New Category:</h6>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNewCategory" placeholder="new category" autocomplete="off" style="background-color:lightgray;color:black; padding:5px ;width:250px" runat="server" ></asp:TextBox>
                    </td>
                    
                </tr>
            </table>
      
        </div>
        <div class="modal-footer" style="background-color:#E3EAEB">
      
          <asp:Button ID="cmdNewCategory" runat="server" style="float:left ; font-size:medium;width:150px;padding-top:10px;padding-bottom:10px;color:white; background-color:crimson;" Text="Save"  OnClick="cmdNewCategory_Click" />

          <asp:Button ID="cmdClose" runat="server" align="left" style="font-size:medium;width:70px;padding-top:10px;padding-bottom:10px;color:white; background-color:#1C5E55;" Text="Close"  data-dismiss="modal" OnClientClick="javascript: return false" />

        </div>
      </div>
      
    </div>
  </div>


</form>
</body>
</html>
