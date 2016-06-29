<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Web.Admin.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="./bootstrap.min.css" rel="stylesheet" />
    <title>后台管理系统</title>
    <style>
        .card {
            display: inline-block;
            width: 200px;
            margin: 30px;
            padding: 10px;
            background-color: cornflowerblue;
            color: floralwhite;
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
            <div class="card">
                <h1><asp:Label ID="personalUserNum" runat="server" Text="0"></asp:Label></h1>
                <span>个人用户数量</span>
            </div>
            <div class="card">
                <h1><asp:Label ID="enterpriseUserNum" runat="server" Text="0"></asp:Label></h1>
                <span>企业用户数量</span>
            </div>
            <div class="card">
                <h1><asp:Label ID="challengeNum" runat="server" Text="0"></asp:Label></h1>
                <span>挑战数量</span>
            </div>
        </div>
    </form>
</body>
</html>
