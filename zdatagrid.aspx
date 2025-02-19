﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zdatagrid.aspx.cs" Inherits="datagrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">  
        <title>Untitled Page</title>  
    </head>  
  
    <body>  
        <form id="form1" runat="server">  
            <div>  
                <asp:DataGrid ID="Grid" runat="server" PageSize="15" AllowPaging="True" DataKeyField="ProductCode" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanged="Grid_PageIndexChanged" OnCancelCommand="Grid_CancelCommand" OnDeleteCommand="Grid_DeleteCommand" OnEditCommand="Grid_EditCommand" OnUpdateCommand="Grid_UpdateCommand">  
                    <Columns>  
                        <asp:BoundColumn HeaderText="ProductCode" DataField="ProductCode"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="ProductName" DataField="ProductName"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="AbsMinSellPrice" DataField="AbsMinSellPrice"> </asp:BoundColumn>  
                        <asp:BoundColumn DataField="MinSellprice" HeaderText="MinSellprice"> </asp:BoundColumn>  
                        <asp:BoundColumn DataField="MaxSellPrice" HeaderText="MaxSellPrice"> </asp:BoundColumn>  
                        <asp:BoundColumn DataField="UnitInStore" HeaderText="UnitInStore"> </asp:BoundColumn>  
                        <asp:EditCommandColumn EditText="Edit" CancelText="Cancel" UpdateText="Update" HeaderText="Edit"> </asp:EditCommandColumn>  
                        <asp:ButtonColumn CommandName="Delete" HeaderText="Delete" Text="Delete"> </asp:ButtonColumn>  
                    </Columns>  
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />  
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />  
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />  
                    <AlternatingItemStyle BackColor="White" />  
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />  
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" /> </asp:DataGrid> <br /> <br />  
                <table>  
                    <tr>  
                        <td>  
                            <asp:Label ID="lblEmpId" runat="server" Text="ProductCode"></asp:Label>  
                            <asp:TextBox ID="TextBox1"   runat="server"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:Label ID="lblfname" runat="server" Text="ProductName"></asp:Label>  
                            <asp:TextBox ID="TextBox2"  runat="server"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:Label ID="lblLname" runat="server" Text="AbsMinSellPrice"></asp:Label>  
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:Label ID="lblCity" runat="server" Text="MinSellprice"></asp:Label>  
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>  
                        </td>  
                        <td>  
                            <asp:Label ID="lblEmailId" runat="server" Text="MaxSellPrice"></asp:Label>  
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox> Q </td>  
                        <td>  
                            <asp:Label ID="lblEmpJoining" runat="server" Text="UnitInStore"></asp:Label>  
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>  
                        </td>  
                    </tr>  
                </table>  
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />  
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />  
                <asp:Button ID="btnOk" runat="server" Text="OK" OnClick="btnOk_Click" /> </div>  
            <div>  
                <asp:DataGrid ID="Grid1" runat="server" PageSize="5" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">  
                    <Columns>  
                        <asp:BoundColumn HeaderText="ProductCode" DataField="ProductCode"></asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="ProductName" DataField="ProductName"></asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="AbsMinSellPrice" DataField="AbsMinSellPrice"></asp:BoundColumn>  
                        <asp:BoundColumn DataField="MinSellprice" HeaderText="MinSellprice"></asp:BoundColumn>  
                        <asp:BoundColumn DataField="MaxSellPrice" HeaderText="MaxSellPrice"></asp:BoundColumn>  
                        <asp:BoundColumn DataField="UnitInStore" HeaderText="UnitInStore"> </asp:BoundColumn>  
                    </Columns>  
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />  
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />  
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />  
                    <AlternatingItemStyle BackColor="White" />  
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />  
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" /> </asp:DataGrid>  
            </div>  
        </form>  
    </body>  
  
    </html>  
