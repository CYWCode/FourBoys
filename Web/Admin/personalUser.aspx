<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personalUser.aspx.cs" Inherits="Web.Admin.personalUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理系统</title>
    <style>
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1"></asp:Menu>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
        <div>
            <asp:Table ID="tableUser" runat="server">
                <asp:TableHeaderRow ID="tableUserHeader">
                    <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>邮箱</asp:TableHeaderCell>
                    <asp:TableHeaderCell>姓名</asp:TableHeaderCell>
                    <asp:TableHeaderCell>年龄</asp:TableHeaderCell>
                    <asp:TableHeaderCell>性别</asp:TableHeaderCell>
                    <asp:TableHeaderCell>手机</asp:TableHeaderCell>
                    <asp:TableHeaderCell>是否求职</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
