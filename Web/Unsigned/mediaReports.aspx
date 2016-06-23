<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mediaReports.aspx.cs" Inherits="Web.Unsigned.mediaReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>猿圈 媒体报道</title>
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
    <form id="mediaReportsForm" runat="server">
<div id="iconDiv1" style="height: auto; width: auto;"><iframe style="position:absolute;z-index:7998;width:0px;height:0px;top:0px;left:0px;" frameborder="0"></iframe><div id="iconDivMain1" style="z-index: 10085; left: 1315px; top: 300px; width: 33px; height: 135px; position: absolute;"><div id="kf_hidden1" onclick="set_auto_hidden(1)" onmouseover="show_kf_icons(1);" onmouseout="hidden_kf_icon(1);" style="position:absolute; top:0; right:0;z-index:9000;display:none;"><div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 163px; height: 107px; position: relative; z-index: 10000; cursor: pointer;"><div class="Lelem" type="img" onclick="hz6d_is_exist(&#39;setIsinvited()%3Bwindow.open(#liyc#http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26language%3Dzh-cn%26lytype%3D0%26charset%3Dgbk%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26referer%3Dfile%253A%252F%252F%252FC%253A%252FUsers%252Fchenyu.yqwang%252FDesktop%252F%2525E4%2525B8%2525B0%2525E5%2525B0%25258F%2525E5%252585%252584%2525E7%252588%2525B1%2525E6%252594%2525AF%2525E5%2525B0%25258F%2525E4%2525B9%2525A6%252520Workspace%252F%2525E7%252582%2525B9net%252F%2525E7%2525BD%252591%2525E9%2525A1%2525B5%252F%2525E9%2525A6%252596%2525E9%2525A1%2525B5%252F%2525E7%25258C%2525BF%2525E5%25259C%252588%252520%2525E5%2525AA%252592%2525E4%2525BD%252593%2525E6%25258A%2525A5%2525E9%252581%252593.html%26keyword%3D%26tfrom%3D1%26tpl%3Dcrystal_blue#liyc#%2C%20#liyc#_blank#liyc#%2C%20#liyc#height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno#liyc#)&#39;);" style="display: block; cursor: pointer; position: absolute; top: 37px; left: 15px; z-index: 10001; width: 134px; height: 36px;"><img src="./Resource_files/clickbtn_182.png" style="width: 134px; height: 36px;"></div></div></div><div><div id="auto_hidden1" style="z-index: 9001; display: block; right: 0px; top: 0px; width: 33px; height: 135px; overflow: hidden; position: absolute; background: url(http://www15.53kf.com/img/kflogo/ssan/right/blue.gif) no-repeat;" onmouseover="show_kf_icons(1);"></div></div></div></div><div id="div_company_mini" style="display: none; position: fixed; right: 0px; bottom: 0px; width: 403px; height: 378px; overflow: hidden; z-index: 10089; cursor: move;"><div id="hz6d_cname_mini_div" style="font-size:16px;overflow:hidden;position:absolute;top:7px;left:10px;width:330px;height:20px;color:#fff;text-indent:30px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">猿圈</div><div title="缩小" mini_narrow="缩小" mini_recover="还原" max_min="max" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="切换到正常窗口" style="position:absolute;top:10px;right:28px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="关闭" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:403px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%"></iframe></div></div><div id="kfivtwin" style="display: none; overflow: visible;"><div id="acc_title" class="Lelem" minheight="100" minwidth="100" maxheight="400" maxwidth="400" style="position: relative; z-index: 10000; overflow: visible;"><div class="Lelem" type="img" style="display: block; cursor: default; position: absolute; top: 51px; left: 3px; z-index: 10001; width: 394px; height: 196px;"><img style="width: 394px; height: 196px;" src="./Resource_files/commonbg_4.png"></div><div style="display: block; cursor: default; position: absolute; top: 60px; left: 15px; z-index: 10002; width: 97px; height: 20px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 14px; line-height: 20px; font-family: 宋体;" iseditable="1">53KF在线客服</span></div><div style="display: block; cursor: pointer; position: absolute; top: 70px; left: 371px; z-index: 10003; width: 10px; height: 8px;" onclick="onliner_zdfq=3;hidden_ivt();;" type="img" class="Lelem"><img src="./Resource_files/closebtn_3.png" style="width: 10px; height: 8px;"></div><div style="display: block; cursor: default; position: absolute; top: 97px; left: 13px; z-index: 10004; width: 127px; height: 120px;" type="img" class="Lelem"><img src="./Resource_files/otherimg_6.png" style="width: 127px; height: 120px;"></div><div style="display: block; cursor: default; position: absolute; top: 94px; left: 160px; z-index: 10005; width: 140px; height: 42px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 29.4px; line-height: 42px; font-family: 黑体;" iseditable="1">欢迎咨询</span></div><div class="Lelem" type="text" style="display: block; cursor: default; position: absolute; top: 136px; left: 164px; z-index: 10006; width: 233px; height: 18px;"><span iseditable="1" style="vertical-align: top; font-size: 12.6px; line-height: 20px; font-family: 宋体;">53KF.com，感谢大家的支持！</span></div><div style="display: block; cursor: default; position: absolute; top: 157px; left: 166px; z-index: 10007; width: 190px; height: 17px;" type="text" class="Lelem"><span style="vertical-align: top; font-size: 12px; line-height: 17px;" iseditable="1">请问有什么可以帮您？</span></div><div class="Lelem" type="img" onclick="onliner_zdfq=2;hz6d_is_exist(&quot;window.open(%22http%3A%2F%2Fwww15.53kf.com%2FwebCompany.php%3Farg%3D10124917%26style%3D1%26kflist%3Doff%26kf%3D%26zdkf_type%3D1%26language%3Dzh-cn%26charset%3Dgbk%26username%3D%26userinfo%3D%26introurl%3D%26lyurl%3D%26lytype%3D0%26copartner%3D%26referer%3Dhttp%253A%252F%252Fwww.oxcoder.com%252FmediaReports.html%26keyword%3D%26brief%3D%26logo%3D%26question%3D%26tfrom%3D2%22%2C%22_blank%22%2C%22height%3D473%2Cwidth%3D703%2Ctop%3D200%2Cleft%3D200%2Cstatus%3Dyes%2Ctoolbar%3Dno%2Cmenubar%3Dno%2Cresizable%3Dyes%2Cscrollbars%3Dno%2Clocation%3Dno%2Ctitlebar%3Dno%22)&quot;);hidden_ivt();;" style="display: block; cursor: pointer; position: absolute; top: 180px; left: 165px; z-index: 10008; width: 128px; height: 39px;"><img style="width: 128px; height: 39px;" src="./Resource_files/clickbtn_11.png"></div><div style="display: block; cursor: pointer; position: absolute; top: 222px; left: 18px; z-index: 10009; width: 110px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; color: #666; line-height: 17px; font-family: 宋体;" iseditable="1">这是什么工具？</span></a></div><div style="display: block; cursor: pointer; position: absolute; top: 224px; left: 294px; z-index: 100010; width: 106px; height: 17px; color: rgb(153, 153, 153);" type="text" class="Lelem"><a href="http://www.53kf.com/" target="_blank" style="text-decoration:none;cursor:pointer;"><span style="vertical-align: top; font-size: 10px; line-height: 17px; color: #666; font-family: 宋体;" iseditable="1">Powered by 53KF</span></a></div></div></div><div id="kfivteffect" style="display: none; position: absolute; width: 0px; height: 0px; overflow: hidden; border: 1px solid rgb(27, 136, 208); z-index: 10087; background: rgb(214, 238, 253);"></div><iframe id="kfiframe" src="" frameborder="0" scrolling="no" style="display: none; overflow: hidden;"></iframe>
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
				
				<li class="">
					<a href="customer_case.aspx">客户案例</a>
				</li>
				
				<li class="active">
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

	<div style="height:400px;margin-bottom:40px;">
		<div class="jumbotron">
			<h1 style="font-size:42px;color:#fff;-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;">助力企业高效招聘</h1>
			<h1 style="font-size:42px;color:#fff;-webkit-text-shadow: 0px 0px 10px #000;-moz-text-shadow: 0px 0px 10px #000;text-shadow: 0px 0px 10px #000;">让开发者极速成长</h1>
		</div>
	</div>

	<div class="container">
		<div class="row">

			<div class="col-md-10 col-md-offset-1">
		      <div class="col-md-3 press"><img src="./Resource_files/cyzone.png" class="press-logo"></div>
		      <div class="col-md-9">
		        <p class="press-font">在企业招聘环节中，同样需要企业和应聘者双方的信息对称。然而，程序猿招聘在互联网企业招聘环节中却是一个比较有门槛的事情——HR不懂专业技术，“程序猿”没法展现自己的真实技能水平。“猿圈”正是一个为企业和技术人才双方搭起桥梁的平台，不仅帮助企业招聘到匹配人才，同时也为程序猿提供技能提升培训。</p>
		        -<a href="http://www.cyzone.cn/a/20151015/281802.html" class="newa" target="_blank">连接程序猿和企业：想看和这家公司有没有“猿粪”？先来“猿圈”上练练手 | 创业邦, 2015/10/15</a>
		      </div>
		    </div>
		    <div class="col-md-10 col-md-offset-1">
		      <hr>
		      <div class="col-md-3 press"><img src="./Resource_files/zollogo.png" class="press-logo"></div>
		      <div class="col-md-9">
		        <p class="press-font">相比千篇一律的简历、走过场的笔试和繁琐的选拔流程，什么都比不上代码更能代表程序员的思想。猿圈在云端打造这样一个职业成长平台，通过在线的编程测评，帮助企业快速评估程序员的真正技术实力。</p>
		        -<a href="http://cloud.zol.com.cn/545/5454299.html" class="newa" target="_blank">用程序员的方式招聘 扔掉纸笔来云上练练 | 中关村在线, 2015/10/13</a>
		      </div>
		    </div>
		    <div class="col-md-10 col-md-offset-1">
		      <hr>
		      <div class="col-md-3 press"><img src="./Resource_files/36kr.png" class="press-logo"></div>
		      <div class="col-md-9">
		        <p class="press-font">从整体逻辑上来说，猿圈就切入一个点“测”，搭起了前端的在线技术学习和后端的技术招聘连接桥梁。“测”可以告诉普通用户你的能力弱点在哪里，应该学习什么；可以告诉老师如何做个性化的辅导；可以告诉企业的HR这个人才到底有多靠谱。“测”可以告诉普通用户你的能力弱点在哪里，应该学习什么；可以告诉老师如何做个性化的辅导；可以告诉企业的HR这个人才到底有多靠谱。</p>
		        -<a href="http://36kr.com/p/531415.html" class="newa" target="_blank">左手教育，右手招聘，“猿圈”告诉你技术测评工具也有大前途 | 36Kr, 2015/04/02</a>
		      </div>
		    </div>
		    <div class="col-md-10 col-md-offset-1">
		      <hr>
		      <div class="col-md-3 press">
		        <img src="./Resource_files/geekpark.png" class="press-logo">
		      </div>
		      <div class="col-md-9">
		        <p class="press-font">猿圈根据挑战测评过程，智能评估编程表现，识别掌握一般的知识点。针对性学习，精选不同教育资源，极速提升编程能力。学习过程中，获得工作机会，一举两得。猿圈大爆料：愿景是程序员每天都能洗一次头洗一次澡。</p>
		        -
		        <a href="http://www.geekpark.net/videos/210678" class="newa" target="_blank">用「程序猿」的方式测试「程序猿」 | GEEKPARK, 2015/05/11</a>
		      </div>
		    </div>
		    <div class="col-md-10 col-md-offset-1">
		      <hr>
		      <div class="col-md-3 press">
		        <img src="./Resource_files/tech2ipo.png" class="press-logo">
		      </div>
		      <div class="col-md-9">
		        <p class="press-font">对于互联网公司不懂代码的 HR 来讲，招到靠谱的程序员需要足够的人品和运气。猿圈打算用在线「代码挑战」的形式帮助招聘企业筛选出能力出众的程序员甚至编程牛人。</p>
		        -
		        <a href="http://tech2ipo.com/96444" class="newa" target="_blank">猿圈：代码挑战帮你招到靠谱的程序员 | tech2ipo创见, 2015/03/18</a>
		      </div>
		    </div>
		    <div class="col-md-10 col-md-offset-1">
		      <hr>
		      <div class="col-md-3 press">
		        <img src="./Resource_files/36kr.png" class="press-logo">
		      </div>
		      <div class="col-md-9">
		        <p class="press-font">代码简洁高效易读是一名程序员必备的自我修养，在招聘的时候企业想要快速的了解程序员的技术水平通常流程都比较繁琐，「猿圈」则通过用线上代码测试的方案来帮助雇佣双方节省时间。</p>
		        -
		        <a href="http://www.36kr.com/p/220928.html" class="newa" target="_blank">高效、乐活、有趣：这里样样都有，3 月第 3 周不可错过的 10 款新产品 | 36Kr, 2015/03/23</a>
		      </div>
		    </div>
		    <div class="col-md-10 col-md-offset-1">
		      <hr>
		      <div class="col-md-3 press">
		        <img src="./Resource_files/36kr.png" class="press-logo">
		      </div>
		      <div class="col-md-9">
		        <p class="press-font">传统低效的工作方式都应该被互联网所改变。在互联网企业招聘技术人员这个环节中，就存在着依然用纸笔答题，而不能让应聘的程序猿直接在线编程完成笔试的低效问题。奔着优化这一低效流程的目标，oxcoder就想让应聘者在线完成真实项目的编程挑战，从而来为企业筛选出能力优秀、符合招聘需求的技术人员。</p>
		        -
		        <a href="http://www.36kr.com/p/216719.html" class="newa" target="_blank">HackerRank模式的中国尝试者：oxcoder让程序猿在线完成项目挑战来帮企业做招聘笔试 | 36Kr, 2015/01/05</a>
		      </div>
		    </div>
		    <div class="col-md-10 col-md-offset-1">
		      <hr>
		      <div class="col-md-3 press">
		        <img src="./Resource_files/hexun.png" class="press-logo">
		      </div>
		      <div class="col-md-9">
		        <p class="press-font">继阿里巴巴之后，腾讯在今年也启用了自己的线上招聘笔试平台，提供类似服务的猿圈(贵司起名时脑洞也是颇大)，也为各类小公司们送去了福音。只不过，猿圈太坑了太坑了，不是选择题和简答题，直接在线编程.....这让我们这些水货程序员以后怎么办啊怎么办啊!</p>
		        -
		        <a href="http://tech.hexun.com/2015-03-20/174251629.html" class="newa" target="_blank">让招聘快一点，再快一点 | 和讯科技, 2015/03/20</a>
		      </div>
		    </div>
		  </div>
		  
		</div>
	
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
