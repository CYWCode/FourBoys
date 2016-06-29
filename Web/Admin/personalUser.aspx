<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personalUser.aspx.cs" Inherits="Web.Admin.personalUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="./bootstrap.min.css" rel="stylesheet" />
    <title>后台管理系统</title>
    <style>
        .tableButton {
            margin-left: 10px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-8 col-no-left-padding col-md-offset-2" style="margin-top: 30px">
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1"></asp:Menu>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
		<div class="col-md-8 col-no-left-padding col-md-offset-2" style="margin-top: 30px; margin-bottom: 30px">
	        <div class="input-group">
                <asp:TextBox id="tboxKeyword" runat="server" class="form-control" placeholder="关键词" OnTextChanged="doSearch" ></asp:TextBox>
			    <span class="input-group-btn">
                    <asp:Button ID="btnSearch" runat="server" Text="搜索" class="btn" OnClick="doSearch" />
			    </span>
	        </div>
		</div>
        <div class="col-md-8 col-no-left-padding col-md-offset-2">
            <asp:Table ID="tableUser" runat="server" CssClass="table table-hover">
                <asp:TableHeaderRow ID="tableUserHeader" >
                    <asp:TableHeaderCell >ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell >邮箱</asp:TableHeaderCell>
                    <asp:TableHeaderCell >用户名</asp:TableHeaderCell>
                    <asp:TableHeaderCell >姓名</asp:TableHeaderCell>
                    <asp:TableHeaderCell >年龄</asp:TableHeaderCell>
                    <asp:TableHeaderCell >性别</asp:TableHeaderCell>
                    <asp:TableHeaderCell >手机</asp:TableHeaderCell>
                    <asp:TableHeaderCell >是否求职</asp:TableHeaderCell>
                    <asp:TableHeaderCell >管理操作</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
