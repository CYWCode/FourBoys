<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="screening_list.aspx.cs" Inherits="Web.Enterprise.screening_list" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>猿圈 去筛选</title>
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
    <form id="screeningList" runat="server">
    



   
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
				<div class="col-xs-12 col-no-left-padding">
					<h1 class="pull-left">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
					
						
						
							
						
					
				</div>
				<div>
					<span class="help-block has-error">
						<small style="margin-left: 20px; display: none;" id="hint1" class="help-block">请选择挑战类型及等级</small>
					</span>
				</div>
				<small>
					<a href="index.aspx">
						<i class="imoon imoon-arrow-left2"></i>
						返回
					</a>
				</small>
			</div>
			<div class="col-md-12">
				<section id="Section1" style="margin-bottom: 20px;">
					排序：
					<a href="javascript:changeSortFlag(0)" class="btn btn-order active">默认排序</a>
					<a href="javascript:changeSortFlag(1)" class="btn btn-order ">时间</a>
				</section>
			</div>
			<div class="col-md-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>姓名</th>
							<th>挑战结果</th>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
			</div>
			<form id="screening_form" action="screening/user/screening_list.aspx">
				<input type="hidden" id="hid_recruitId" name="recruitId" value="3145">
				<input type="hidden" id="hid_searchName" name="searchName" value="">
				<input type="hidden" id="hid_state" name="state" value="-1">
				<input type="hidden" id="hid_sortFlag" name="sortFlag" value="0">
				<input type="hidden" id="hid_pageCode" name="pageCode" value="1">
				
			</form>
			
  
  

<ul class="pagination">
	
	
	
	
		
			<li class="disabled">
		      <a aria-label="Previous">
		        <span aria-hidden="true">«</span>
		      </a>
		    </li>
		
		
	
	
	
	
	
	
		
			<li class="disabled">
		      <a aria-label="Next">
		        <span aria-hidden="true">»</span>
		      </a>
		    </li>
		
		
	
	
	
	
	<li class="disabled"><a>共0条 0页</a></li>
</ul>

		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<footer id="footer">
		<!-- <div class="container">
                <div class="row">
                    <div class="col-xs-6">
                        <ul class="list-inline">
                            <li>&copy; <a href="index.aspx">Intersect</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-6">
                        <ul class="list-inline social-network">
                            <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                            <li><a href="#"><i class="fa fa-github-square"></i></a></li>
                        </ul>
                    </div>
                </div><!-- /.row -->
		<!-- </div> -->
		<!-- /.container -->
	</footer>
	
	<div class="modal fade modal-new" id="resend" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="myModalLabel">转发报告</h4>
      </div>
      <div class="modal-body">
        <form action="http://www.oxcoder.com/#" id="resendform" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered bv-form" onsubmit="return false;" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
            <div class="form-group">
                <label class="col-md-3 control-label">收件人</label>
                <div class="col-md-9">
                    <input id="email_list" type="email" name="remail" class="form-control" placeholder="最多可添加两个邮箱，用“,“隔开" data-bv-field="remail">
                    <span class="help-block has-error" id="firstNameMessage">
                <small class="help-block" data-bv-validator="emailAddress" data-bv-for="remail" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的邮件格式</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="remail" data-bv-result="NOT_VALIDATED" style="display: none;">请输入邮件</small></span></div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">邮件主题</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" value="【报告来自猿圈】[高级]iOS工程师" disabled="disabled">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">邮件内容</label>
                <div class="col-md-9">
                    <textarea class="form-control" disabled="disabled" rows="3">以下是应聘“[高级]iOS工程师”的报告。我已查阅，请您评估一下。 若觉合适，我们将安排面试，谢谢！</textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" class="btn btn-primary" onclick="send_forward()">转发</button>
            </div>
          </form></div>
        
    </div>
  </div>
</div>
<div class="modal fade modal-new" id="reject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="H1">确认简历不合适</h4>
      </div>
      <div class="modal-body">
        <p>确认这份简历不合适吗？
确认后，系统将自动发送不合适通知邮件至用户邮箱</p>
        <form action="http://www.oxcoder.com/#" method="post" enctype="multipart/form-data" class="form-horizontal form-bordered" onsubmit="return false;">
            <div class="form-group">
                <label class="col-md-3 control-label">邮件主题</label>
                <div class="col-md-9">
                    <input type="text" class="form-control" value="挑战[[高级]iOS工程师]反馈" disabled="disabled">
                    
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">邮件内容</label>
                <div class="col-md-9">
                    <textarea class="form-control" disabled="disabled" rows="3">非常荣幸收到你的简历，招聘方经过评估，认为你与该职位的条件不太匹配，无法进入面试阶段。

相信更好的机会一定还在翘首期盼着你，赶快调整心态，做好充足的准备重新出发吧！</textarea>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" onclick="send_not_accept()">发送</button>
            </div>
          </form></div>
        
    </div>
  </div>
</div>
<div class="modal fade modal-new" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4 class="modal-title" id="H2">转发报告</h4>
      </div>
      <div class="modal-body" style="text-align:center;">
          简历转发成功！
          <button type="button" class="btn btn-primary" data-dismiss="modal">确定</button>
      </div>
       
    </div>
  </div>
</div>
	<script src="./Resource_files/jquery-1.11.0.min.js"></script>
	<script src="./Resource_files/bootstrap.min.js"></script>
	<script src="./Resource_files/jquery.sparkline.min.js"></script>
	<script src="./Resource_files/bootstrap-switch.min.js"></script>
	<script src="./Resource_files/bootstrap-select.min.js"></script>
	<script src="./Resource_files/bootstrap-filestyle.js"></script>
	<script src="./Resource_files/summernote.min.js"></script>
	<script src="./Resource_files/script.js"></script>
	<script src="./Resource_files/bootstrapValidator.min.js"></script>
	
	<script type="text/javascript" src="./Resource_files/pagination.js"></script>
	<script type="text/javascript">
	    $PageCtrl.callBackFun = pageTurn;

	    function changeState(state) {
	        $("#hid_state").val(state);
	        pageTurn(1);
	    }

	    function changeSortFlag(sortFlag) {
	        $("#hid_sortFlag").val(sortFlag);
	        pageTurn(1);
	    }

	    function changeSearchName() {
	        $("#hid_searchName").val($.trim($("#id_searchName").val()));
	        pageTurn(1);
	    }

	    function pageTurn(pageCode) {
	        $("#hid_pageCode").val(pageCode);
	        $("#screening_form").submit();
	    }

	    function closeRecruit(obj) {
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: "cooper/screening/user/close_recruit.aspx",
	            data: { "recruitId": obj },
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.href = data.url;
	                } else if (data.error) {
	                    $.alert({
	                        title: "网络错误!",
	                        content: data.msg,
	                        confirm: function () {
	                            location.href = data.url;
	                        }
	                    });
	                } else {
	                    $("#hint1").aspx(data.msg);
	                    $("#hint1").show();
	                }
	            },
	            error: function (request) {
	                $("#hint1").aspx(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }
	    function openRecruit(obj) {
	        $.ajax({
	            cache: false,
	            type: "post",
	            url: "cooper/screening/user/open_recruit.aspx",
	            data: { "recruitId": obj },
	            success: function (data) {
	                data = eval('(' + data + ')');
	                if (data.su) {
	                    location.href = data.url;
	                } else if (data.error) {
	                    $.alert({
	                        title: "网络错误!",
	                        content: data.msg,
	                        confirm: function () {
	                            location.href = data.url;
	                        }
	                    });
	                } else {
	                    $("#hint1").aspx(data.msg);
	                    $("#hint1").show();
	                }
	            },
	            error: function (request) {
	                $("#hint1").aspx(data.msg);
	                $("#hint1").show();
	            }
	        });
	    }

	    var g_id = -1
	    function set_id(id) {
	        g_id = id;
	    }

	    function send_not_accept() {
	        if (g_id != -1) {
	            $.ajax({
	                cache: false,
	                type: "post",
	                url: "cooper/ajax_send_not_accept_email.aspx",
	                data: { "user_recruit_id": g_id },
	                success: function (data) {
	                    var result = eval("(" + data + ")");
	                    var result_obj = eval("(" + result + ")");
	                    if (result_obj["result"] == true && result_obj["statusCode"] == 200) {
	                        alert("发送成功");
	                        $('#reject').modal('hide');
	                        location.reload();
	                    }
	                    else {
	                        alert("发送失败," + result_obj["message"])
	                    }
	                },
	                error: function (request) {
	                    alert("发送失败")
	                }
	            });
	        }
	    }

	    function send_forward() {
	        var user_list = $("#email_list").val();
	        var user_email_list = user_list.split(",");
	        if (user_email_list.length > 2) {
	            alert("邮箱不能超过两个");
	            return false;
	        }

	        // for(var i = 0; i<user_email_list.length; i++ ){
	        // 	var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	        // 	if(!reg.test(user_email_list[i])) {
	        // 	    alert("请输入有效的邮箱地址！");
	        // 	    return false;
	        // 	}
	        // }
	        var bootstrapValidator = $('#resendform').data('bootstrapValidator');
	        bootstrapValidator.validateField('remail');
	        if (bootstrapValidator.isValidField('remail')) {
	            if (g_id != -1) {
	                $.ajax({
	                    cache: false,
	                    type: "post",
	                    url: "cooper/ajax_send_forward_email.aspx",
	                    data: {
	                        "user_recruit_id": g_id,
	                        "source": 2,
	                        "user_email": user_list
	                    },
	                    success: function (data) {
	                        var result = eval("(" + data + ")");
	                        var result_obj = eval("(" + result + ")");
	                        if (result_obj["result"] == true && result_obj["statusCode"] == 200) {
	                            alert("发送成功");
	                            $('#resend').modal('hide');
	                        }
	                        else {
	                            if (result_obj["message"] == "total email number is over 2") {
	                                alert("发送失败,同一用户转发邮件数目不得超过2!")
	                            } else {
	                                alert("发送失败," + result_obj["message"])
	                            }
	                        }
	                    },
	                    error: function (request) {
	                        alert("发送失败")
	                    }
	                });
	            }
	        }
	    }
	    $(document).ready(function () {
	        $('#resendform').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                remail: {
	                    container: '#firstNameMessage',
	                    validators: {
	                        emailAddress: {
	                            message: '请输入正确的邮件格式',
	                            multiple: 'true'
	                        },
	                        notEmpty: {
	                            message: '请输入邮件'
	                        }
	                    }
	                }
	            }
	        });
	    });


	</script>

    </form>
</body>
</html>
