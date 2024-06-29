<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Exposicio.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Catàleg d'exposicions</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Catàleg d'exposicions" Font-Size="X-Large" ForeColor="#666699"></asp:Label><asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile1.xml" TransformFile="~/XSLTFile1.xslt"></asp:XmlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" BackColor="#666699" ForeColor="Yellow">
            <Columns>
                <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom"></asp:BoundField>
                <asp:BoundField DataField="entitat" HeaderText="entitat" SortExpression="entitat"></asp:BoundField>
                <asp:BoundField DataField="tarifa" HeaderText="tarifa" SortExpression="tarifa"></asp:BoundField>
                <asp:BoundField DataField="any" HeaderText="any" SortExpression="any"></asp:BoundField>
                <asp:ImageField DataImageUrlField="imatge" HeaderText="imatge" ControlStyle-Height="150" ItemStyle-HorizontalAlign="Center">
                </asp:ImageField>
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
