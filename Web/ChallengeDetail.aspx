<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChallengeDetail.aspx.cs" Inherits="Web.ChallengeDetail" %>

<!DOCTYPE html>
<!-- saved from url=(0067)http://www.oxcoder.com/user/view_recruit_detail.html?recruitId=3046 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://www.oxcoder.com:80/">--><base href=".">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 挑战详情</title>
<link href="./ChallengeResource/bootstrap.min.css" rel="stylesheet">
<link href="./ChallengeResource/font-awesome.min.css" rel="stylesheet">
<link href="./ChallengeResource/bootstrap-switch.min.css" rel="stylesheet">
<link href="./ChallengeResource/bootstrap-select.min.css" rel="stylesheet">
<link href="./ChallengeResource/style.css" rel="stylesheet">
<link href="./ChallengeResource/summernote.css" rel="stylesheet">
<link href="./ChallengeResource/summernote-bs3.css" rel="stylesheet">
<link href="./ChallengeResource/style(1).css" rel="stylesheet" type="text/css">
<!-- Max css -->
<link href="./ChallengeResource/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
	
	<script src="./ChallengeResource/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="./ChallengeResource/flash.js"></script>
	<script type="text/javascript" src="./ChallengeResource/webcam.js"></script>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
<body>



     <script language="javascript">
         var i = 0;
         var position = new Array();
         var enterpriseTitle = new Array();
         var jobSalary = new Array();
         var questionNumber = new Array();
         var startTime = new Array();
         var deadline = new Array();
         var finishNumber = new Array();

         <%
        for(int k=0;k<l.Count;k++){
         %>
         position.push("<%=l[k].position%>");
         enterpriseTitle.push("<%=l[k].enterpriseTitle%>")
         jobSalary.push("<%=l[k].jobSalary%>");
         questionNumber.push("<%=l[k].questionNumber%>");
         startTime.push("<%=l[k].startTime%>");
         deadline.push("<%=l[k].deadline%>");
         finishNumber.push("<%=l[k].finishNumber%>");
        <%
        }
         %>

         function add(){

              var label1 = document.getElementById("position");
             var label2 = document.getElementById("enterprise");
             var label3 = document.getElementById("jobSalary");
             var label5 = document.getElementById("startTime");
             var label6 = document.getElementById("deadline");
             var label7 = document.getElementById("finishNumber");
             label1.innerHTML = position[0];
             label2.innerHTML = enterpriseTitle[i];
             label3.innerHTML = jobSalary[i];
             label5.innerHTML = startTime[i];
             label6.innerHTML = deadline[i];
             label7.innerHTML = finishNumber[i];
         }
      
    </script>
	

<div class="navbar navbar-default navbar-fixed-top" id="navbar">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/user/index.html" style="padding: 0;">
				<img src="./ChallengeResource/wlogo_sm.png" style="max-height: 35px;margin:7px;">
			</a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="">
					<a href="http://www.oxcoder.com/user/index.html">首页</a>
				</li>
				<li class="">
					<a href="ChallengeManagement.aspx">挑战</a>
				</li>
				<li class="">
					<a href="http://www.oxcoder.com/user/info/user_center.html">个人中心</a>
				</li>
				<li class="">
					<a href="http://www.oxcoder.com/user/info/user_resume.html">个人简历</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown" id="drop_down_nav">
					<a href="http://www.oxcoder.com/#" class="dropdown-toggle" data-toggle="dropdown">
						<span class="text">

									Username
		
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="">帐号设置</a>
						</li>
						<li>
							<a href="http://www.oxcoder.com/security_logout">注销</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>
<!--  -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-12">
								<div class="container-fluid">
									<section>
										<div class="page-header" style="border-bottom: none;">
											<h1>
												<a><label id="position"></label></a> —— <a><label id="enterprise"></label></a>
											</h1>
											<div class="challenge-simple-desc">
												<span class="desc-label">
													月薪：
													
													<a><label id="jobSalary"></label></a>
												</span>
												<span class="desc-label">
													时间：<label id="startTime"></label>~<label id="deadline"></label>
												</span>
												<span class="desc-label">
													<label id="finishNumber"></label>人已接受挑战
												</span>
												<p>

												</p>
											</div>
										</div>

                                        <script language="javascript">
                                           
                                                add();
                                         </script>


										<!-- /.page-header -->
										<div id="Div1">
											<div class="row">
												
													<div class="col-md-4">
														<div class="panel panel-default project">
															<div class="panel-body">
																<div class="row">
																	<div class="col-xs-12">
																		<div class="pull-left">
																			<h4>
																				<a href="javascript:;">
																					字体下载
																				</a>
																			</h4>
																			<h5 class="text-muted">通过内置字体库动态下载苹果提供的多种中文字体
</h5>
																		</div>
																		<div class="pull-right client-info"></div>
																	</div>
																	<!-- /.col-xs-12 -->
																</div>
																<!-- /.row -->
																<hr>
																<h4>开发能力</h4>
																<div class="well">
																	开发人员可以通过内置字体库动态下载苹果提供的多种中文字体。

																</div>
																<a href="javascript:;">
																	by&nbsp; 猿圈团队
																</a>
															</div>
															<!-- /.panel-body -->
															<div class="panel-footer">
																<div class="row">
																	<div class="col-sm-4">
																		<span class="small muted">项目难度</span>
																	</div>
																	<!-- /.col-sm-4 -->
																	<div class="col-sm-8">
																		<p>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																		</p>
																	</div>
																	<!-- /.col-sm-8 -->
																</div>
																<!-- /.row -->
															</div>
															<!-- /.panel-footer -->
														</div>
														<!-- /.panel -->
													</div>
												
													<div class="col-md-4">
														<div class="panel panel-default project">
															<div class="panel-body">
																<div class="row">
																	<div class="col-xs-12">
																		<div class="pull-left">
																			<h4>
																				<a href="javascript:;">
																					手势解锁
																				</a>
																			</h4>
																			<h5 class="text-muted">实现解锁手势密码。
</h5>
																		</div>
																		<div class="pull-right client-info"></div>
																	</div>
																	<!-- /.col-xs-12 -->
																</div>
																<!-- /.row -->
																<hr>
																<h4>开发能力</h4>
																<div class="well">
																	开发者能够熟练掌握Touches事件，并结合Quartz2D绘图。

																</div>
																<a href="javascript:;">
																	by&nbsp; 猿圈团队
																</a>
															</div>
															<!-- /.panel-body -->
															<div class="panel-footer">
																<div class="row">
																	<div class="col-sm-4">
																		<span class="small muted">项目难度</span>
																	</div>
																	<!-- /.col-sm-4 -->
																	<div class="col-sm-8">
																		<p>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																				<i class="fa fa-star"></i>
																			
																		</p>
																	</div>
																	<!-- /.col-sm-8 -->
																</div>
																<!-- /.row -->
															</div>
															<!-- /.panel-footer -->
														</div>
														<!-- /.panel -->
													</div>
												
											</div>
										</div>
									</section>
								</div>
								<div style="text-align: center;" class="col-md-12">
									<a id="btn-run-not-sub" href="Challenge.aspx" class="btn btn-new1">
										接受挑战
									</a>
								</div>
							</div>
						</div>
						<!-- /.row -->
					</div>
					<!-- /#content -->
				</section>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<div id="camera_div"></div>
	<!-- /.container -->
	<script src="./ChallengeResource/bootstrap.min.js"></script>
	<script src="./ChallengeResource/jquery.sparkline.min.js"></script>
	<script src="./ChallengeResource/bootstrap-switch.min.js"></script>
	<script src="./ChallengeResource/bootstrap-select.min.js"></script>
	<script src="./ChallengeResource/bootstrap-filestyle.js"></script>
	<script src="./ChallengeResource/summernote.min.js"></script>
	<script src="./ChallengeResource/script.js"></script>


</body></html>