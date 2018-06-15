<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="sqldatasourcecontrol.SearchPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            search
            <br />
            Please select a field:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="269px">
            </asp:DropDownList>
            <br />

        </div>
        Search Value: <asp:TextBox ID="TextBox1" runat="server" Width="262px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
        <br />
        <br />
        <br />
        Customer Details :
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server">
            
        </asp:GridView>
        <br />
        Customer Orders:<br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
