$("document").ready(
		function() {
			$("#editor").css("font-size", "13px");
			$("#fontsize").change(
					function() {
						document.getElementById('editor').style.fontSize = $(
								"#fontsize").val();
					});
			$("#theme").change(
					function() {
						editor.setTheme("ace/theme/"
								+ $(this).children('option:selected').val());
					});

			$(window).resize(function() { // 当浏览器大小变化时
				editor.resize(true);
			});

			// 关闭编译信息提示框
			$("#btn-console-close").click(function() {
				setSize(LOG_SIZE_CONSTANT.minisize);
			});
			// 清空编译信息
			$("#btn-console-clear").click(function() {
				$(".text-log").text("");
			});
			if (window.screen.height > 560) {
				$("#pdf1").height(window.screen.height - 260);
			}

			// 点击学习文档按钮
			$("#btn-study-document").click(function() {
				$('#modoal-study-document').modal();
			});

			// 视频框
			require([ "../../script/draggable/avalon.draggable",
					"../../script/resizable/avalon.resizable" ], function() {
				avalon.define("videoVM", function(videoVM) {
					videoVM.resizable = {
						aspectRatio : 4 / 3,
						start : function() {
							avalon.log("start resize")
						},
						drag : function(e, data) {
							this.style.left = data.startLeft + e.pageX
									- data.startPageX + "px"
							this.style.top = data.startTop + e.pageY
									- data.startPageY + "px"
						}

					}
				})
				avalon.scan()
			})
		});
function setSize(flag) {
	$(".div-console").css({
		"position" : 'absolute',
		"right" : '0',
		"bottom" : '0'
	});
	if (LOG_SIZE_CONSTANT.initial == flag) { // 初始状态
		$("#editor").css("bottom", 0);
		$(".div-console").width("30px");
		$(".div-console").height("15px");
		$(".minisize-log").show();
		$(".div-console-left").css("height", $(".div-console").css("height"));
	} else if (LOG_SIZE_CONSTANT.minisize == flag) { // 点击最小化的时候
		$(".maxsize-log").hide();
		$(".div-console").animate(
				{
					height : '0px',
					width : '0'
				},
				500,
				function() {
					$("#editor").css("bottom", 0);
					$(".minisize-log").show();
					editor.resize(true);
					$(".div-console-left").css("height",
							$(".div-console").css("height"));
				});
	} else if (LOG_SIZE_CONSTANT.maxsize == flag) { // log框还原
		$(".div-console")
				.animate(
						{
							height : '150px',
							width : $(".div-right").width()
						},
						500,
						function() {

							$("#editor").css("bottom",
									$(".div-console").height() + 0);
							editor.resize(true);
							$(".div-console-left").css("height",
									$(".div-console").css("height"));
							$(".div-console-panel").css("width", 60);
							$(".div-console-panel").css("height", $(".div-console").css("height"));
							$(".text-log").css("width",
									$(".div-console").width() - 60);
							$(".minisize-log").hide();
						});

	}

	$(".div-console").css("max-height", $(window).height() / 3);

}
// 根据情况调整log的尺寸
// function setSize(flag) {
// $(".text-log").css({
// "position" : 'absolute',
// "right" : '0',
// "bottom" : '0'
// });
// if (LOG_SIZE_CONSTANT.initial == flag) { // 初始状态
// $("#editor").css("bottom", 0);
// $(".text-log").width("30px");
// $(".text-log").height("15px");
// $(".minisize-log").show();
// $(".maxsize-log").hide();
// } else if (LOG_SIZE_CONSTANT.showRes == flag) { // 显示结果时
//
// $(".text-log").width($(".div-right").width());
// $(".text-log").height("150px");
// $(".minisize-log").hide();
// $(".maxsize-log").show();
// $(".maxsize-log").css("bottom", $(".text-log").height() + 15);
// $("#editor").css("bottom", $(".text-log").height() + 15);
// editor.resize(true);
// } else if (LOG_SIZE_CONSTANT.minisize == flag) { // 点击最小化的时候
// $(".maxsize-log").hide();
// $(".text-log").animate({
// height : '0px',
// width : '0'
// }, 500, function() {
// $("#editor").css("bottom", 0);
// $(".minisize-log").show();
// editor.resize(true);
// });
// } else if (LOG_SIZE_CONSTANT.maxsize == flag) { // log框还原
// $(".minisize-log").hide();
// $(".text-log").animate({
// height : '150px',
// width : $(".div-right").width()
// }, 500, function() {
//
// $("#editor").css("bottom", $(".text-log").height() + 15);
// $(".maxsize-log").show();
// $(".maxsize-log").css("bottom", $(".text-log").height() + 15);
// editor.resize(true);
// });
//		
// }
//
// $(".text-log").css("max-height", $(window).height() / 3);
// }
// // 进度条重置并且开始
// function progressBarStart() {
// avalon.vmodels.$aa.reset()
// avalon.vmodels.$aa.start()
// }
// // 进度条完成
// function progressBarComplete() {
// avalon.vmodels.$aa.end(100)
// }
