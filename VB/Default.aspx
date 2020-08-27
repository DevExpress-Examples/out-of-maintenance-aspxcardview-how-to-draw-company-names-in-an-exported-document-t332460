<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxCardView ID="ASPxCardView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductID">
            <Columns>
                <dx:CardViewTextColumn FieldName="ProductName" VisibleIndex="0">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitPrice" VisibleIndex="1">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitsInStock" VisibleIndex="2">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitsOnOrder" VisibleIndex="3">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="ProductID" ReadOnly="True" Visible="False">
                </dx:CardViewTextColumn>
            </Columns>
        </dx:ASPxCardView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ProductID] FROM [Products]"></asp:SqlDataSource>
        <dx:ASPxCardViewExporter ID="ASPxCardViewExporter1" OnRenderBrick="ASPxCardViewExporter1_RenderBrick" runat="server" CardViewID="ASPxCardView1">
        </dx:ASPxCardViewExporter>
        <dx:ASPxButton ID="ASPxButton1" AutoPostBack="false" OnClick="ASPxButton1_Click" runat="server" Text="Export to PDF"></dx:ASPxButton>
    </div>
    </form>
</body>
</html>