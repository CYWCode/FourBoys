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
				<li class="active">
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
			<div class="col-md-9 col-no-left-padding">
				<section class="middle">
					<h2 class="h2-tab col-md-12">
						<i class="fa  fa-th-large"></i>
						世纪创兴（北京）科技有限公司 &nbsp;进行中的挑战
					</h2>
					
						<div class="col-md-4">
							<section id="middle">
								<div class="panel panel-default shadow-effect">
									<div class="col-xs-12 panel-header">
										<div class="pull-left">
											<h4 class="line-control">
												<a href="javascript:;">[高级]iOS工程师</a>
											</h4>
											<h4 class="line-control">
												<a href="javascript:;">世纪创兴（北京）科技有限公司</a>
											</h4>
										</div>
										<div class="pull-right client-info">
											<span class="percent text-danger">
												<img class="img-circle" style="width:60px;height:60px" src="./Resource_files/99ff536a-d2ff-4954-8688-ff07181aef5c.jpg">
											</span>
										</div>
										
									</div>
	
									<div class="panel-body ">
										<ul class="list-unstyled">
											<li>月薪： 
												
												15K以上
											</li>
											<li>职位诱惑：</li>
											<li>
												<ul class="companyTags">
													
													
														<li>五险一金</li>
													
														<li>年底双薪</li>
													
														<li>弹性工作</li>
													
												</ul>
											</li>
											<li>试题数量：2</li>
											<li>
												挑战难度：
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
											</li>
											<li>
												<i class="fa fa-calendar"></i>
												2016.03.11~2016.05.11
											</li>
											<li>
												<i class="fa fa-user"></i>
												185人已接受挑战
											</li>
										</ul>
									</div>
									<!-- /.panel-footer -->
								</div>
							</section>
						</div>
					
						<div class="col-md-4">
							<section id="Section1">
								<div class="panel panel-default shadow-effect">
									<div class="col-xs-12 panel-header">
										<div class="pull-left">
											<h4 class="line-control">
												<a href="javascript:;">[高级]iOS工程师</a>
											</h4>
											<h4 class="line-control">
												<a href="javascript:;">世纪创兴（北京）科技有限公司</a>
											</h4>
										</div>
										<div class="pull-right client-info">
											<span class="percent text-danger">
												<img class="img-circle" style="width:60px;height:60px" src="./Resource_files/99ff536a-d2ff-4954-8688-ff07181aef5c.jpg">
											</span>
										</div>
										
											<span class="hot-tag">推荐</span>
										
									</div>
	
									<div class="panel-body ">
										<ul class="list-unstyled">
											<li>月薪： 
												
												15K以上
											</li>
											<li>职位诱惑：</li>
											<li>
												<ul class="companyTags">
													
													
														<li>五险一金</li>
													
														<li>年底双薪</li>
													
														<li>弹性工作</li>
													
												</ul>
											</li>
											<li>试题数量：2</li>
											<li>
												挑战难度：
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
													<i class="fa fa-star"></i>
												
											</li>
											<li>
												<i class="fa fa-calendar"></i>
												2016.03.11~2016.05.11
											</li>
											<li>
												<i class="fa fa-user"></i>
												269人已接受挑战
											</li>
										</ul>
									</div>
									<!-- /.panel-footer -->
								</div>
							</section>
						</div>
					
				</section>
			</div>
			<div class="col-md-3">
				<section id="Section2">
					<div class="panel panel-default resume-block">

						<div class="panel-body">
							<h2 class="grey">
								<img src="./Resource_files/99ff536a-d2ff-4954-8688-ff07181aef5c.jpg" height="40px" width="40px;">
								世纪创兴（北京）科技有限公司
							</h2>
							<p>
								<span class="resume-label">世纪创兴（北京）科技有限公司</span>
							</p>
							<p>
								<span class="resume-label">地点:北京市</span>
								<span class="resume-label">规模:
									
									暂无
								</span>
							</p>
							<p>
								<span class="resume-label">
									公司网址:
									<a href=""></a>
								</span>
							</p>
							<ul class="companyTags" style="display:inline-block;">
								
								
									<li>五险一金</li>
								
									<li>年底双薪</li>
								
									<li>弹性工作</li>
								
							</ul>
						</div>
						<!-- /.panel-body -->
					</div>
					<div class="panel panel-default resume-block">

						<div class="panel-body">
							<h3>
								<i class="fa fa-align-left"></i>
								公司简介
							</h3>
							<p>
								
								
							</p>
						</div>
						<!-- /.panel-body -->
					</div>
				</section>
			</div>
		</div>
		
  
  

<ul class="pagination">
	
	
	
	
		
			<li class="disabled">
		      <a aria-label="Previous">
		        <span aria-hidden="true">«</span>
		      </a>
		    </li>
		
		
	
	
	
		
			
				<li class="active"><a>1</a></li>
			
			
		
	
	
	
	
		
			<li class="disabled">
		      <a aria-label="Next">
		        <span aria-hidden="true">»</span>
		      </a>
		    </li>
		
		
	
	
	
	
	<li class="disabled"><a>共2条 1页</a></li>
</ul>

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
