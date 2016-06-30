<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="PersonInfo.aspx.cs" Inherits="Web.PersonCenter.PersonInfo" %>



<!DOCTYPE html>
<!-- saved from url=(0061)http://www.oxcoder.com/user-resume-operation.action?type=info -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>PersonCenter</title>

<!-- Bootstrap core CSS -->
<link href="http://www.oxcoder.com/bootstrap/css/bootstrap.min.css?v=3.1.1" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="http://www.oxcoder.com/fonts/font-awesome/css/font-awesome.min.css?v=4.0.3" rel="stylesheet">

<!-- Bootstrap Switch -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-switch.min.css?v=3.0.0" rel="stylesheet">

<!-- Bootstrap Select -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-select.min.css" rel="stylesheet">

<!-- IcoMoon CSS -->
<link href="http://www.oxcoder.com/fonts/icomoon/style.css?v=1.0" rel="stylesheet">



<!-- Summernote -->
<link href="http://www.oxcoder.com/css/libs/summernote.css" rel="stylesheet">
<link href="http://www.oxcoder.com/css/libs/summernote-bs3.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./info_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./info_files/style_new.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://www.oxcoder.com/css/libs/bootstrapValidator.css">


<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body style="">

	<!-- 引入header -->
	 <form id="form1" runat="server">

<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/index.htm" style="padding: 0;"><img src="./info_files/wlogo_sm.png" style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
           <!--     <li><a href="http://localhost:63921/PersonalChl_qi/PersonalMain.aspx">首页</a></li>
				<li><a href="~/EnterpriseInfor_kui/Enterprise_account.aspx">挑战</a></li>      -->

                <li><a href="homepage.aspx">首页</a></li>
                

				 <li><a href="Challenge.aspx">挑战</a></li>  

                <!--
                     Response.Redirect("~/EnterpriseInfor_kui/Enterprise_account.aspx");
                    -->
				
				<li class="active"><a href="PersonCenter.aspx">个人中心</a></li>
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
					
					<li class="dropdown"><a href="user.htm#" class="dropdown-toggle" data-toggle="dropdown"><asp:Label ID="username" runat="server" Text=""></asp:Label> <b class="caret"></b></a>
						<ul class="dropdown-menu">
					<!--		<li><a href="http://localhost:63921/PersonCenter/change.aspx">修改密码</a></li>   -->
							<li><a href="Change.aspx">修改密码</a></li>
							<li><a href="oxcoder_login">注销</a></li>
						</ul></li>
				</ul>
			
		</div>
	</div>
</div>
<script type="text/javascript">
    function validateSession() {
        var k = 1
        if (k == null) {
            location.replace("session-timeout-log.htm");
        }
    }
</script>
	<div class="container">
		<div class="row">
			<!--                 <div class="alert alert-info col-md-8 col-md-push-2" role="alert"> -->
			
			<!--                             </div> -->
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<section id="middle">
					<form id="defaultForm" method="post" class="form-vertical bv-form" action="http://www.oxcoder.com/user-info.action" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;" disabled="disabled"></button>

						<div class="form-group">
							<label><h3 class="grey">真实姓名</h3></label><asp:TextBox ID="name"  name="pwd" class="form-control input-lg" placeholder="请输入姓名" data-bv-field="pwd" runat="server"></asp:TextBox>
						<small class="help-block" data-bv-validator="notEmpty" data-bv-for="name" data-bv-result="VALID" style="display: none;">请输入姓名</small></div>

						<div class="form-group">
							<label><h3 class="grey">年龄</h3></label> <asp:TextBox ID="age"  name="pwd" class="form-control input-lg" placeholder="请输入年龄" data-bv-field="pwd" runat="server"></asp:TextBox> <span class="text-danger" id="error1" style="display: none;"></span> <span class="help-block" id="hint1">
						</span><small class="help-block" data-bv-validator="notEmpty" data-bv-for="age" data-bv-result="VALID" style="display: none;">请输入年龄</small><small class="help-block" data-bv-validator="regexp" data-bv-for="age" data-bv-result="NOT_VALIDATED" style="display: none;">请输入数字</small><small class="help-block" data-bv-validator="between" data-bv-for="age" data-bv-result="NOT_VALIDATED" style="display: none;">年龄应在1到100之间</small></div>

						<div class="form-group">
							<label><h3 class="grey">性别</h3></label>
							<div>
								<asp:RadioButtonList ID="sex" runat="server" RepeatDirection="Horizontal" BorderColor="White" Width="250.21739149093628px" BorderStyle="Dotted" BackColor="White" BorderWidth="10px" ForeColor="#3366CC" Height="50px"  >

                                        <asp:ListItem Value="1" Selected="True">男</asp:ListItem>

                                             <asp:ListItem Value="0">女</asp:ListItem>

                                      </asp:RadioButtonList>
							</div>
						<small class="help-block" data-bv-validator="notEmpty" data-bv-for="sex" data-bv-result="VALID" style="display: none;">请选择性别</small></div>

						<div class="form-group has-error">
							<label><h3 class="grey">手机</h3></label> <asp:TextBox ID="tel"  name="pwd" class="form-control input-lg" placeholder="请输入手机号" data-bv-field="pwd" runat="server"></asp:TextBox>
						<small class="help-block" data-bv-validator="notEmpty" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入手机</small><small class="help-block" data-bv-validator="phone" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">正确的联系方式</small></div>
						<div class="form-group form-actions pull-right">
                            <asp:Button ID="Button1" class="btn btn-primary btn-lg" Style="margin-left: 20px; border-radius:10px;width:70px; height:40px;" runat="server" Text="保存" OnClick="Button1_Click" OnClientClick="return  _check()" />
							
						</div>

					</form>


				</section>
			</div>



		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
         </form>

	<!-- jQuery -->
	<script src="./info_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./info_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./info_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./info_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./info_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./info_files/bootstrap-filestyle.js"></script>

	<!-- Summernote -->
	<script src="./info_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./info_files/script.js"></script>

	<script type="text/javascript" src="./info_files/jquery.city.select.js"></script>


	<script src="./info_files/bootstrapValidator.js"></script>

	<script type="text/javascript">
	    $(document).ready(function () {
	        $('#defaultForm').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                name: {
	                    validators: {
	                        notEmpty: {
	                            message: '请输入姓名'
	                        }
	                    }
	                },
	                sex: {
	                    validators: {
	                        notEmpty: {
	                            message: '请选择性别'
	                        }
	                    }
	                },
	                age: {
	                    validators: {
	                        notEmpty: {
	                            message: '请输入年龄'
	                        },
	                        regexp: {
	                            regexp: /^[0-9]+$/,
	                            message: '请输入数字'
	                        },
	                        between: {
	                            min: 1,
	                            max: 100,
	                            message: '年龄应在1到100之间'
	                        }
	                    }
	                },
	                phone: {
	                    validators: {
	                        notEmpty: {
	                            message: '请输入手机'
	                        },
	                        phone: {
	                            message: '请输入正确的联系方式',
	                            country: 'CN'
	                        }
	                    }
	                }
	            }
	        });
	    });
	</script>


	<!-- 引入footer -->
	

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./猿圈 个人信息_files/pic.gif"></a></span><script src="./猿圈 个人信息_files/z_stat.php" type="text/javascript"></script><script src="./猿圈 个人信息_files/core.php" charset="utf-8" type="text/javascript"></script>
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



</body></html>