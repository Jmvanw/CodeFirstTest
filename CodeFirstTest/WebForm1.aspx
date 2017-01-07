<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CodeFirstTest.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="border-style: solid">
    <div>
    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Width="441px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="BusName" HeaderText="BusName" SortExpression="BusName" />
                <asp:BoundField DataField="BusType" HeaderText="BusType" SortExpression="BusType" />
                <asp:BoundField DataField="BusState" HeaderText="BusState" SortExpression="BusState" />
                <asp:BoundField DataField="BusPhone" HeaderText="BusPhone" SortExpression="BusPhone" />
            </Columns>
        </asp:GridView>
    
    </div>
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetBusinesses" TypeName="CodeFirstTest.BusinessRepository"></asp:ObjectDataSource>
        <br />
        <br />
        <asp:Label ID="NameLbl" runat="server" BorderStyle="None" Text="Name: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtBusName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="PhoneLbl" runat="server" Text="Phone:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtBusPhone" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="StateLbl" runat="server" Text="State: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtBusState" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="TypeLbl" runat="server" Text="Business Type:"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtBusType" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Submit" />
        <br />
    </form>
</body>
</html>
