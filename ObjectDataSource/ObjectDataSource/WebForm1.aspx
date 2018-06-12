<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ObjectDataSource.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            list of Countries<br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource2" AutoPostBack="True" AppendDataBoundItems="true">
                               <asp:ListItem Text="Select country" Value="" />
            </asp:DropDownList>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="getCountries" TypeName="ObjectDataSource.Bal1.Bal_Northwind"></asp:ObjectDataSource>
            <br />
            <br />
            Customer List<br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDScustomers" DataKeyNames="CustomerID">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" SortExpression="CustomerID" />
                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                    <asp:BoundField DataField="ContactName" HeaderText="Contact Name" SortExpression="ContactName" />
                    <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDScustomers" runat="server" SelectMethod="getCustomersByCounty" TypeName="ObjectDataSource.Bal1.Bal_Northwind">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="country" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
            <br />
            <br />
            Selected Customer details<br />
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="ObjectDScutomerDetails">
                <Fields>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                    <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                </Fields>
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDScutomerDetails" runat="server" SelectMethod="GetCustomer" TypeName="ObjectDataSource.Bal1.Bal_Northwind">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="customerId" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
