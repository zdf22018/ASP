<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetailSearch.aspx.cs" Inherits="ADONET_Demo.OrderDetailSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Order Id"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TxtOrderId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Ddlchoice" runat="server" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="BtnQuery" runat="server" OnClick="BtnQuery_Click" Text="Query" Width="143px" />
            <br />
            <br />
            <asp:DetailsView ID="DvOrder" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <br />
            <asp:DetailsView ID="DetailsViewCustomerOrShipper" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
