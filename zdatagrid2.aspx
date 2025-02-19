﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zdatagrid2.aspx.cs" Inherits="datagrid2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }
        .table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        .table th, .table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="gvCustomers" CssClass="table" runat="server" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="Name" ItemStyle-Width="150px" ItemStyle-CssClass="Name">
                <ItemTemplate>
                    <%# Eval("UserId") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country" ItemStyle-Width="150px" ItemStyle-CssClass="Country">
                <ItemTemplate>
                    <%# Eval("username")%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td style="width: 150px">
                Name:<br />
                <asp:TextBox ID="txtName" runat="server" Width="140" Text="" />
            </td>
            <td style="width: 150px">
                Country:<br />
                <asp:TextBox ID="txtCountry" runat="server" Width="140" Text="" />
            </td>
            <td style="width: 100px">
                <br />
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClientClick="return AddRow()" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Button Text="Submit" runat="server" OnClick="Submit" />
    <script type="text/javascript">
        function AddRow() {
            //Reference the GridView.
            var gridView = document.getElementById("<%=gvCustomers.ClientID %>");

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

            //Add the Name value to first cell.
            var txtName = document.getElementById("<%=txtName.ClientID %>");
            SetValue(row, 0, "name", txtName);

            //Add the Country value to second cell.
            var txtCountry = document.getElementById("<%=txtCountry.ClientID %>");
            SetValue(row, 1, "country", txtCountry);

            //Add the row to the GridView.
            tbody.appendChild(row);
            return false;
        };

        function SetValue(row, index, name, textbox) {
            //Reference the Cell and set the value.
            row.cells[index].innerHTML = textbox.value;

            //Create and add a Hidden Field to send value to server. 
            var input = document.createElement("input");
            input.type = "hidden";
            input.name = name;
            input.value = textbox.value;
            row.cells[index].appendChild(input);

            //Clear the TextBox.
            textbox.value = "";
        }
    </script>
    </form>
</body>
</html>

