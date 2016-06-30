<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="true" CodeBehind="oxcoder_Register.aspx.cs" Inherits="Web.Login_Register.oxcoder_Register" %>



<!DOCTYPE html>
<!-- saved from url=(0033)http://www.oxcoder.com/signup.htm -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat ="server">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="description" content=""/>
<meta name="author" content="BootstrapStyler"/>

<title>猿圈 注册</title>

<!-- Bootstrap core CSS -->
<link href="http://www.oxcoder.com/bootstrap/css/bootstrap.min.css?v=3.1.0" rel="stylesheet"/>

<!-- Font Awesome CSS -->
<link href="http://www.oxcoder.com/fonts/font-awesome/css/font-awesome.min.css?v=4.0.3" rel="stylesheet"/>

<!-- Bootstrap Switch -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-switch.min.css?v=3.0.0" rel="stylesheet"/>

<!-- Bootstrap Select -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-select.min.css" rel="stylesheet"/>

<!-- Summernote -->
<link href="http://www.oxcoder.com/css/libs/summernote.css" rel="stylesheet"/>
<link href="http://www.oxcoder.com/css/libs/summernote-bs3.css" rel="stylesheet"/>

<!-- IcoMoon CSS -->
<link href="http://www.oxcoder.com/fonts/icomoon/style.css?v=1.0" rel="stylesheet"/>

<!-- Custom styles for this template -->
<!-- <link href="css/styler/style.css" rel="stylesheet" type="text/css"> -->


<!-- Sign In and Sign Up page styling -->
<link href="http://www.oxcoder.com/css/styler/signin.css" rel="stylesheet"/>
<link href="./oxcoder_register_files/style_new.css" rel="stylesheet" type="text/css"/>

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css">
        body {
            background-color: #4A90E2;
        }
        .panel-title img {
            max-height: 70px;
        }
        .nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus {
          color: #4A90E2;
          background-color: #4A90E2;
          border: 1px solid #4A90E2;
          border-radius: 0;
        }
        .nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus {
          color: #4A90E2;
          background-color: #fff;
          border-radius: 0;
        }
        .footer-log{
            margin-bottom:20px;; text-align:center; color:#fff;
        }
        .footer-log a{
            color:#fff;
            padding-left: 10px;
            margin-left: 10px;
            border-left: 1.5px solid #fff;
        }
        .footer-log a:visited{
            color:#fff;
        }
        
       
        </style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><script id="__tk2__seajsnode" charset="utf-8" async="" src="./oxcoder_register_files/sea.js"></script><link rel="stylesheet" type="text/css" href="./oxcoder_register_files/tmt.css"></head>

<body>
        <form id="form1" runat="server">

        <!--div -->
	<div class="container" style="margin-top: 160px; margin-left:450px;">
		<div class="row">
			<div class="col-md-8 col-md-push-2 col-xs-12 col-sm-12">
				<section id="middle">

					<div id="content" class="signin-page">

						<div class="panel-group" id="signin-page">

							<h3 class="panel-title" style="color: #fff;font-size: 2.4em;padding: 25px 25px 10px;text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);"><img src="./oxcoder_register_files/wlogo.png">猿圈注册</h3>
							<div class="panel panel-outline panel-no-padding" style="border: none;">
								<div id="signin" class="panel-collapse collapse in">
									<div class="panel-body col-md-6">
										   




										


                                       <!-- here -->     <button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
											<input type="hidden" id="regflag" name="regflag" value="1"/>
											<div class="form-group">
												<div class="col-xs-12">
													<div class="input-group" style="margin-left:50px;">
														<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                                        <asp:TextBox ID="TextBox1" name="email" class="form-control input-lg" placeholder="请输入常用邮箱地址" data-bv-field="email" runat="server"></asp:TextBox> 
                                                        <!-- <input type="text" id="login-email" name="email" class="form-control input-lg" placeholder="请输入常用邮箱地址" data-bv-field="email">-->
													</div>
												</div>
											</div>

											<div class="form-group" style="margin-left:50px;">
												<div class="col-xs-12">
													<div class="input-group">
														<span class="input-group-addon"><i class="fa fa-key"></i></span>
                                                        <asp:TextBox ID="TextBox2" type="password" name="pwd" class="form-control input-lg" placeholder="请输入密码" data-bv-field="pwd" runat="server"></asp:TextBox>
                                                            <!--<input  type="password"  id="login-password"  name="pwd"  class="form-control input-lg"  placeholder="请输入密码"  data-bv-field="pwd">-->
													</div>
												</div>
											</div>

											<div class="col-xs-12" style="margin-left: 50px;">
												<label> <input type="checkbox" id="agreement" name="check" data-bv-field="check"/>
                                                     <small>我已阅读并同意<a href="http://www.oxcoder.com/oxcoder_license.htm" target="_blank">《oxcoder用户协议》</a></small>
												</label> <span class="help-block has-error" id="hint1" style="margin-left: 20px;">
                                                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮箱地址</small><small class="help-block" data-bv-validator="emailAddress" data-bv-for="email" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮箱格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">请输入密码</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="pwd" data-bv-result="NOT_VALIDATED" style="display: none;">密码应大于6位，小于30位</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="check" data-bv-result="NOT_VALIDATED" style="display: none;">请同意用户协议</small></span> <span class="help-block has-error" style="margin-left: 20px;" id="hint2"> <small class="help-block"></small>
												</span>
											</div>



                                         <div class="panel-body col-md-6" style="padding-left: 50px;width:200px;">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" BorderColor="White" Width="250.21739149093628px" BorderStyle="Dotted" BackColor="White" BorderWidth="10px" ForeColor="#3366CC" Height="50px"  >

                                                    <asp:ListItem Value="1" Selected="True">开发者</asp:ListItem>

                                                    <asp:ListItem Value="0">企业</asp:ListItem>

                                                </asp:RadioButtonList>
                                            </div>





											<div class="col-xs-12">
												<asp:Button ID="Button1" class="btn btn-primary btn-lg" Style="margin-left: 50px; border-radius: 3px;" runat="server" Text="注册" OnClick="Button1_Click" OnClientClick="return  _check()" />
											</div>
											<div class="col-xs-12"></div>
										


									</div>
									<!-- /.panel-body -->
									<div class="panel-body col-md-6" style="float:left; margin-left:30px;">
										<div style="margin: 20px;">
											<p class="align-left" style="font-size: 16px; color: #666;">
												已有帐号?<a href="oxcoder_login.aspx">直接登录</a>
											</p>
											<img src="./oxcoder_register_files/01.png" width="250" class="hidden-xs" />
										</div>
									</div>
									<!-- /.panel-body -->
								</div>
								<!-- /.panel-collapse -->
							</div>
							<!-- /.panel -->
						</div>
					</div>
					<!-- /#content -->

				</section>
			</div>
			<!-- /.col-md-10 -->

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->


	<!-- jQuery -->
	<script src="./oxcoder_register_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./oxcoder_register_files/bootstrap.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./oxcoder_register_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./oxcoder_register_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./oxcoder_register_files/bootstrap-filestyle.js"></script>

	<!-- Sparkline -->
	<script src="./oxcoder_register_files/jquery.sparkline.min.js"></script>

	<!-- Summernote -->
	<script src="./oxcoder_register_files/summernote.min.js"></script>


	<!-- Theme script -->
	<script src="./oxcoder_register_files/script.js"></script>

	<script src="./oxcoder_register_files/bootstrapValidator.js"></script>

	<script type="text/javascript">
	    $(document).ready(function () {
	        $("#li-work").click(function () {
	            $("#regflag").val(1);
	        });
	        $("#li-person").click(function () {
	            $("#regflag").val(2);
	        });

	        $('#defaultForm').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                email: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入邮箱地址'
	                        },
	                        emailAddress: {
	                            message: '请输入正确的邮箱格式'
	                        }
	                    }
	                },
	                pwd: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入密码'
	                        },
	                        stringLength: {
	                            min: 6,
	                            max: 30,
	                            message: '密码应大于6位，小于30位'
	                        }
	                    }
	                },
	                checkcode: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入邀请码'
	                        }
	                    }
	                },
	                check: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请同意用户协议'
	                        }
	                    }
	                }
	            }
	        });
	    });
	</script>
        
 <script id="J---TK-load" type="text/javascript" charset="utf-8" async="" data-id="8080010020140313" data-guid="86C80E4600881A2E5929717A98242191" data-source="360Se" data-browser="360se" data-version="2.1.1" data-message="1" src="./oxcoder_register_files/_tts_browser_center.js">

</script>
<div id="__xfz_ext_flag" _bgt_title="猿圈 注册">
 </div>
<div id="TK-log">
    <img src="./oxcoder_register_files/statistics.do" width="0" height="0" style="display: none;" />
</div> 
    
        </form>
       
        </body>

</html>