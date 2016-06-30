<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cooper_info.aspx.cs" Inherits="Web.Personal.cooper_info" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>猿圈 企业信息</title>
    <link href="./Resource_files/bootstrap.min.css" rel="stylesheet">
    <link href="./Resource_files/font-awesome.min.css" rel="stylesheet">
    <link href="./Resource_files/bootstrap-switch.min.css" rel="stylesheet">
    <link href="./Resource_files/bootstrap-select.min.css" rel="stylesheet">
    <link href="./Resource_files/style.css" rel="stylesheet">
    <link href="./Resource_files/summernote.css" rel="stylesheet">
    <link href="./Resource_files/summernote-bs3.css" rel="stylesheet">
    <link href="./Resource_files/style(1).css" rel="stylesheet" type="text/css">
    <!-- Max css -->
    <link href="./Resource_files/style_new.css" rel="stylesheet" type="text/css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body>
    <form id="cooperInfo" runat="server">



<div class="navbar navbar-default navbar-fixed-top" id="navbar">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="index.aspx" style="padding: 0;">
				<img src="./Resource_files/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
                            <!-- FIXME: 链接 -->
			<ul class="nav navbar-nav">
				<li class="">
					<a href="index.aspx">首页</a>
				</li>
				<li class="">
					<a href="recruit/user_recruit.aspx">挑战</a>
				</li>
				<li class="">
					<a href="info/user_center.aspx">个人中心</a>
				</li>
				<li class="">
					<a href="user_resume.aspx">个人简历</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown" id="drop_down_nav">
					<a href="/#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">
							
								
								
									UserName
								
								
								
							
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="info/account_binding.aspx">帐号设置</a>
						</li>
						<li>
                            <!-- FIXME -->
							<a href="security_logout">注销</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section id="Section2">
					<div class="panel panel-default resume-block">

						<div class="panel-body">
							<h2 class="grey">
                                <asp:Label ID="lTitle" runat="server" Text="Label"></asp:Label>
							</h2>
							<p>
								<span class="resume-label">
                                    <asp:Label ID="lName" runat="server" Text="Label"></asp:Label>
                                    <asp:Label ID="lScale" runat="server" Text="Label"></asp:Label>
								</span>
							</p>
							<p>
								<span class="resume-label">
                                    <asp:Label ID="lEmail" runat="server" Text="Label"></asp:Label>
								</span>
							</p>
						</div>
						<!-- /.panel-body -->
					</div>
				</section>
			</div>
		</div>
		
  
  


		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer"></footer>
	<script src="./Resource_files/jquery-1.11.0.min.js"></script>
	<script src="./Resource_files/bootstrap.min.js"></script>
	<script src="./Resource_files/jquery.sparkline.min.js"></script>
	<script src="./Resource_files/bootstrap-switch.min.js"></script>
	<script src="./Resource_files/bootstrap-select.min.js"></script>
	<script src="./Resource_files/bootstrap-filestyle.js"></script>
	<script src="./Resource_files/summernote.min.js"></script>
	<script src="./Resource_files/script.js"></script>
	
	<script type="text/javascript" src="./Resource_files/pagination.js"></script>
	<script type="text/javascript">
	    $PageCtrl.callBackFun = recruitPageTurn;
	    function recruitPageTurn(pCode) {
	        location.href = "user/cooper_info.aspx?cooperId=2404&pageCode=" + pCode;
	    }
	</script>

    </form>
</body>
</html>
