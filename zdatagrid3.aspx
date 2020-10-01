<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zdatagrid3.aspx.cs" Inherits="zdatagrid3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>
    <form id="form1" runat="server">
  <asp:GridView ID="gvPerson" runat="server" AutoGenerateColumns="False" BackColor="White"  
BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4"  
    onpageindexchanging="gvPerson_PageIndexChanging"  
    onrowcancelingedit="gvPerson_RowCancelingEdit"  
    onrowdatabound="gvPerson_RowDataBound" onrowdeleting="gvPerson_RowDeleting"  
    onrowediting="gvPerson_RowEditing" onrowupdating="gvPerson_RowUpdating"  
    onsorting="gvPerson_Sorting"> 
<RowStyle BackColor="White" ForeColor="#003399" /> 
    <Columns> 

        <asp:BoundField DataField="Productcode" HeaderText="Code" ReadOnly="True"  
            SortExpression="Productcode" /> 
        <asp:TemplateField HeaderText="Item Name" SortExpression="Productname"> 
          <%--  <EditItemTemplate> 
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Productname") %>'></asp:TextBox> 
            </EditItemTemplate> --%>

            <ItemTemplate> 
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Productname") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="Abs. Price" SortExpression="AbsMinSellPrice"> 
            <EditItemTemplate> 
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AbsMinSellPrice","{0:n}") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("AbsMinSellPrice","{0:n}") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
         <asp:TemplateField HeaderText="Min. Price" SortExpression="MinSellprice"> 
            <EditItemTemplate> 
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MinSellprice","{0:n}") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("MinSellprice","{0:n}") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
         <asp:TemplateField HeaderText="Max. Price" SortExpression="MaxSellPrice"> 
            <EditItemTemplate> 
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MaxSellPrice","{0:n}") %>'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("MaxSellPrice","{0:n}") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
         <asp:TemplateField HeaderText="Current Qty" SortExpression="UnitInStore"> 
            <ItemTemplate> 
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("UnitInStore") %>'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="Qty" SortExpression="UnitInStore"> 
            <EditItemTemplate> 
                <asp:TextBox ID="TextBox4" runat="server" Text='0'></asp:TextBox> 
            </EditItemTemplate> 
            <ItemTemplate> 
                <asp:Label ID="Label2" runat="server" Text='0'></asp:Label> 
            </ItemTemplate> 
        </asp:TemplateField> 
                <asp:CommandField ShowEditButton="True" /> 
       <%-- <asp:CommandField ShowDeleteButton="True" /> --%>
    </Columns> 
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" /> 
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" /> 
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" /> 
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" /> 
</asp:GridView> 
     
 
<asp:LinkButton ID="lbtnAdd" runat="server" onclick="lbtnAdd_Click">AddNew</asp:LinkButton> 
 
 
<asp:Panel ID="pnlAdd" runat="server" Visible="False"> 
    Last name: 
    <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox> 
     
     
    First name: 
    <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox> 
     
     
    <asp:LinkButton ID="lbtnSubmit" runat="server" onclick="lbtnSubmit_Click">Submit</asp:LinkButton> 
        
    <asp:LinkButton ID="lbtnCancel" runat="server" onclick="lbtnCancel_Click">Cancel</asp:LinkButton> 
     
</asp:Panel> 

    </form>
</body>
</html>
