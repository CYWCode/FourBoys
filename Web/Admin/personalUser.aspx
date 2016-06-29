<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personalUser.aspx.cs" Inherits="Web.Admin.personalUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理系统</title>
    <style>
        .userTable {
            display: inline-block;
            margin: 30px;
            padding: 10px;
        }
        .userTableHeader {
            background-color: cornflowerblue;
            color: floralwhite;
        }
        .userTableRow {
            background-color: lightgrey
        }
        .userTableCell {
            padding: 10px;
        }
        .userTableButton {
            margin-left: 10px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1"></asp:Menu>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
        <div>
            <asp:Table ID="tableUser" runat="server" CssClass="userTable">
                <asp:TableHeaderRow ID="tableUserHeader" CssClass="userTableHeader">
                    <asp:TableHeaderCell CssClass="userTableCell">ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">邮箱</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">用户名</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">姓名</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">年龄</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">性别</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">手机</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">是否求职</asp:TableHeaderCell>
                    <asp:TableHeaderCell CssClass="userTableCell">管理操作</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
