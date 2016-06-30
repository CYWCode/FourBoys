<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new_recruit_1.aspx.cs" Inherits="Web.Enterprise.new_recruit_1" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>猿圈 新增挑战邀请</title>
<link href="./Resource_files/bootstrap.min.css" rel="stylesheet">
<link href="./Resource_files/font-awesome.min.css" rel="stylesheet">
<link href="./Resource_files/bootstrap-switch.min.css" rel="stylesheet">
<link href="./Resource_files/bootstrap-select.min.css" rel="stylesheet">
<link href="./Resource_files/style.css" rel="stylesheet">
<link href="./Resource_files/summernote.css" rel="stylesheet">
<link href="./Resource_files/summernote-bs3.css" rel="stylesheet">
<link href="./Resource_files/style(1).css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./Resource_files/bootstrapValidator.min.css">

<link rel="stylesheet" href="./Resource_files/jquery-confirm.min.css">
<!-- Max css -->
<link href="./Resource_files/style_new.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
.level-tag {
	border: 1px solid #efefef;
}
.active .panel {
	background-color: #eee;
}
@media ( min-width : 768px) {
	.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
		width: 20%;
		*width: 20%;
	}
}
@media ( min-width : 1200px) {
	.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
		width: 20%;
		*width: 20%;
	}
}
@media ( min-width : 768px) and (max-width: 979px) {
	.fivecolumns .col-md-2,.fivecolumns .col-sm-2,.fivecolumns .col-lg-2 {
		width: 20%;
		*width: 20%;
	}
}
</style>
<link href="./Resource_files/WdatePicker.css" rel="stylesheet" type="text/css"><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><link href="file:///C:/Users/chenyu.yqwang/Desktop/Workspace/%E7%82%B9net/%E7%BD%91%E9%A1%B5/%E4%BC%81%E4%B8%9A%E7%94%A8%E6%88%B7/%E7%8C%BF%E5%9C%88%20%E6%96%B0%E5%A2%9E%E6%8C%91%E6%88%98%E9%82%80%E8%AF%B7_files/skin/WdatePicker.css" rel="stylesheet" type="text/css"><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body>
    <form id="newRecruit1" runat="server">
    
        

        
<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
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
					<a href="oxcoder_corp_index.aspx">首页</a>
				</li>
				<li class="">
					<a href="index.aspx">挑战管理</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- FIXME -->
						<span class="text">
							
								
								
								
									UserName
								
							
						</span>
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="cooperInfo/view_cooper_info.aspx">企业信息</a>
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
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-9 profile-stream">
								<div class="page-header row">
									<div class="col-md-12 col-no-left-padding">
										<h3 style="display: inline-block;float: left;">新增挑战邀请</h3>
										
									</div>
								</div>
								<div class="page-body">
									<div class="row">
										<form id="new_challenge_form_1" method="post" class="form-horizontal bv-form" action="" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
											<input name="direction" id="directions_id" value="1" type="hidden">
											<input name="level" id="level_id" value="6" type="hidden">
											<h4 class="col-md-12 col-no-left-padding">请选择挑战类型</h4>
											<div class="fivecolumns">
												
													<div class="col-md-3 col-no-left-padding test" onclick="selectDirection(&#39;1&#39;)">
														<div id="a-Java" data-toggle="pill" style="cursor: pointer;">
															<div class="panel panel-default shadow-effect ">
																<div class="panel-body">
																	<div class="row" style="text-align: center;">
																		<h3>
																			
																			<img style="width:64px;height:64px" src="./Resource_files/java.png">
																			Java
																		</h3>
																	</div>
																</div>
															</div>
														</div>
													</div>
												
													<div class="col-md-3 col-no-left-padding test" onclick="selectDirection(&#39;2&#39;)">
														<div id="a-Android" data-toggle="pill" style="cursor: pointer;">
															<div class="panel panel-default shadow-effect ">
																<div class="panel-body">
																	<div class="row" style="text-align: center;">
																		<h3>
																			
																			<img style="width:64px;height:64px" src="./Resource_files/android.png">
																			Android
																		</h3>
																	</div>
																</div>
															</div>
														</div>
													</div>
												
											</div>
											<h4 class="col-md-12 col-no-left-padding">请选择挑战等级(按薪资划分)</h4>
											<ul class="nav nav-pills nav-justified col-md-12 col-no-left-padding">
												
													<li class="level-tag" onclick="selectLevel(&#39;1&#39;)">
														<a href="javascript:void(0)" data-toggle="pill">2K~5K</a>
													</li>
												
													<li class="level-tag" onclick="selectLevel(&#39;2&#39;)">
														<a href="javascript:void(0)" data-toggle="pill">5K~8K</a>
													</li>
												
													<li class="level-tag" onclick="selectLevel(&#39;3&#39;)">
														<a href="javascript:void(0)" data-toggle="pill">8K~10K</a>
													</li>
												
													<li class="level-tag" onclick="selectLevel(&#39;4&#39;)">
														<a href="javascript:void(0)" data-toggle="pill">10K~12K</a>
													</li>
												
													<li class="level-tag" onclick="selectLevel(&#39;5&#39;)">
														<a href="javascript:void(0)" data-toggle="pill">12K~15K</a>
													</li>
												
													<li class="level-tag" onclick="selectLevel(&#39;6&#39;)">
														<a href="javascript:void(0)" data-toggle="pill">15K以上</a>
													</li>
												
											</ul>
											<div class="form-group form-actions col-md-12 col-no-left-padding">
												<span class="help-block has-error">
													<small style="margin-left: 20px; display: none;" id="hint1" class="help-block">请选择挑战类型及等级</small>
												</span>
												<div class="align-center">
													<button id="new_challenge_btn_1" class="btn btn-new1" type="submit">确定</button>
												</div>
											</div>
										</form>
									</div>
									<!--/.row   -->
								</div>
							</div>
							<div class="col-md-3 profile-info" id="profile_info_div">




<!-- /.panel -->
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
	<!-- /.container -->
	<!-- 引入footer -->
	
	<script src="./Resource_files/jquery-1.11.0.min.js"></script>
	<script src="./Resource_files/bootstrap.min.js"></script>
	<script src="./Resource_files/jquery.sparkline.min.js"></script>
	<script src="./Resource_files/bootstrap-switch.min.js"></script>
	<script src="./Resource_files/bootstrap-select.min.js"></script>
	<script src="./Resource_files/bootstrap-filestyle.js"></script>
	<script src="./Resource_files/summernote.min.js"></script>
	<script type="text/javascript" src="./Resource_files/WdatePicker.js"></script>
	<script src="./Resource_files/script.js"></script>
	<script src="./Resource_files/bootstrapValidator.min.js"></script>
	<script src="./Resource_files/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="./Resource_files/jquery-confirm.min.js"></script>
	
	<script src="./Resource_files/zmUtil.js"></script>
	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#profile_info_div").load("cooper/cooper_left_info.html");
	        $(".test div").click(function (e) {
	            e.preventDefault();
	            $(".test div").removeClass("active");
	            $(this).addClass("active");
	        });
	        $(".level-tag a").click(function (e) {
	            if ($(".active").length = 2) {
	                $("#new_challenge_btn_1").removeAttr("disabled");
	                $("#hint1").hide();
	            } else {
	                $("#new_challenge_btn_1").attr("disabled", "true");
	                $("#hint1").show();
	            }
	        });

	        $("#new_challenge_form_1").bootstrapValidator({
	        }).on("success.form.bv", function (e) {
	            e.preventDefault();
	            var $form = $(e.target);
	            $form.data("bootstrapValidator");
	            if ($Util.isEmpty($("#directions_id").val())) {
	                $("#hint1").html("请选择挑战类型");
	                $("#hint1").show();
	                return false;
	            }
	            if ($Util.isEmpty($("#level_id").val())) {
	                $("#hint1").html("请选择挑战等级");
	                $("#hint1").show();
	                return false;
	            }
	            $.post("cooper/new/recruit/save_new_recruit_1.html", $form.serialize(), function (data) {
	                if (data.su) {
	                    location.href = data.url;
	                } else {
	                    $("#hint1").html(data.msg);
	                }
	            }, "json");
	        });
	    });
	    function selectDirection(obj) {
	        $("#directions_id").val(obj);
	        $("#hint1").hide();
	        $("#new_challenge_btn_1").removeAttr("disabled");
	    };
	    function selectLevel(obj) {
	        $("#level_id").val(obj);
	        $("#hint1").hide();
	        $("#new_challenge_btn_1").removeAttr("disabled");
	    };
	    function go_to_import_job_url() {
	        location.href = "cooper/oxcoder_corp_in.html";
	    }
	</script>

    </form>
</body>
</html>
