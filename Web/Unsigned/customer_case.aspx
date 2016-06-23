<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_case.aspx.cs" Inherits="Web.Unsigned.customer_case" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>猿圈 客户案例</title>
<link href="./Resource_files/bootstrap.min.css" rel="stylesheet">
<link href="./Resource_files/font-awesome.min.css" rel="stylesheet">
<link href="./Resource_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./Resource_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./Resource_files/style.css" rel="stylesheet">
<link href="./Resource_files/summernote.css" rel="stylesheet">
<link href="./Resource_files/summernote-bs3.css" rel="stylesheet">
<link href="./Resource_files/style(1).css" rel="stylesheet" type="text/css">
<link href="./Resource_files/hover.css" rel="stylesheet" type="text/css">
<link href="./Resource_files/style_new.css" rel="stylesheet" type="text/css">
<link href="./Resource_files/carousel.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
	#logo-wall {
		text-align: center;
	}
	#logo-wall h1 {
		color: #4A90E2;
		margin-bottom: 40px;
	}
	.logo-item {
		padding: 10px;
		min-height: 140px;
	}
	.logo-item a {
		display: table-cell;
		border: 1px solid #eee;
		padding: 20px;
		width: 320px;
		height: 150px;
		vertical-align: middle;
	}
	.logo-item a:hover {
		border: 1px solid #4A90E2;
	}
	.logo-item a img {
		max-width: 200px;
		max-height: 100px;
		vertical-align: middle;
	}
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><script src="./Resource_files/kf_new.php"></script><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body>
    <form id="customerCaseForm" runat="server">
    <div id="div_company_mini" style="display: none; position: fixed; right: 0px; bottom: 0px; width: 403px; height: 378px; overflow: hidden; z-index: 10089; cursor: move;"><div id="hz6d_cname_mini_div" style="font-size:16px;overflow:hidden;position:absolute;top:7px;left:10px;width:330px;height:20px;color:#fff;text-indent:30px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">猿圈</div><div title="缩小" mini_narrow="缩小" mini_recover="还原" max_min="max" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="切换到正常窗口" style="position:absolute;top:10px;right:28px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="关闭" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:403px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%"></iframe></div></div><div id="kfivtwin" style="display: none; overflow: visible;"><div id="acc_title" class="Lelem" minheight="100" minwidth="100" maxheight="400" maxwidth="400" style="position: relative; z-index: 10000; overflow: visible;"><div class="Lelem" type="img" style="display: block; cursor: default; position: absolute; top: 51px; left: 3px; z-index: 10001; width: 394px; height: 196px;"><img style="width: 394px; height: 196px;" src="./Resource_files/commonbg_4.png"></div><div style="display: block; cursor: default; position: absolute; top: 60px; left: 15px; z-index: 10002; width: 97px; height: 20px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 14px; line-height: 20px; font-family: 宋体;" iseditable="1">53KF在线客服</span></div><div style="display: block; cursor: pointer; position: absolute; top: 70px; left: 371px; z-index: 10003; width: 10px; height: 8px;" onclick="onliner_zdfq=3;hidden_ivt();;" type="img" class="Lelem"><img src="./Resource_files/closebtn_3.png" style="width: 10px; height: 8px;"></div><div style="display: block; cursor: default; position: absolute; top: 97px; left: 13px; z-index: 10004; width: 127px; height: 120px;" type="img" class="Lelem"><img src="./Resource_files/otherimg_6.png" style="width: 127px; height: 120px;"></div><div style="display: block; cursor: default; position: absolute; top: 94px; left: 160px; z-index: 10005; width: 140px; height: 42px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 29.4px; line-height: 42px; font-family: 黑体;" iseditable="1">欢迎咨询</span></div><div class="Lelem" type="text" style="display: block; cursor: default; position: absolute; top: 136px; left: 164px; z-index: 10006; width: 233px; height: 18px;"><span iseditable="1" style="vertical-align: top; font-size: 12.6px; line-height: 20px; font-family: 宋体;">53KF.com，感谢大家的支持！</span></div><div style="display: block; cursor: default; position: absolute; top: 157px; left: 166px; z-index: 10007; width: 190px; height: 17px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 12px; line-height: 17px;" iseditable="1">请问有什么可以帮您？</span></div><div class="Lelem" type="img" onclick="onliner_zdfq=2;hz6d_is_exist(&quot;window.open(%22http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26language%3Dzh-cn%26charset%3Dgbk%26username%3D%26userinfo%3D%26introurl%3D%26lyurl%3D%26lytype%3D0%26copartner%3D%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252Fcustomer_case.aspx%26keyword%3D%26brief%3D%26logo%3D%26question%3D%26tfrom%3D2%22%2C%22_blank%22%2C%22height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno%22)&quot;);hidden_ivt();;" style="display: block; cursor: pointer; position: absolute; top: 180px; left: 165px; z-index: 10008; width: 128px; height: 39px;"><img style="width: 128px; height: 39px;" src="./Resource_files/clickbtn_11.png"></div><div style="display: block; cursor: pointer; position: absolute; top: 222px; left: 18px; z-index: 10009; width: 110px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; color: #666; line-height: 17px; font-family: 宋体;" iseditable="1">这是什么工具？</span></a></div><div style="display: block; cursor: pointer; position: absolute; top: 224px; left: 294px; z-index: 100010; width: 106px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; line-height: 17px; color: #666; font-family: 宋体;" iseditable="1">Powered by 53KF</span></a></div></div></div><div id="kfivteffect" style="display: none; position: absolute; width: 0px; height: 0px; overflow: hidden; border: 1px solid rgb(27, 136, 208); z-index: 10087; background: rgb(214, 238, 253);"></div><iframe id="kfiframe" src="" frameborder="0" scrolling="no" style="display: none; overflow: hidden;"></iframe><div id="iconDiv1" style="height: auto; width: auto;"><iframe style="position:absolute;z-index:7998;width:0px;height:0px;top:0px;left:0px;" frameborder="0"></iframe><div id="iconDivMain1" style="z-index: 10085; left: 1315px; top: 440px; width: 33px; height: 135px; position: absolute;"><div id="kf_hidden1" onclick="set_auto_hidden(1)" onmouseover="show_kf_icons(1);" onmouseout="hidden_kf_icon(1);" style="position:absolute; top:0; right:0;z-index:9000;display:none;"><div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 151px; height: 106px; position: relative; z-index: 10000; cursor: pointer;"><div class="Lelem" type="img" onclick="hz6d_is_exist(&#39;setIsinvited()%3Bwindow.open(#liyc#http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26language%3Dzh-cn%26lytype%3D0%26charset%3Dgbk%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252Fcustomer_case.aspx%26keyword%3D%26tfrom%3D1%26tpl%3Dcrystal_blue#liyc#%2C%20#liyc#_blank#liyc#%2C%20#liyc#height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno#liyc#)&#39;);" style="display: block; cursor: pointer; position: absolute; top: 33px; left: 11px; z-index: 10001; width: 134px; height: 36px;"><img src="./Resource_files/clickbtn_182.png" style="width: 134px; height: 36px;"></div></div></div><div><div id="auto_hidden1" style="z-index: 9001; display: block; right: 0px; top: 0px; width: 33px; height: 135px; overflow: hidden; position: absolute; background: url(&quot;http://www15.53kf.com/img/kflogo/ssan/right/blue.gif&quot;) no-repeat;" onmouseover="show_kf_icons(1);"></div></div></div></div>
	<!-- 引入header -->
	




<div class="navbar navbar-default navbar-fixed-top">
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
			<ul class="nav navbar-nav">
				<li class="">
					<a href="index.aspx">首页</a>
				</li>
				
				<li class="">
					<a href="product.aspx">产品介绍</a>
				</li>
				
				<li class="active">
					<a href="customer_case.aspx">客户案例</a>
				</li>
				
				<li class="">
					<a href="mediaReports.aspx">了解我们</a>
				</li>

				
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li>
					<a href="login.aspx">登录</a>
				</li>
				<li>
					<a href="signup.aspx">注册</a>
				</li>
			</ul>
		</div>
	</div>
</div>

	<div>
		<div id="carousel1" class="carousel slide" data-ride="carousel" style="margin:-20px 0 20px 0;">
			<div class="carousel-inner">
				<div class="item active">
					<img src="./Resource_files/office.png">
					<div class="carousel-caption" style="margin:auto;padding:50px 0;">
						<h1 style="-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;">以编程为核心对应聘者进行量化</h1>
						<p style="-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;">提升招聘效率，减少招聘工作量，找到最优秀的技术人才</p>
					</div>
				</div>
			</div><!-- /.carousel-inner -->
		</div><!-- /.carousel -->
	</div>
        
	<div class="container" id="logo-wall">
		<h1>他们也选择 猿圈</h1>
		<div class="row">
			<div class="col-md-12" id="cplb_main" scrollpagination="enabled">
				
                <asp:Repeater ID="logowall" runat="server" >
                    <ItemTemplate>
					    <div class="logo-item col-xs-12 col-sm-6 col-md-3 hvr-buzz-out" rel="loaded">
						    <a href="javascript:void(0);" title="<%#((BLLEntity.CustomerCase)Container.DataItem).title%>" target="_blank">
							    <img src="./Resource_files/test.jpg">
						    </a>
					    </div>
                    </ItemTemplate>
                </asp:Repeater>

			</div>
		</div>
	</div>
        
    
	<!--div class="container" id="logo-wall">
		<h1>他们也选择 猿圈</h1>
		<div class="row">
			<div class="col-md-12" id="cplb_main" scrollpagination="enabled">
				
					<div class="logo-item col-xs-12 col-sm-6 col-md-3 hvr-buzz-out" rel="loaded">
						<a href="javascript:void(0);" title="测试企业" target="_blank">
							<img src="./Resource_files/test.jpg">
						</a>
					</div>
				
			</div>
		</div>
	</!--div>
	<!-- 引入footer -->
	




<div class="afooter" style="">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img src="./Resource_files/weixin.jpg" style="max-width:200px;">
			</div>
			<div class="col-md-4">
				<h3>联系我们</h3>
				<p>客服电话：010-57407961</p>
				<p>客服邮箱：zyh@oxcoder.com</p>
				<p>客服微信：oxcoder_com（或者扫描左侧二维码）</p>
				<p>
					<a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank" style="border:none;padding-left:0;margin-left:0;">QQ交流群：77590762</a>
				</p>
			</div>
			<div class="col-md-4">
				<h3>关于我们</h3>
				<ul style="margin-left:-25px;">
					<li>
						<a href="mediaReports.aspx" style="border:none;padding-left:0;margin-left:0;">了解我们</a>
					</li>
					<li>
						<a href="customer_case.aspx" style="border:none;padding-left:0;margin-left:0;">客户案例</a>
					</li>
				</ul>
			</div>
		</div>

	</div>
</div>

<script type="text/javascript">
    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
    if (($(document.body).height() + 50) < $(window).height()) {
        $(".afooter").addClass("navbar-fixed-bottom");
    };
</script>
<script type="text/javascript" src="./Resource_files/kf.php"></script>

	<script src="./Resource_files/jquery-1.11.0.min.js"></script>
	<script src="./Resource_files/bootstrap.min.js"></script>
	<script src="./Resource_files/jquery.sparkline.min.js"></script>
	<script src="./Resource_files/bootstrap-switch.min.js"></script>
	<script src="./Resource_files/bootstrap-select.min.js"></script>
	<script src="./Resource_files/bootstrap-filestyle.js"></script>
	<script src="./Resource_files/summernote.min.js"></script>
	<script src="./Resource_files/scrollpagination.js"></script>
	
	<script src="./Resource_files/zmUtil.js"></script>
	<script type="text/javascript">
	    var page = 1;
	    function getWhereData() {
	        data = {};
	        data["pageCode"] = function () { return page };
	        data["rdm"] = function () { return $Util.rdm() };
	        return data;
	    }
	    $(document).ready(function () {
	        $("#cplb_main").scrollPagination({
	            "contentPage": "load_customer_case.aspx", // the url you are fetching the results
	            "contentData": getWhereData(), // these are the variables you can pass to the request, for example: children().size() to know which page you are
	            "scrollTarget": $(window), // who gonna scroll? in this example, the full window
	            "heightOffset": 10, // it gonna request when scroll is 10 pixels before the page ends
	            "beforeLoad": function () { // before load function, you can display a preloader div
	                $("#sl_more").fadeIn();
	                page = page + 1;
	            },
	            "afterLoad": function (elementsLoaded) { // after loading content, you can use this function to animate your new elements
	                //$("#loading").fadeOut();
	                $(elementsLoaded).fadeInWithDelay();
	                if (elementsLoaded.length <= 0) {
	                    $("#sl_more").aspx("没有更多了");
	                    $("#cplb_main").stopScrollPagination();
	                } else {
	                    $("#sl_more").aspx("上拉加载更多...");
	                }
	            }
	        });
	        $.fn.fadeInWithDelay = function () {
	            var delay = 0;
	            return this.each(function () {
	                $(this).delay(delay).animate({
	                    opacity: 1
	                }, 200);
	                delay += 100;
	            });
	        };
	    });
	</script>


<script id="hz6d_flp_jquery" src="./Resource_files/jquery-1.4.2.flp.js" charset="utf-8" type="text/javascript"></script>
    </form>
</body>
</html>
