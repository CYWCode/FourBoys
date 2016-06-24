<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChallengeManagement.aspx.cs" Inherits="Web.ChallenageManagament" %>

<!DOCTYPE html>
<!-- saved from url=(0053)http://www.oxcoder.com/user/recruit/user_recruit.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://www.oxcoder.com:80/">--><base href=".">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 挑战管理</title>
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
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>
<body>

     <script language="javascript">
         var i = 0;
         var jobSalary = new Array();

         <%
        for(int k=0;k<l.Count;k++){
         %>
         jobSalary.push("<%=l[k].jobSalary%>");
        <%
        }
         %>
         
         function add() {
             
            
             var label = document.getElementById("pay");
             label.innerHTML = jobSalary[i];
            

             var div1 = document.getElementById("abc");
             var divParent = div1.parentNode;
             var clone = div1.cloneNode(true);
             //设置id属性保证其不重复
             clone.id = "abc" + i;
             i++;
             divParent.appendChild(clone);
             
            
         }</script>
				
	
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
					<a href="ChallengeManagement.aspx">首页</a>
				</li>
				<li class="active">
					<a href="ChallengeManagement.aspx">挑战</a>
				</li>
				<li class="">
					<a href="http://www.oxcoder.com/user/info/user_center.html">个人中心</a>
				</li>
				<li class="">
					<a href="Personal/user_resume.aspx">个人简历</a>
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
							<a href="http://www.oxcoder.com/user/info/account_binding.html">帐号设置</a>
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

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section id="middle" class="col-md-12 col-no-left-padding">
					<h2 class="h2-tab">
						<a href="ChallengeManagenment.aspx" class="">我接受的挑战</a>
					</h2>
					<h2 class="h2-tab">
						<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=true" class="off">挑战历史</a>
					</h2>
				</section>
			</div>
			<div class="col-md-12 col-no-left-padding">
				<section id="Section1" class="col-md-12">
					<div class="btn-group" style="margin-bottom: 10px;">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							全部
							<span class="caret"></span>
						</button>
						<input id="is_history_id" value="false" type="hidden">
						<input id="user_state_id" value="" type="hidden">
						<ul class="dropdown-menu">
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false">全部</a>
							</li>
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false&amp;userState=0">未完成的挑战</a>
							</li>
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false&amp;userState=1">通过的挑战</a>
							</li>
							<li>
								<a href="http://www.oxcoder.com/user/recruit/user_recruit.html?isHistory=false&amp;userState=3">不通过的挑战</a>
							</li>
						</ul>
					</div>
				</section>
				
               
					
				
					<div id ="abc" class="col-md-3">
						<section id="Section3">
							<div class="panel panel-default shadow-effect" style="background-image:url();background-repeat:no-repeat;background-position:90% 55%;">
								<div class="col-xs-12 panel-header">
									<div class="pull-left">
										<h4 class="line-control">
										<a>[中级]iOS工程师</a>
										</h4>
										<h4 class="line-control" style="min-height:18px;">
											<a href="http://www.oxcoder.com/user/cooper_info.html?cooperId=162">海量信息</a>
										</h4>
									</div>
									<div class="pull-right client-info">
										<span class="percent text-danger">
											<img class="img-circle" style="width:60px;height:60px" src="./ChallengeResource/eeabdb21-0363-4094-860f-c8142b40d143.png">
										</span>
									</div>
									
								</div>
	
								<div class="panel-body ">
									<ul class="list-unstyled">
										<li>月薪： 
											<label id="pay"></label>  
										</li>
										<li>试题数量：3</li>
										<li>
											<i class="fa fa-calendar"></i>
											2016.03.14~2016.05.14
										</li>
										<li>
											<i class="fa fa-user"></i>
											964人已接受挑战
										</li>
										<li class="progress-info">
													<span class="ongoing">&nbsp;</span>

										</li>
										
											<li class="progress-info">&nbsp;</li>				
									</ul>
								</div>
								<!-- /.panel-body -->
								<div class="panel-footer align-center">
											<a href="http://www.oxcoder.com/user/recruit/start_recruit.html?userRecruitId=102455">
												<button class="btn btn-new1" onclick="fdisabled(this)">开始挑战</button>
											</a>
											<a href="http://www.oxcoder.com/user/recruit/abandon_recruit.html?userRecruitId=102455" onclick="fdisabled(this)" class="btn btn-new2">放弃</a>							
								</div>
								<!-- /.panel-footer -->
							</div>
						</section>
					</div>

               <script language="javascript">
                   var s = "<%= l.Count  %>";
                   for (var q = 0; q < s; q++) {
                       add();
                   }
                   var div1 = document.getElementById("abc");
                   var divParent = div1.parentNode;
                   divParent.removeChild(div1);
               </script>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer"></footer>
	<script src="./ChallengeResource/jquery-1.11.0.min.js"></script>
	<script src="./ChallengeResource/bootstrap.min.js"></script>
	<script src="./ChallengeResource/jquery.sparkline.min.js"></script>
	<script src="./ChallengeResource/bootstrap-switch.min.js"></script>
	<script src="./ChallengeResource/bootstrap-select.min.js"></script>
	<script src="./ChallengeResource/bootstrap-filestyle.js"></script>
	<script src="./ChallengeResource/summernote.min.js"></script>
	<script src="./ChallengeResource/script.js"></script>
	<script type="text/javascript" src="./ChallengeResource/pagination.js"></script>
	<script src="./ChallengeResource/zmUtil.js"></script>
	<script type="text/javascript">
	    var page = 1;
	    $PageCtrl.callBackFun = userRecruitPageTurn;
	    function userRecruitPageTurn(pCode) {
	        location.href = "/user/recruit/user_recruit.html?pageCode=" + pCode + "&isHistory=" + $("#is_history_id").val() + "&userState=" + $("#user_state_id").val();
	    }
	    function fdisabled(obj) {
	        $(obj).attr("disabled", true);
	    }
	</script>

</body></html>