<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tutorial.aspx.cs" Inherits="sqldatasourcecontrol.tutorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="TxtMaxPrice" runat="server"></asp:TextBox><asp:Button ID="BtnDisplay" runat="server" Text="Button" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">

                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" 
                SelectCommand="SELECT ProductID,   ProductName, UnitPrice FROM Products WHERE (UnitPrice &lt;= @maxPrice or @maxPrice =-1)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TxtMaxPrice" Name="MaxPrice" PropertyName="Text" DefaultValue="-1" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
