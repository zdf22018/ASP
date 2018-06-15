<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupplierSearch.aspx.cs" Inherits="Ado.SupplierSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Supplier Id:&nbsp;
            <asp:TextBox ID="TxtSupplierId" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="LbSuppliers" ErrorMessage="CompareValidator"></asp:CompareValidator>
            <br />
            <asp:Button ID="BtnSearch" runat="server" OnClick="BtnSearch_Click" Text="Search" Width="102px" />
            <br />
            <br />
            <asp:ListBox ID="LbSuppliers" runat="server" Height="156px" Width="219px"></asp:ListBox>
            <br />
            <br />
            <br />
            <asp:DropDownList ID="ddlSupplier" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSupplier_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
            </asp:DetailsView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
