<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Challenge.aspx.cs" Inherits="Web.PersonCenter.Challenge" %>

<!DOCTYPE html>
<!-- saved from url=(0077)http://www.oxcoder.com/user/api/challenge_auth_check.html?userRecruitId=99333 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://www.oxcoder.com:80/">--><base href=".">
<title>猿圈 挑战</title>

<style type="text/css">
html,body,.full {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0
}

#tob-bar {
	width: 80px;
	height: 30px;
	top: 18px;
	left: 0;
	position: fixed;
	z-index: 10000;
	text-align: center;
	color: #fff;
}
#back-a {
	color: #fff;
}
#if-api {
	background: #aaa;
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1000;
	height: 100%;
}
</style>
<!-- Bootstrap core CSS -->
<link href="./ChallengeResource/Challenge/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="./ChallengeResource/Challenge/jquery-2.1.4.js"></script>
<script type="text/javascript" src="./ChallengeResource/Challenge/cometd.js"></script>
<script type="text/javascript" src="./ChallengeResource/Challenge/jquery.cometd.js"></script>
<script type="text/javascript" src="./ChallengeResource/Challenge/api-iframe.js"></script>
<script type="text/javascript">
    var config = {
        contextPath: ''
    };
</script>
</head>
<body style="position: relative; overflow: hidden; width: 100%; height: 100%; margin: 0px;" onmousewheel="top.document.body.scrollTop-=event.wheelDelta">
	<div class="container" id="container-loading" style="display: none;">
		<div class="row">
			<div id="col-md-12 oxcoderLoading ">
				<div class="alert alert-info text-center"><h3>正在载入</h3></div>
			</div>
		</div>
	</div>
	
	<input id="input-typeDev" type="hidden" value="challenge">
	
		
			
			<!-- <iframe
				id="if_api" style="width: 100%; height: 100%" src=""></iframe> -->
			<script type="text/javascript">
			    oxCompiler.reid = "3046";
			    oxCompiler.backURL = "javascript:history.go(-1)";
			    oxCompiler.user_token = "741e8129f80e43daad5c1c3b47f640fd";
			    oxCompiler.access_token = "65186f78a29d4f91b87d2f386abb1531";
			    oxCompiler.compilerURL = "http://122.115.40.172:8888/OxcoderDev";
			    oxCompiler.set_hook('onCompileFinished', function (msg) {
			        location.replace("/user/recruit/callback_user_recruit.html?recruitId=3046");
			    });
			    oxCompiler.initConnection();
			</script>
			<div id="oxCompiler" style="width: 100%; height: 100%; margin: 0px; position: relative;"><div id="ox-top-bar" style="width: 80px; height: 30px; top: 18px; left: 0px; position: fixed; z-index: 10000; text-align: center; color: rgb(255, 255, 255);"><a id="back-a" href="javascript:history.go(-1)" style="color: rgb(255, 255, 255); text-decoration: none;"> &lt;&lt; 返回</a></div><iframe onload="oxCompiler.initUI()" id="if_api" style="width: 100%; height: 100%;" src="./猿圈 挑战_files/codingPage.html"></iframe></div>
		
		
	
	<script>
	    setInterval(heartbeat, 30000);
	    function heartbeat() {
	        $.ajax({
	            url: "heartbeat.html",
	            success: function (data) {

	            }, error: function () {

	            }

	        });
	    }

	</script>


</body></html>