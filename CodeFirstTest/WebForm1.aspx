<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CodeFirstTest.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="BusName" HeaderText="BusName" SortExpression="BusName" />
                <asp:BoundField DataField="BusType" HeaderText="BusType" SortExpression="BusType" />
            </Columns>
        </asp:GridView>
    
    </div>
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetBusinesses" TypeName="CodeFirstTest.BusinessRepository"></asp:ObjectDataSource>
        <br />
    </form>
</body>
</html>
