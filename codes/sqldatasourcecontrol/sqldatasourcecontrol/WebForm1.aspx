<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="sqldatasourcecontrol.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" SelectCommand="SELECT DISTINCT [Country] FROM [Customers] ORDER BY [Country]">
        </asp:SqlDataSource>
            <br />
             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Country" DataValueField="Country" AppendDataBoundItems="true">
                 <asp:ListItem Value="-1">Please select</asp:ListItem>
            </asp:DropDownList>
             <br />
             <br />
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Customers] WHERE ([Country] = @Country)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList1" Name="Country" PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                    <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                </Columns>
            </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="GridView1" Name="CustomerID" PropertyName="SelectedValue" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <br />
            <br />
             <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                 <Fields>
                     <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
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
            <br />
           
        </div>
           </form>
</body>
</html>
