<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_resume.aspx.cs" Inherits="Web.Personal.user_resume" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>猿圈 填写简历</title>
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

<link href="./Resource_files/fileinput.min.css" rel="stylesheet">
<link rel="stylesheet" href="./Resource_files/bootstrapValidator.min.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<style type="text/css">
.center {
	text-align: center;
}
/*#sina {
                background-image:url("img/sina.png");
            }
            #sina:hover img{
                background-image:url("img/sina.png");
            } */
</style>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style>
</head>
<body>
    <form id="userResumeForm" runat="server">
    	
	







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
				<li class="active">
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
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<div class="alert alert-info">完善信息后才可以接受挑战或者查看练习项目呦~</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<section id="middle">
					<form id="defaultForm" method="post" class="form-vertical bv-form" action="javascript:void(0)" enctype="multipart/form-data" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
						<input type="hidden" value="Bzj4THeNEcjSF6uDXvWpE6fSFP9OTHfSbv1ybdfxED9ObH7pXzfKEZ09kgT5bvYpfcAunhe1khX1lhq2kDq1kDq1" name="callback">
						<div class="form-group">
							<h3 class="grey">真实姓名</h3>
                            <asp:TextBox ID="tboxName" runat="server" class="form-control" placeholder="真实姓名" ></asp:TextBox>
						<small class="help-block" data-bv-validator="notEmpty" data-bv-for="name" data-bv-result="NOT_VALIDATED" style="display: none;">请输入姓名</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="name" data-bv-result="NOT_VALIDATED" style="display: none;">真实姓名只可以是2到6个字符</small><small class="help-block" data-bv-validator="regexp" data-bv-for="name" data-bv-result="NOT_VALIDATED" style="display: none;">请输入中文</small></div>
						<div class="form-group">
							<h3 class="grey">年龄</h3>
                            <asp:TextBox ID="tboxAge" runat="server" class="form-control" placeholder="年龄" ></asp:TextBox>
						</div>
						<div class="form-group">
							<h3 class="grey">性别</h3>
                            <asp:RadioButtonList ID="rbtnListSex" runat="server">
                                <asp:ListItem Value="0">男</asp:ListItem>
                                <asp:ListItem Value="1">女</asp:ListItem>
                            </asp:RadioButtonList>
							<!--div>
								<label class="radio-inline" for="example-inline-radio1">
									<input type="radio" id="example-inline-radio1" name="sex" value="0" data-bv-field="sex"> 男
								</label> <label class="radio-inline" for="example-inline-radio2">
									<input type="radio" id="example-inline-radio2" name="sex" value="1" data-bv-field="sex"> 女
								</label>
							</div-->
						<small class="help-block" data-bv-validator="notEmpty" data-bv-for="sex" data-bv-result="NOT_VALIDATED" style="display: none;">请选择性别</small></!--div>
						<div class="form-group">
                            <h3 class="grey">手机</h3>
                            <asp:TextBox ID="tboxPhone" runat="server" class="form-control" ></asp:TextBox>
						</div>
						<div class="form-group">
							<h3 class="grey">技术方向</h3>
                            <asp:CheckBoxList ID="cboxListDirection" runat="server">
                                <asp:ListItem Value="1">Java</asp:ListItem>
                                <asp:ListItem Value="2">Android</asp:ListItem>
                            </asp:CheckBoxList>
							<!--div>
								
									
	<label class="radio-inline"> <input type="checkbox" name="directions" value="1" data-bv-field="directions"> Java
	</label>
								
									
	<label class="radio-inline"> <input type="checkbox" name="directions" value="2" data-bv-field="directions"> Android
	</label>
								
									
	<label class="radio-inline"> <input type="checkbox" name="directions" value="3" data-bv-field="directions"> iOS
	</label>
								
									
	<label class="radio-inline"> <input type="checkbox" name="directions" value="4" data-bv-field="directions"> C语言(beta)
	</label>
								
									
	<label class="radio-inline"> <input type="checkbox" name="directions" value="5" data-bv-field="directions"> C++(beta)
	</label>
								
	<br>
	<label class="radio-inline"> <input type="checkbox" name="directions" value="6" data-bv-field="directions"> php(beta)
	</label>
								
									
	<label class="radio-inline"> <input type="checkbox" name="directions" value="7" data-bv-field="directions"> Python(beta)
	</label>
								
							</div-->
							<span class="help-block has-error" id="hint_directions"><small class="help-block" data-bv-validator="notEmpty" data-bv-for="directions" data-bv-result="NOT_VALIDATED" style="display: none;">请选择技术方向</small></span>
						</div>
						<div class="form-group">
							<h3 class="grey">现在是否求职</h3>
							<p style="color: #777;">若选择求职状态，企业就可以看到你的联系方式及报告详情，同时猿圈会将您推荐到更多企业，助你极速入职。</p>
                            <asp:RadioButtonList ID="rbtnListHunting" runat="server">
                                <asp:ListItem Value="0" Selected="True">是</asp:ListItem>
                                <asp:ListItem Value="1">否</asp:ListItem>
                            </asp:RadioButtonList>
							<!--div>
								<label class="radio-inline"> <input checked="" type="radio" onclick="hideResumeFile(true)" name="jobstate" value="1" data-bv-field="jobstate">
									是
								</!--label> <label class="radio-inline"> <input type="radio" onclick="hideResumeFile(false)" name="jobstate" value="0" data-bv-field="jobstate">
									否
								</label> <input type="hidden" value="1" id="jobstate_id_hide">
							</div-->
						<small class="help-block" data-bv-validator="notEmpty" data-bv-for="jobstate" data-bv-result="NOT_VALIDATED" style="display: none;">是否求职？</small></div>
						
						<div class="form-group" id="resume_file_div_id" style="display: block;">
							<h3 class="grey">附件简历</h3>
                            <asp:FileUpload ID="resumeUpload" runat="server" />
						</div>
						<div class="form-group">
							<span id="view_error" class="help-block"></span>
						</div>
						<div class="form-group form-actions pull-right">
                            <asp:Button ID="btnSubmit" runat="server" Text="保存" class="btn btn-new1 btn-lg" style="border-radius: 3px;"/>
						</div>
					</form>
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
	<script src="./Resource_files/bootstrapValidator.min.js"></script>
	<script src="./Resource_files/bootstrapValidator_zh_CN.js"></script>
	
	<script type="text/javascript" src="./Resource_files/jquery.form.js"></script>
	
	<script src="./Resource_files/jquery.cityselect.js"></script>
	
	<script src="./Resource_files/fileinput.min.js"></script>
	<script src="./Resource_files/fileinput_locale_zh.js"></script>
	
	<script src="./Resource_files/zmUtil.js"></script>
	<script type="text/javascript">
	    function hideResumeFile(obj) {
	        if (obj) {
	            $("#jobstate_id_hide").val(1);
	            $("#resume_file_div_id").show();
	            $("#resume_loc_div_id").show();
	        } else {
	            $("#resume_file_div_id").hide();
	            $("#resume_loc_div_id").hide();
	            $("#jobstate_id_hide").val(0);
	        }
	    }
	    function modify_hide_resume(obj) {
	        $("#resume_hide_id").val($(obj).val());
	        $("#error2").hide();
	        $("#sub_btn_id").attr("disabled", false);
	    }
	    $(document)
				.ready(
						function () {
						    var province = "";
						    var city = "";
						    var region = "";
						    if ($Util.isEmpty(province)) {
						        province = "北京市";
						        city = "北京市";
						        region = "海淀区";
						    }
						    $("#warp").citySelect({
						        url: "dev/pluginJs/cityselect/cc.json",
						        prov: province,
						        city: city,
						        dist: region

						    });
						    var resume_file_path = "";
						    var initalPreview = "";
						    if (!$Util.isEmpty(resume_file_path)) {
						        initalPreview = "<object data='" + resume_file_path + "' type='application/pdf' width='160px' id='resume_file_old' height='160px'>";
						    }
						    $("#corp-pic")
									.fileinput(
											{
											    showUpload: false,
											    showRemove: false,
											    browseLabel: "选择文件",
											    previewFileIcon: "<i class='fa fa-file'></i>",
											    allowedPreviewTypes: null,
											    allowedFileExtensions: ["pdf"],
											    maxFileSize: 3072,
											    previewFileIconSettings: {
											        "pdf": "<i class='fa fa-file-pdf-o text-danger'></i>"
											    },
											    elErrorContainer: "#hint2",
											    initialPreview: initalPreview
											});
						    $("#defaultForm")
									.bootstrapValidator(
											{
											    message: "This value is not valid",
											    fields: {
											        name: {
											            validators: {
											                notEmpty: {
											                    message: "请输入姓名"
											                },
											                stringLength: {
											                    min: 2,
											                    max: 6,
											                    message: "真实姓名只可以是2到6个字符"
											                },
											                regexp: {
											                    regexp: /^[\u4E00-\u9FA5]+$/,
											                    message: "请输入中文"
											                }
											            }
											        },
											        sex: {
											            validators: {
											                notEmpty: {
											                    message: "请选择性别"
											                }
											            }
											        },
											        age: {
											            validators: {
											                notEmpty: {
											                    message: "请输入年龄"
											                },
											                regexp: {
											                    regexp: /^[0-9]+$/,
											                    message: "请输入数字"
											                },
											                between: {
											                    min: 1,
											                    max: 100,
											                    message: "年龄应在1到100之间"
											                }
											            }
											        },
											        phone: {
											            container: '#hint5',
											            validators: {
											                notEmpty: {
											                    message: "请输入手机"
											                },
											                phone: {
											                    message: "请输入正确的联系方式",
											                    country: "CN"
											                }
											            }
											        },
											        email: {
											            validators: {
											                notEmpty: {
											                    message: '请输入邮箱地址'
											                },
											                emailAddress: {
											                    message: '请输入正确的邮箱格式'
											                }
											            }
											        },
											        directions: {
											            container: "#hint_directions",
											            validators: {
											                notEmpty: {
											                    message: "请选择技术方向"
											                }
											            }
											        },
											        jobstate: {
											            validators: {
											                notEmpty: {
											                    message: "是否求职？"
											                }
											            }
											        },
											        province: {
											            container: "#hint_work_add",
											            validators: {
											                notEmpty: {
											                    message: "请选择工作地点"
											                }
											            }
											        },
											        city: {
											            container: "#hint_work_add",
											            validators: {
											                notEmpty: {
											                    message: "请选择工作地点"
											                }
											            }
											        },
											        region: {
											            container: "#hint_work_add",
											            validators: {
											                notEmpty: {
											                    message: "请选择工作地点"
											                }
											            }
											        }
											    }
											})
									.on(
											"success.form.bv",
											function (e) {
											    e.preventDefault();
											    var $form = $(e.target);
											    $form
														.data("bootstrapValidator");
											    if ($Util.isEmpty($(
														"#resume_hide_id")
														.val())
														&& $(
																"#jobstate_id_hide")
																.val() == "1") {
											        $("#error2").show();
											        return false;
											    }
											    if (!$Util.isEmpty($("#hint2")
														.aspx())) {
											        $("#sub_btn_id").attr(
															"disabled", true);
											        return false;
											    }
											    $("#defaultForm")
														.ajaxSubmit(
																{
																    type: "post",
																    url: "user/info/save_user_info.aspx",
																    success: function (
																			data) {
																        data = eval('('
																				+ data
																				+ ')');
																        if (data.su) {
																            location.href = data.url;

																        } else if (data.error) {
																            $
																					.alert({
																					    title: "网络错误!",
																					    content: data.msg,
																					    confirm: function () {
																					        /* location.href = "user/info/user_center.aspx"; */
																					    }
																					});
																        } else {
																            var html = "<small class='help-block' style='color:red;' data-bv-validator='notEmpty' data-bv-for='cooper_licence' data-bv-result='INVALID'>"
																					+ data.msg
																					+ "</small>";
																            $(
																					"#view_error")
																					.aspx(
																							html);
																        }
																    }
																});
											});
						});
	</script>


    </form>
</body>
</html>
