<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSearch.aspx.cs" Inherits="ObjectDataSource.OrderSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <br />
            Orders by date:<br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            OrderDetails<br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
