	var hz6d_guest_id = $53.getCookie('53gid2');
//	var hz6d_get_guest_id_over = 0;
//	var hz6d_get_guest_id_num = 5;
//	var hz6d_get_guest_id_timer = 0;
	var hz6d_cus_web_msg_gids = "";
//	var hz6d_block_trace_guest = false;
//	var hz6d_block_trace_over = false;

    /*
	var hz6d_flash_html='<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="1" height="1" align="middle" id="mainserverim" style="position:absolute;bottom:0;left:0"><param name="allowScriptAccess" value="always" /><param name="movie" value="http://tb.53kf.com/flash/hz6d_53kf_kf_gid.swf"/><param name="quality" value="high" /><param name="wmode" value="transparent"><param name="bgcolor" value="#ffffff" /><embed name="mainserverim" src="http://tb.53kf.com/flash/hz6d_53kf_kf_gid.swf" quality="high" wmode="transparent" bgcolor="#ffffff" width="1" height="1" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" swLiveConnect="true" style="position:absolute;bottom:0;left:0" /></object>';
	if (hz6d_guest_id == '') {
		$53.creElm({
			'style':"position:absolute;bottom:0;left:0",
			'id':'hz6d_flash_html',
			'innerHTML': hz6d_flash_html
		},'div');
	}

	function returnGid(args){
		hz6d_guest_id = args[0];
		hz6d_get_guest_id_over = 1;
	}

	function hz6d_get_guest_id(){
		if(hz6d_get_guest_id_over==0 && hz6d_get_guest_id_num>0){
			hz6d_get_guest_id_num--;
			setTimeout("hz6d_get_guest_id()", 500);
		}else{
			// 已经获得guest_id或者重复获取次数已满 
			clearTimeout(hz6d_get_guest_id_timer);

			// guest_id guest_ip 是否在block_trace中，即是否阻止轨迹 
			hz6d_block_trace_guest = (function(){
				var ip = "60.23.15.19",
					id = hz6d_guest_id,
					block_trace_guest_id = [],
					block_trace_guest_ip = Array;
					
				for (var i = 0; i < block_trace_guest_id.length; i++)
				{
					if (id == block_trace_guest_id[i] && id != '') return true;
				}
				
				if (0) return true;
				
				return false;
			})();
			// 取消轨迹采集锁定 
			hz6d_block_trace_over = true;
            
			if(hz6d_guest_id!="" && hz6d_guest_id>0) {
				if(hz6d_cus_web_msg_gids.indexOf(hz6d_guest_id)>=0){
					var url = "http://www15.53kf.com/lword_reply.php?company_id=72124917&guest_id="+hz6d_guest_id;
					//$53.createScript("hz6d_lword_reply", url);
				}
			}   
		}
	}
    */
    
	function hz6d_cus_web_msg_open(){
		var openurl = "http://www15.53kf.com/webCompany.php?arg=10124917&style=1&kflist=off&kf=&zdkf_type=1&language=zh-cn&charset=gbk&username=&userinfo=&introurl=&lyurl=&lytype=0&copartner=&referer=http%3A%2F%2Fwww.oxcoder.com%2FmediaReports.html&keyword=&brief=&logo=&question=";
		try{
			window.open(openurl,"_blank","height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no");
		}catch(e){}
	}

//	hz6d_get_guest_id_timer = setTimeout("hz6d_get_guest_id()", 500);
	
	var create_flp_jquery_timer = window.setInterval(function(){
		if (!document.getElementById('hz6d_flp_jquery')) {
			$53.creElm({
				id: 'hz6d_flp_jquery',
				src: 'http://www15.53kf.com/minkh/js/jquery-1.4.2.flp.js?20121127002',
				charset: "utf-8",
				type: 'text/javascript'
			},'script', document.body, 1);
			clearInterval(create_flp_jquery_timer);
		}
	},500);			// 发送acc 
			var hz6d_filter_time = "";
            var is_right="r";
            var is_top="b";

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			var height_new = 265;
			// 邀请框处理 
			var acc_pop_page		 = "0";
			var acc_pop_pagenum	= 1;
			var acc_pop_total		= "0";
			var acc_pop_totalnum = 1;
			
			var nowpage					= window.location.href;
			nowpage = nowpage.replace('http://','').replace('https://','');
			nowpage = nowpage.split('?');
			nowpage = nowpage[0].replace(/\./g,'_').replace(/\//g,'_');

			var acc_lr					 = "1";
			var acc_tb					 = "1";
			var acc_middle			 = "0";
			var how_float			 = "0";
			var acc_left				 = 1;
			var acc_top					= 200;
			var acc_autotype		 = "3"; // 点击接受或拒绝不再弹出 

			var zdyivt						= "0";
			var ivtstr						= "<div id=\"acc_title\" class=\"Lelem\" minheight=\"100\" minwidth=\"100\" maxheight=\"400\" maxwidth=\"400\" style=\"    position: relative; z-index: 10000;\"><div class=\"Lelem\" type=\"img\" style=\"display: block; cursor: default; position: absolute; top: 51px; left: 3px; z-index: 10001; width: 394px; height: 196px;\"><img style=\"width: 394px; height: 196px;\" src=\"http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/common_bg_inv/commonbg_4.png\"></div><div style=\"display: block; cursor: default; position: absolute; top: 60px; left: 15px; z-index: 10002; width: 97px; height: 20px;\" type=\"text\" class=\"Lelem\"><span style=\"vertical-align: top; font-size: 14px; line-height: 20px; font-family: 宋体;\" iseditable=\"1\">53KF在线客服</span></div><div style=\"display: block; cursor: pointer; position: absolute; top: 70px; left: 371px; z-index: 10003; width: 10px; height: 8px;\" operating=\"CLOSE\" type=\"img\" class=\"Lelem\"><img src=\"http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/close_btn/closebtn_3.png\" style=\"width: 10px; height: 8px;\"></div><div style=\"display: block; cursor: default; position: absolute; top: 97px; left: 13px; z-index: 10004; width: 127px; height: 120px;\" type=\"img\" class=\"Lelem\"><img src=\"http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/other_img/otherimg_6.png\" style=\"width: 127px; height: 120px;\"></div><div style=\"display: block; cursor: default; position: absolute; top: 94px; left: 160px; z-index: 10005; width: 140px; height: 42px;\" type=\"text\" class=\"Lelem\"><span style=\"vertical-align: top; font-size: 29.4px; line-height: 42px; font-family: 黑体;\" iseditable=\"1\">欢迎咨询</span></div><div class=\"Lelem\" type=\"text\" style=\"display: block; cursor: default; position: absolute; top: 136px; left: 164px; z-index: 10006; width: 233px; height: 18px;\"><span iseditable=\"1\" style=\"vertical-align: top; font-size: 12.6px; line-height: 20px; font-family: 宋体;\">53KF.com，感谢大家的支持！</span></div><div style=\"display: block; cursor: default; position: absolute; top: 157px; left: 166px; z-index: 10007; width: 190px; height: 17px;\" type=\"text\" class=\"Lelem\"><span style=\"vertical-align: top; font-size: 12px; line-height: 17px;\" iseditable=\"1\">请问有什么可以帮您？</span></div><div class=\"Lelem\" type=\"img\" operating=\"KF\" style=\"display: block; cursor: pointer; position: absolute; top: 180px; left: 165px; z-index: 10008; width: 128px; height: 39px;\"><img style=\"width: 128px; height: 39px;\" src=\"http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/click_btn/clickbtn_11.png\"></div><div style=\"display: block; cursor: pointer; position: absolute; top: 222px; left: 18px; z-index: 10009; width: 110px; height: 17px; color: rgb(153, 153, 153);\" type=\"text\" class=\"Lelem\"><a operating=\"HYLINK|http://www.53kf.com|_blank\" style=\"text-decoration:none;cursor:pointer;\"><span style=\"vertical-align: top; font-size: 10px; color: #666; line-height: 17px; font-family: 宋体;\" iseditable=\"1\">这是什么工具？</span></a></div><div style=\"display: block; cursor: pointer; position: absolute; top: 224px; left: 294px; z-index: 100010; width: 106px; height: 17px; color: rgb(153, 153, 153);\" type=\"text\" class=\"Lelem\"><a operating=\"HYLINK|http://www.53kf.com|_blank\" style=\"text-decoration:none;cursor:pointer;\"><span style=\"vertical-align: top; font-size: 10px; line-height: 17px; color: #666; font-family: 宋体;\" iseditable=\"1\">Powered by 53KF</span></a></div></div>";
			var is_autoyqk				= "1";
			var once_autoyqk            = 0;//邀请语开关
			var zdyivt_width			= "0px";
			var zdyivt_height		 = "0px";
			var acc_reinvite			= "1";
			var acc_reauto				= "1";
			var acc_reauto_time	 = 10000;
			var acc_poptime			 = 1000;
			var acc_poptype			 = 0;
			var acc_freeze				= "off";
			var acc_chattype			= 3;
			var acc_from_kf			 = false;
			var hz6d_ivt_effect	 = "1";
			var hz6d_cname				= "&#29503;&#22280;";
			var font_color;
			hz6d_cname = hz6d_cname.replace(/\"/g, '&quot;').replace(/\'/g, '&#039;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
			var hz6d_ivt_tpl			= "";
			
			var acc_content = "&#26377;&#20160;&#20040;&#21487;&#20197;&#24110;&#21161;&#24744;&#30340;&#21527;?";
			var chatWindow;			//弹出新窗口
			var deteTime;
			if(0==0)
			{
				acc_content = "&#23458;&#26381;&#19981;&#22312;&#32447;&#65292;&#28857;&#20987;&#30041;&#35328;&#65281;";
			}

			var ivt_timer = 0;
			var force_kf = "";
			var man_content = "";
			$53.creElm({
				'id':'kfiframe',
				'src':'',
				'style':'display:none;overflow:hidden;',
				'frameBorder':0,
				'scrolling': 'no'
			},'iframe');
			$53.creElm({
				'id':'kfivteffect',
				'style':'display:none;position:absolute;width:0px;height:0px;overflow:hidden;border:1px solid #1B88D0;background:#D6EEFD;z-index:10087;'
			},'div');
			$53.creElm({
				'id':'kfivtwin',
				'style': (is_autoyqk == 1) ? 'display:none;overflow:visible;' : 'display:none;overflow:hidden;',
				'innerHTML': (is_autoyqk == 1) ? ivt_seturl(ivtstr) : ivtstr
			},'div');
			

            if(1 == 1){
                // 强制对话小窗口HTML
                if(1==2)
                {
                    font_color='#4aa1e4';
                }
                else
                {
                    font_color='#fff';
                }
                var tmp_innerHTML = '<div id="hz6d_cname_mini_div" style="font-size:16px;overflow:hidden;position:absolute;top:7px;left:10px;width:330px;height:20px;color:'+font_color+';text-indent:30px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">' + hz6d_cname + '</div><div title="&#32553;&#23567;" mini_narrow="&#32553;&#23567;" mini_recover="&#36824;&#21407;" max_min="max" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="&#20999;&#25442;&#21040;&#27491;&#24120;&#31383;&#21475;" style="position:absolute;top:10px;right:28px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="&#20851;&#38381;" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:400px;margin:0 2px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%" ></iframe></div>';
                if(1 == 1){
                    tmp_innerHTML = '<div id="hz6d_cname_mini_div" style="font-size:16px;overflow:hidden;position:absolute;top:7px;left:10px;width:330px;height:20px;color:#fff;text-indent:30px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">' + hz6d_cname + '</div><div title="&#32553;&#23567;" mini_narrow="&#32553;&#23567;" mini_recover="&#36824;&#21407;" max_min="max" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="&#20999;&#25442;&#21040;&#27491;&#24120;&#31383;&#21475;" style="position:absolute;top:10px;right:28px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.gif) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="&#20851;&#38381;" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:403px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png?111) no-repeat;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%" ></iframe></div>';
                }
                
                $53.creElm({
    				'id':'div_company_mini',
    				'style':'display:none;position:fixed;right:0;bottom:0;width:403px;height:378px;overflow:hidden;z-index:10089;cursor:move;',
    				'innerHTML': tmp_innerHTML
		      	},'div');
            }
            
            if(1 == 8){
                // 定制强制对话小窗口
                var tmp_innerHTML = '<div id="hz6d_cname_mini_div" style="font-size:15px;overflow:hidden;position:absolute;top:18px;left:30px;width:230px;height:18px;color:#fff;text-indent:25px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_dz1.png) -79px 0 no-repeat;font-weight:bold;font-family:Arial;">' + hz6d_cname + '</div><div title="&#32553;&#23567;" mini_narrow="&#32553;&#23567;" mini_recover="&#36824;&#21407;" max_min="max" style="position:absolute;top:20px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png?11) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="&#20999;&#25442;&#21040;&#27491;&#24120;&#31383;&#21475;" style="position:absolute;top:20px;right:28px;width:12px;height:13px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.png) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="&#20851;&#38381;" style="position:absolute;top:20px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_ns_dz1.png) -18px 0 no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:320px;height:50px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz1.png?111) no-repeat;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%" ></iframe></div>';
                
                $53.creElm({
    				'id':'div_company_mini',
    				'style':'display:none;position:fixed;right:0;bottom:0;width:320px;height:393px;overflow:hidden;z-index:10089;cursor:move;',
    				'innerHTML': tmp_innerHTML
                },'div');
            }
            
            if(1 == 9){
                // 定制强制对话小窗口
                var tmp_innerHTML = '<div id="hz6d_cname_mini_div" style="font-size:15px;overflow:hidden;position:absolute;top:8px;left:10px;width:230px;height:18px;color:#c9a67f;text-indent:2px;font-family:微软雅黑,arial">' + hz6d_cname + '</div><div title="&#32553;&#23567;" mini_narrow="&#32553;&#23567;" mini_recover="&#36824;&#21407;" max_min="max" style="position:absolute;top:12px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="&#20999;&#25442;&#21040;&#27491;&#24120;&#31383;&#21475;" style="position:absolute;top:12px;right:28px;width:12px;height:13px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.png) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="&#20851;&#38381;" style="position:absolute;top:12px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/close.png) no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:370px;height:35px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz1.png) no-repeat; border-top-right-radius: 6px;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%" ></iframe></div>';
                
                $53.creElm({
    				'id':'div_company_mini',
    				'style':'display:none;position:fixed;right:0;bottom:0;width:370px;height:393px;overflow:hidden;z-index:10089;cursor:move;',
    				'innerHTML': tmp_innerHTML
                },'div');
            }
			
            if(1 == 10){
                // 定制强制对话小窗口
                var tmp_innerHTML = '<div id="hz6d_cname_mini_div" style="font-size:14px;  font-weight: bold;overflow:hidden;position:absolute;top:10px;left:20px;width:230px;height:18px;color:#525c63;text-indent:2px;font-family:微软雅黑,arial">' + hz6d_cname + '</div><div title="&#32553;&#23567;" mini_narrow="&#32553;&#23567;" mini_recover="&#36824;&#21407;" max_min="max" style="position:absolute;top:1px;right:76px;width:39px;height:29px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min_llt.png) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="&#20999;&#25442;&#21040;&#27491;&#24120;&#31383;&#21475;" style="position:absolute;top:1px;right:39px;width:37px;height:29px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto_llt.png) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="&#20851;&#38381;" style="position:absolute;top:1px;right:8px;width:31px;height:29px;background:url(http://www15.53kf.com/style/chat/minichat2/img/close_llt.png) no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:400px;height:41px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz1.png) no-repeat; border-top-right-radius: 6px;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%" ></iframe></div>';
                
                $53.creElm({
    				'id':'div_company_mini',
    				'style':'display:none;position:fixed;right:0;bottom:0;width:400px;height:423px;overflow:hidden;z-index:10089;cursor:move;',
    				'innerHTML': tmp_innerHTML
                },'div');
            }
            
            if(1 == 11){
                // 定制强制对话小窗口
                var tmp_innerHTML = '<div id="hz6d_cname_mini_div" style="position:absolute;top:-43px;left:20px;width:100px;height:69px;background:url(http://www15.53kf.com/style/chat/minichat2/img/3.png?1) no-repeat;"></div><div title="&#32553;&#23567;" mini_narrow="&#32553;&#23567;" mini_recover="&#36824;&#21407;" max_min="max" style="position:absolute;top:1px;right:85px;width:28px;height:18px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min_3.png?1) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);" onmouseover="this.style.background=\'url(http://www15.53kf.com/style/chat/minichat2/img/min_3_3.png?1)\'" onmouseout="this.style.background=\'url(http://www15.53kf.com/style/chat/minichat2/img/min_3.png?1)\'"></div><div title="&#20999;&#25442;&#21040;&#27491;&#24120;&#31383;&#21475;" style="position:absolute;top:1px;right:58px;width:27px;height:18px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto_2.png?1) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);" onmouseover="this.style.background=\'url(http://www15.53kf.com/style/chat/minichat2/img/maxto_2_3.png?1)\'" onmouseout="this.style.background=\'url(http://www15.53kf.com/style/chat/minichat2/img/maxto_2.png?1)\'"></div><div title="&#20851;&#38381;" style="position:absolute;top:1px;right:14px;width:44px;height:18px;background:url(http://www15.53kf.com/style/chat/minichat2/img/close_2.png) no-repeat;cursor:pointer;" onclick="close_company_mini();" onmouseover="this.style.background=\'url(http://www15.53kf.com/style/chat/minichat2/img/close_2_3.png?2)\'" onmouseout="this.style.background=\'url(http://www15.53kf.com/style/chat/minichat2/img/close_2.png?1)\'"></div><div id="mini_header_bg_div" style="position:static;width:450px;height:34px;background:url(http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz1.png?1) no-repeat; border-top-right-radius: 4px;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%" ></iframe></div>';
                
                $53.creElm({
    				'id':'div_company_mini',
    				'style':'display:none;position:fixed;right:0;bottom:0;width:450px;height:375px;z-index:10089;cursor:move;',
    				'innerHTML': tmp_innerHTML
                },'div');
            }
            
            if(1 == 12) {
                // 定制强制对话小窗口
                var tmp_innerHTML = '<div id="hz6d_cname_mini_div" style="font-size:14px;overflow:hidden;position:absolute;top:8px;left:15px;width:230px;height:18px;color:#fff;text-indent:25px;font-family: -webkit-pictograph;">' + hz6d_cname + '</div><div style="position:absolute;top:4px;left:10px;width:25px;height:25px;background:url(http://www15.53kf.com/style/chat/minichat2/img/minchat_logo_12.png) no-repeat;"></div><div title="&#32553;&#23567;" mini_narrow="&#32553;&#23567;" mini_recover="&#36824;&#21407;" max_min="max" style="position:absolute;top:10px;right:46px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/min.png) no-repeat; cursor:pointer;" onclick="max_min_company_mini(this);"></div><div title="&#20999;&#25442;&#21040;&#27491;&#24120;&#31383;&#21475;" style="position:absolute;top:9px;right:28px;width:12px;height:13px;background:url(http://www15.53kf.com/style/chat/minichat2/img/maxto.png) no-repeat; cursor:pointer;" onclick="max_from_company_mini(this);"></div><div title="&#20851;&#38381;" style="position:absolute;top:10px;right:10px;width:12px;height:12px;background:url(http://www15.53kf.com/style/chat/minichat2/img/close.png) no-repeat;cursor:pointer;" onclick="close_company_mini();"></div><div id="mini_header_bg_div" style="position:static;width:276px;height:31px;background-color:#3A3A3A;"></div><div id="iframe_company_mini_div" style="width:100%;height:100%;"><iframe id="iframe_company_mini" frameborder="0" width="100%" height="100%" ></iframe></div>';
                
                $53.creElm({
    				'id':'div_company_mini',
    				'style':'display:none;position:fixed;right:0;bottom:0;width:276px;height:334px;overflow:hidden;z-index:10089;cursor:move;',
    				'innerHTML': tmp_innerHTML
                },'div');
            }
            

			//	mini悬浮对话窗口 转到正常聊天窗口 
			function max_from_company_mini(t)
			{
				var openurl = "http://www15.53kf.com/webCompany.php?arg=10124917&style=1&kflist=off&kf=&zdkf_type=1&language=zh-cn&charset=gbk&username=&userinfo=&introurl=&lyurl=&lytype=0&copartner=&referer=http%3A%2F%2Fwww.oxcoder.com%2FmediaReports.html&keyword=&brief=&logo=&question=&tfrom=2"+force_kf;
				try{
					chatWindow = window.open(openurl,"_blank","height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no");
					if(chatWindow==null){
						location.href = openurl;
					}else{
						chatWindow.focus();
						chatWindow.opener = window;
					}
				}catch(e){
					location.href = openurl;	// 傲游 
				}
				close_company_mini();
				t.parentNode.parentNode.removeChild(t.parentNode);
			}
			//	mini悬浮对话窗口 缩小、放大 
			function max_min_company_mini(t)
			{
				if (t.getAttribute('max_min') == 'max')
				{
					$53("div_company_mini").style.height = "36px";
					$53("hz6d_cname_mini_div").style.width = "130px";
					$53("div_company_mini").style.width = "203px";
					$53("iframe_company_mini_div").style.display = "none";
					t.style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/max.png')";				
					t.setAttribute('max_min','min');
					t.title = t.getAttribute('mini_recover');
                    $53("div_company_mini").style.right = '0px';
			     	$53("div_company_mini").style.bottom = '0px';
                    if(1 == 8) {
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz82.png')"; 
						$53("hz6d_cname_mini_div").style.width = "140px";
						$53("hz6d_cname_mini_div").style.height = "18px";
						$53("hz6d_cname_mini_div").style.left="0px";
						$53("hz6d_cname_mini_div").style.top="11px";
						$53("hz6d_cname_mini_div").style.textIndent = "5px";
						t.style.top="13px";
						t.nextSibling.style.top="13px";
						t.nextSibling.nextSibling.style.top="13px";
                        return;       
                    }
                    
                    if(1 == 9) {
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg2_5.png')";
						$53("mini_header_bg_div").style.borderTopLeftRadius = "5px";
                        $53("mini_header_bg_div").style.overflow = "hidden";
                        return;       
                    }
                    
                    if(1 == 10) {
						$53("hz6d_cname_mini_div").style.left="10px";
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz10.png')";
						$53("mini_header_bg_div").previousSibling.previousSibling.previousSibling.style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/max_llt.png')";
						$53("mini_header_bg_div").style.borderTopLeftRadius = "10px";
                        $53("hz6d_cname_mini_div").style.width = "80px";
                        $53("mini_header_bg_div").style.overflow = "hidden";
                        return;       
                    }
                    
                    if(1 == 11) {
                        $53("div_company_mini").style.width = "233px";
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz11.png')";
                        t.onmouseover = function() {
                            t.style.background='url(http://www15.53kf.com/style/chat/minichat2/img/maxto_2_3-1.png?2)';
                        }
                        t.onmouseout = function() {
                            t.style.background='url(http://www15.53kf.com/style/chat/minichat2/img/maxto_2-3.png?2)';
                        };
						t.style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/maxto_2-3.png')";
                        $53("mini_header_bg_div").style.width = "233px";
                        $53("mini_header_bg_div").style.overflow = "hidden";       
                        return;       
                    }
                    
                    if(1 == 12) {
                        $53("div_company_mini").style.height = "31px";
						$53("hz6d_cname_mini_div").style.width = "130px";
                        return;       
                    }
                    
                    $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg2_1.png')";
				}
				else
				{	
					hz6d_re_flashing(HZ6D_CONFIGSNEW.com_id);
					$53("iframe_company_mini_div").style.display = "";
					$53("div_company_mini").style.height = "378px";
					$53("div_company_mini").style.width = "403px";
					$53("hz6d_cname_mini_div").style.width = "330px";
					t.style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/min.png')";
					t.setAttribute('max_min','max');
					t.title = t.getAttribute('mini_narrow');
                    if(is_right=='l'){
                        var wid=document.documentElement.clientWidth;
                        var right=parseInt(0);
                        right=wid-right-403;
                        $53("div_company_mini").style.right = right + 'px';
                        
                        }else{
                  		    $53("div_company_mini").style.right = "0" + 'px';}
                            if(is_top=='t'){
                                var hei=document.documentElement.clientHeight;
                                var bottom=parseInt(0);
                                bottom=hei-bottom-378;
                                $53("div_company_mini").style.bottom = bottom + 'px';
                            }else{
                                $53("div_company_mini").style.bottom = "0"+ 'px';
                            }
			       }
                   
                   if(1 == 8) {
                        $53("div_company_mini").style.height = "393px";
                        $53("div_company_mini").style.width = "320px";  
                        $53("hz6d_cname_mini_div").style.width = "230px";
						$53("hz6d_cname_mini_div").style.height = "18px";
						$53("hz6d_cname_mini_div").style.left="30px";
						$53("hz6d_cname_mini_div").style.top="18px";
						$53("hz6d_cname_mini_div").style.textIndent = "20px";
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz8.png?1111')";
						$53("hz6d_cname_mini_div").nextSibling.style.top="20px";
						$53("hz6d_cname_mini_div").nextSibling.nextSibling.style.top="20px";
						$53("hz6d_cname_mini_div").nextSibling.nextSibling.nextSibling.style.top="20px";
                        return;
                   }
                   
                   if(1 == 9) {
                        $53("div_company_mini").style.height = "393px";
                        $53("div_company_mini").style.width = "370px";  
						$53("hz6d_cname_mini_div").style.left="10px";
						$53("hz6d_cname_mini_div").style.top="8px";
						$53("hz6d_cname_mini_div").style.textIndent = "2px";
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz9.png')";
                        return;
                   }
                   
                   if(1 == 10) {
                        $53("div_company_mini").style.height = "423px";
                        $53("div_company_mini").style.width = "400px";  
						$53("hz6d_cname_mini_div").style.left="20px";
						$53("hz6d_cname_mini_div").style.top="10px";
                        $53("hz6d_cname_mini_div").style.width = "230px";
						$53("hz6d_cname_mini_div").style.textIndent = "2px";
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz10.png')";
						$53("mini_header_bg_div").previousSibling.previousSibling.previousSibling.style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/min_llt.png')";
                        return;
                   }
                   
                    if(1 == 11) {
                        $53("hz6d_cname_mini_div").innerHTML="";
                        $53("div_company_mini").style.height = "375px";
                        $53("div_company_mini").style.width = "450px";               
                        $53("mini_header_bg_div").style.width = "450px";
                        $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_dz11.png?123')";
                        t.onmouseover = function() {
                            t.style.background='url(http://www15.53kf.com/style/chat/minichat2/img/min_3_3.png?2)';
                        }
                        t.onmouseout = function() {
                            t.style.background='url(http://www15.53kf.com/style/chat/minichat2/img/min_3.png?2)';
                        }
						t.style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/min_3.png?1')";
                        return;
                   }
                   
                   if(1 == 12) {
                        $53("div_company_mini").style.height = "334px";
                        $53("div_company_mini").style.width = "276px";  
                        $53("hz6d_cname_mini_div").style.width = "230px";
                        return;
                   }
                   
                   $53("mini_header_bg_div").style.backgroundImage = "url('http://www15.53kf.com/style/chat/minichat2/img/header_bg_1.png')";
                   
            }
			// 定时调用判断是否显示邀请框 
			function hz6d_checkIvt() { hz6d_showIvt(); }

			// 显示冻结层 
			function hz6d_showFreeze(){
				if(acc_freeze=="on"){
					var div = $53("hz6d_freeze_div");
					if(div==null){
						hz6d_createFreezeDiv();
					}else{
						div.style.display = "block";
					}
				}
			}

			// 创建冻结层 
			function hz6d_createFreezeDiv(){
				var div = document.createElement('DIV');
				div.id = 'hz6d_freeze_div';
				with(div.style){
					zIndex=6998;
					top='0px';
					left='0px';
					width='100%';
					height='100%';
					border='none';
					margin=padding=0;
					position='absolute';
					backgroundColor='#000';
					opacity='0.2';
					filter='alpha(opacity=20)';
					duration=1000;
				}
				document.body.insertBefore(div,document.body.firstChild);
				setInterval("hz6d_checkFreezeStyle()", 1);
			}
			
			var hz6d_maxPageWidth = 0;
			var hz6d_maxPageHeight = 0;
			// 定时调整冻结层大小 
			function hz6d_checkFreezeStyle(){
				try{
					var freeze = $53("hz6d_freeze_div");
					if(freeze!=null){
						var scroll = hz6d_getScrollPosition();
						var client = hz6d_getClientWindow();
						var w = client.width+scroll.sLeft;
						var h = client.height+scroll.sTop;
						if(w > hz6d_maxPageWidth){
							hz6d_maxPageWidth = w;
							freeze.style.width = hz6d_maxPageWidth+"px";
						}
						if(h > hz6d_maxPageHeight){
							hz6d_maxPageHeight = h;
							freeze.style.height = hz6d_maxPageHeight+"px";
						}
					}
				}catch(e){}
			}

			// 删除冻结层 
			function hz6d_destroyFreezeDiv(){
				try{
					var div = $53("hz6d_freeze_div");
					if(div!=null) { div.style.display = "none"; }
				}catch(e){}
			}

			// 显示邀请框 
			function hz6d_showIvt(){
				if(hz6d_isShowIvt()){
					if($53("kfivtwin").style.display=="none" && onliner_zdfq!=2 || acc_from_kf==true){
						acc_from_kf = false;
						get_ACCWindow();
						hz6d_setTotalNum();
						hz6d_setPageNum();
					}
				}
			}

			// 判断是否显示邀请框 
			function hz6d_isShowIvt(){
				if(acc_reinvite==1 && acc_from_kf==true) { return true; }
				if(acc_autotype==3){
					//点击接受或拒绝后不再弹出
					if(onliner_zdfq!=0){
						return false;
					}
				}
				if(!hz6d_overTotalNum()){
					if(hz6d_overPageNum()){
						return false;
					}
				}else{
					return false;
				}
				return true;
			}

			// 判断是否超过所有页面次数 
			function hz6d_overTotalNum(){
				if($53("kfivtwin").style.display!="none") return;
				if(acc_pop_total==1){
					var total_invite = $53.getCookie("invite_53kf_totalnum_1");
					if(total_invite=="") { total_invite = 0; }
					if(total_invite>=acc_pop_totalnum) { return true; }
				}
				return false;
			}

			// 判断是否超过每个页面次数 
			function hz6d_overPageNum(){
				if($53("kfivtwin").style.display!="none") return;
				if(acc_pop_page==1){
					var page_invite = $53.getCookie(nowpage);
					if(page_invite=="") { page_invite = 0; }
					if(page_invite>=acc_pop_pagenum) { return true; }
				}
				return false;
			}

			// 设置所有页面弹出次数 
			function hz6d_setTotalNum()
			{
				var total_invite = $53.getCookie("invite_53kf_totalnum_1");
				if(total_invite=="") { total_invite = 0; }
				total_invite++;
				document.cookie = "invite_53kf_totalnum_1="+total_invite;
			}
			
			// 设置每个页面弹出次数 
			function hz6d_setPageNum()
			{
				var page_invite = $53.getCookie(nowpage);
				if(page_invite=="") { page_invite = 0; }
				page_invite++;
				document.cookie = nowpage+"="+page_invite;
			}
			
			// 隐藏邀请框 
			function hidden_ivt()
			{
				if(acc_poptype==1) {
					document.cookie = "onliner_zdfq72124917="+onliner_zdfq;
					document.cookie = "my_acc_reauto_time=" + new Date().getTime() + ";path=/";
				} else {
					document.cookie = "my_acc_reauto_time=null;path=/";
				}
				try{ $53("kfiframe").style.display = "none"; }catch(e){}
				try{ hidden_ACCWindow(); }catch(e){}
				hz6d_destroyFreezeDiv();
				try{ force_kf = ""; }catch(e){}
			}
			
			function hz6d_haveMIn(){
				if('1' == 0 && $53("hz6d_mnkh_content").style.display=="none" ){//&& onliner_zdfq!=2
						acc_from_kf=false;
						hz6d_showContent();
						force_kf = "";
						onliner_zdfq = 2;
						hidden_ivt();
						hz6d_setTotalNum();
						hz6d_setPageNum();
				}else if($53("div_company_mini").style.display=="none" ){//onliner_zdfq!=2
						acc_from_kf=false;
						get_location(acc_chattype);
						hz6d_setTotalNum();
						hz6d_setPageNum();
				}
			}
			
			function hz6d_showIvt3(){
				if(hz6d_isShowIvt()){
					var time=setInterval(function () {
						if('1' == 0 && $53("hz6d_mnkh_content")){
							hz6d_haveMIn();
							clearInterval(time);
						}else if($53("div_company_mini")){
							hz6d_haveMIn();
							clearInterval(time);
						}
					},1000);
				}
			}
			
			function hz6d_deteWindow(){
				if(hz6d_isShowIvt()){
					if(chatWindow==null || chatWindow.closed==true){
						acc_from_kf=false;
						get_location(acc_chattype);
						hz6d_setTotalNum();
						hz6d_setPageNum();
					}
				}else{
					clearInterval(deteTime);
				}
			}
			
			function hz6d_showIvt2 () {
				deteTime = setInterval(function () {hz6d_deteWindow();},acc_reauto_time);
			}
			
			function hz6d_startReautoTimer2(acc_chattype){
				if(acc_chattype==3){
					hz6d_showIvt3();
				}
				if(acc_chattype==2){
					hz6d_showIvt2();
				}
				if(acc_chattype==1){
					if(hz6d_isShowIvt()){
						get_location(acc_chattype);
						hz6d_setTotalNum();
						hz6d_setPageNum();
					}
				}
			}
			
			// 加载后是否显示邀请框 
			function hz6d_LoadToShowIvt()
			{
				if(acc_poptype==1)
				{
					setTimeout("hz6d_checkIvt()", acc_poptime);
				}
				else if(acc_poptype==2)//&& onliner_zdfq!=2
				{	
					setTimeout(function () {hz6d_startReautoTimer2(acc_chattype);}, acc_poptime);
				}
			}
			//同一个域下处理cookie 改变延迟时间
			var my_acc_reauto_time_cookie = $53.getCookie('my_acc_reauto_time');
			if(my_acc_reauto_time_cookie) {
				acc_poptime = acc_reauto_time - (new Date().getTime() - my_acc_reauto_time_cookie);
			}
			//查询link表，判断是否已有客服在线，建立对话

			if(0==1 || "off"=="on"){
				//	hz6d_sendACC();
				hz6d_LoadToShowIvt();
			}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
			var hz6d_company_mini = null;
			// 强制对话 
			function get_location(type){
				// type:1 覆盖本窗口 2 新窗口 如果被拦截，则本窗口刷新 3 悬浮对话窗口 
				try{
					var openurl = "http://www15.53kf.com/webCompany.php?arg=10124917&style=1&kflist=off&kf=&zdkf_type=1&language=zh-cn&charset=gbk&username=&userinfo=&introurl=&lyurl=&lytype=0&copartner=&referer=http%3A%2F%2Fwww.oxcoder.com%2FmediaReports.html&keyword=&brief=&logo=&question=&tfrom=2"+force_kf;
					if(type==1){
						location.href = openurl;
					}else if(type==2){
						try{
							chatWindow = window.open(openurl,"","height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no");
							if(chatWindow==null){
								location.href = openurl + '&timeStamp=' + new Date().getTime();
							}else{
								chatWindow.focus();
								chatWindow.opener = window;
							}
						}catch(e){
							location.href = openurl + '&timeStamp=' + new Date().getTime();	// 傲游 
						}
					}else{
						if('1' == 0){
						acpt_force_kf(force_kf);
							var timer=setInterval(function () {
								if($53("hz6d_mnkh_content")){
									hz6d_showContent();
									clearInterval(timer);
								}
							},100);
						}else{
							var openurl_mini = openurl;
							var tpl = "";
							if(openurl_mini.match(/&tpl=[^&]*/gim)!=null){
								openurl_mini = openurl_mini.replace(/&tpl=[^&]*/gim, "&tpl=minichat2");
							}else{
								tpl = "&tpl=minichat2";
							}
							$53("iframe_company_mini").src = openurl_mini + tpl + '&timeStamp=' + new Date().getTime()+'&interface_color=1&interface_theme=1&minchat_style=1';
							var div = $53("div_company_mini");
							hz6d_company_mini = new hz6d_div_scroll(div);
							hz6d_company_mini.start();
							div.style.display = "";
						}
					}
					force_kf = "";
					onliner_zdfq = 2;
					hidden_ivt();
				}catch(e){}
			}
			// 悬浮邀请框滚动 
			function hz6d_div_scroll(d){
				var self = this;
				this.div = d;
				this.right = 0;
				this.bottom = 0;
				this.timer = 0;
				this.posX=this.posY=this.posR=this.posB=0;
				this.scrollX=this.scrollY=false;

				this.start = function(){
					this.goPosition();
					this.timer = setInterval(this.scroll, 10);
					this.move();
				}
				this.stop = function(){
					if(this.timer!=0){ clearInterval(this.timer); }
				}
				this.goPosition = function(){
					this.right = 0;
					this.bottom = 0;
                                        if(is_right=='l')
                                        {
                                            var wid=document.documentElement.clientWidth;
                                            var right=parseInt(this.right);
                                            right=wid-right-403;
                                            this.div.style.right = right + "px";}
                                        else
                                        {
                                            this.div.style.right = this.right + "px";}
                                        if(is_top=='t')
                                        {
                                            var hei=document.documentElement.clientHeight; 
                                            var bottom=parseInt(this.bottom);
                                            bottom=hei-bottom-378;
                                            this.div.style.bottom = bottom + "px";}
                                        else
                                        {
                                            this.div.style.bottom = this.bottom + "px";}
				}
				this.scroll = function(){
				    
					var scroll = hz6d_getScrollPosition();
					var cur_right = -scroll.sLeft;
					var cur_bottom = -scroll.sTop;
				}
				this.move = function(){
					this.div.onmousedown = function(e){
						if(!e) e = window.event; //如果是IE 
						self.posX = e.clientX;
						self.posY = e.clientY;
						self.posR = parseInt(self.div.style.right);
						self.posB = parseInt(self.div.style.bottom);
						if(self.div.setCapture){
							self.div.setCapture();
						}else if(window.captureEvents){
							window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
						}
						var d = document;
						d.onmousemove = function(ev){
							if(!ev) ev = window.event; //如果是IE 
							self.div.style.right = (self.posR - (ev.clientX - self.posX)) + "px";
							self.div.style.bottom = (self.posB - (ev.clientY - self.posY)) + "px";
						}
						d.onmouseup = function(){
							if(self.div.releaseCapture){
								self.div.releaseCapture();
							}else if(window.captureEvents){
								window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
							}
							d.onmousemove = null;
							d.onmouseup = null;
						}
					}
				}
			}
			// 关闭悬浮框 
			function close_company_mini(){
				if(acc_autotype == 3) {document.cookie = "onliner_zdfq72124917="+onliner_zdfq;}
				$53("div_company_mini").style.display = "none";
				$53("iframe_company_mini").src = "";
				hz6d_company_mini.stop();
				if(acc_reauto==1 && acc_poptype==2){
					setTimeout(function () {hz6d_showIvt3();},acc_reauto_time);
				}
				//添加cookie 实现整个域读取
				if(acc_reauto == 1) {
					document.cookie = "my_acc_reauto_time=" + new Date().getTime() + ";path=/";
				} else { //没有反复开启弹出窗口  删除cookie
					document.cookie = "my_acc_reauto_time=null;path=/";
				}
			}

			var ivt_top = 0;
			var ivt_left = 0;

			var ivt_width="400";
			var ivt_height="auto";

			var hz6d_effect_time = 200;
			var hz6d_effect_timer = 10;
                        //获取邀请框的宽高
                        function get_wh(){
                            var ivt_obj=document.getElementById("acc_title").getElementsByTagName("div");
                            var ivt_width=0;
                            var ivt_height=0;
                            for(var i=0;i<ivt_obj.length;i++){
                                var width=parseInt((ivt_obj[i].style.width).replace(/px/ig,""));
                                var height=parseInt((ivt_obj[i].style.height).replace(/px/ig,""));
                                if(width>ivt_width) ivt_width=width;
                                if(height>ivt_height) ivt_height=height;
                            }
                            return {"width":ivt_width,"height":ivt_height};
                         }
			// 显示邀请框 
			function get_ACCWindow(){
				var ivtPosition = hz6d_getIvtPosition();

				if(zdyivt==1){
					ivt_height_init = zdyivt_height;
					ivt_width_init = zdyivt_width;
				}else{
					ivt_height_init = "auto";
					ivt_width_init = "400px";
				}
				$53("kfivtwin").style.height = ivt_height_init;
				$53("kfivtwin").style.width = ivt_width_init;

				try{
					$53("kfivtwin").style.zIndex = "10088";
					$53("kfivtwin").style.fontSize = "12px";
					$53("kfivtwin").style.position = "absolute";
					if(how_float==1 && hasdoctype) $53("kfivtwin").style.position = "fixed";

					$53("kfiframe").style.width = $53("kfivtwin").clientWidth + 0 + "px";
					$53("kfiframe").style.height = $53("kfivtwin").clientHeight + -7 + "px";
					$53("kfiframe").style.position = "absolute";
					if(how_float==1 && hasdoctype) $53("kfiframe").style.position = "fixed";
					$53("kfiframe").style.filter = "alpha(opacity=1)";
					$53("kfiframe").style.display = "";
				}catch(e){}

				var openurl = "http://www15.53kf.com/webCompany.php?arg=10124917&style=1&kflist=off&kf=&zdkf_type=1&language=zh-cn&charset=gbk&username=&userinfo=&introurl=&lyurl=&lytype=0&copartner=&referer=http%3A%2F%2Fwww.oxcoder.com%2FmediaReports.html&keyword=&brief=&logo=&question=&tfrom=2" + force_kf;
				if(is_autoyqk == 1){
					once_autoyqk = Number(once_autoyqk) + 1;
					if(once_autoyqk == 1){
						try{
							acc_content = $53("hz6d_acc_content").innerHTML;
						}catch(e){}
					}
					if(man_content!=""){
						try{
							$53("hz6d_acc_content").innerHTML = man_content.replace(/\"/g, '&quot;').replace(/\'/g, '&#039;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
						}catch(e){}
						man_content = "";
					}
					else{
						try{
							$53("hz6d_acc_content").innerHTML = acc_content;
						}catch(e){}
					}
				}
				else{
					if(man_content!=""){
						try{
							$53("hz6d_acc_content").innerHTML = man_content.replace(/\"/g, '&quot;').replace(/\'/g, '&#039;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
						}catch(e){}
						man_content = "";
					}else{
						try{
							$53("hz6d_acc_content").innerHTML = acc_content;
						}catch(e){}
					}
				}
				try{
					var isNew = hz6d_ivt_tpl.indexOf("new2011");
					if(zdyivt==1 || isNew>0){
						var zdyIds = document.getElementsByTagName("div");
						for(var i=0; i<zdyIds.length; i++){
							if(zdyIds[i].id=="hz6d_53kf_invite_acc"){
								zdyIds[i].onclick = function(){onliner_zdfq=2;window.open(openurl,"_blank","height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no");hidden_ivt();}
							}
						}
					}else{
						$53("hz6d_53kf_invite_acc").onclick = function(){onliner_zdfq=2;window.open(openurl,"_blank","height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no");hidden_ivt();}
					}
				}catch(e){}
				
				function hz6d_open_move(iconDivMain){
					var obj = $53("kfivtwin");
					obj.style.display = "block";
					var obj_height = obj.offsetHeight;
					var obj_width = obj.offsetWidth;
					obj.style.display = "none";

					var tb_top = parseInt(iconDivMain.style.top.replace("px",""));
					var tb_left = parseInt(iconDivMain.style.left.replace("px",""));
					var tb_width = parseInt(iconDivMain.style.width.replace("px",""));
					var tb_height = parseInt(iconDivMain.style.height.replace("px",""));

					obj = $53("kfivteffect");
					obj.style.top = tb_top + "px";
					obj.style.left = tb_left + "px";
					obj.style.height = tb_height + "px";
					obj.style.width = tb_width + "px";
					obj.style.display = "block";

					var moveHeight = tb_height;
					var moveWidth	= tb_width;
					var moveTop		= tb_top;
					var moveLeft	 = tb_left;

					var offTop		 = Math.abs(tb_top-ivtPosition.top);
					var offLeft		= Math.abs(tb_left-ivtPosition.left);

					var topStep		= offTop/(hz6d_effect_time/hz6d_effect_timer);
					var leftStep	 = offLeft/(hz6d_effect_time/hz6d_effect_timer);

					var heightStep = (obj_height-tb_height)/(hz6d_effect_time/hz6d_effect_timer);
					var widthStep	= (obj_width-tb_width)/(hz6d_effect_time/hz6d_effect_timer);

					var topD = 1;
					if(tb_top-ivtPosition.top>0) { topD=-1; }
					var leftD = 1;
					if(tb_left-ivtPosition.left>0) { leftD=-1; }

					function dmove(){
						moveHeight += heightStep;
						moveWidth	+= widthStep;
						moveTop		+= topD*topStep;
						moveLeft	 += leftD*leftStep;

						if(moveWidth>obj_width){
							obj.style.display = "none";
							clearInterval(iIntervalId);
							hz6d_showIvtWindow();
						}else{
							var ivtPosition_t = hz6d_getIvtPosition();
							obj.style.height = moveHeight + 'px';
							obj.style.width = moveWidth + 'px';
							obj.style.top = moveTop + (ivtPosition_t.top-ivtPosition.top) + 'px';
							obj.style.left = moveLeft + (ivtPosition_t.left-ivtPosition.left) + 'px';
						}
					}
					var iIntervalId = setInterval(dmove, hz6d_effect_timer);
					try{iconDivMain.style.display = "none";}catch(e){}
				}
				
				if(hz6d_ivt_effect==1 && hz6d_kf_type==2 && hz6d_pos_model==1 && hz6d_hidden==0){
					hz6d_checkIconDivMain();
				}else{
					hz6d_showIvtWindow();
				}

				function hz6d_showIvtWindow(){
					var ivtPosition_t = hz6d_getIvtPosition();
					if(how_float==1) var ivtPosition_t = hz6d_getIvtFixedPosition();
					hz6d_setIvtTop(ivtPosition_t.top);
					hz6d_setIvtLeft(ivtPosition_t.left);
					$53("kfivtwin").style.display = "block";
					hz6d_initScrollPosition();
					hz6d_showFreeze();
					hz6d_startScrollTimer();
				}
				function hz6d_setIvtTop(top){
					$53("kfivtwin").style.top = top + "px";
					$53("kfiframe").style.top = top + "px";
				}
				function hz6d_setIvtLeft(left){
					$53("kfivtwin").style.left = left + "px";
					$53("kfiframe").style.left = left + "px";
				}
				function hz6d_initScrollPosition(){
					var scrollPosition = hz6d_getScrollPosition();
					ivt_top = scrollPosition.sTop;
					ivt_left = scrollPosition.sLeft;
				}
				function hz6d_checkIconDivMain(){
					var iconDivMain = $53("iconDivMain"+kf_icon_id);
					if(iconDivMain!=null){
						if(hz6d_close_icon==0){
							hz6d_open_move(iconDivMain);
						}else{
							hz6d_showIvtWindow();
						}
					}else{
						setTimeout(hz6d_checkIconDivMain, 100);
					}
				}
				function hz6d_startScrollTimer(){
					if(ivt_timer==0 && how_float!=1){
						if(browser=="360" || browser=="TheWorld"){
							ivt_timer = window.setInterval("ivt_autoScroll()", 500);
						}else{
							ivt_timer = window.setInterval("ivt_autoScroll()", 10);
						}
					}
				}

				var posX;
				var posY;
				fdiv = $53("kfivtwin");
				$53("acc_title").onmousedown=function(e){
					if(!e) e = window.event;	 //如果是IE 
					posX = e.clientX - parseInt(fdiv.style.left);
					posY = e.clientY - parseInt(fdiv.style.top);
					document.onmousemove = mousemove;					
				}
				document.onmouseup = function(){
					document.onmousemove = null;
				}
				function mousemove(ev){
					if(ev==null) ev = window.event;//如果是IE 
					fdiv.style.left = (ev.clientX - posX) + "px";
					fdiv.style.top = (ev.clientY - posY) + "px";
					ivt_top = Math.max(document.body.scrollTop,document.documentElement.scrollTop);
					ivt_left = Math.max(document.body.scrollLeft,document.documentElement.scrollLeft);
					
					// if(ivt_top==0) { ivt_top = document.documentElement.scrollTop; }
					// if(ivt_left==0) { ivt_left = document.documentElement.scrollLeft; }
				}
			}

			function hidden_ACCWindow(){
				function hz6d_close_move(iconDivMain){
					var obj = $53("kfivtwin");
					var obj_height = obj.offsetHeight;
					var obj_width = obj.offsetWidth;
					var ivtPosition = {top:obj.offsetTop,left:obj.offsetLeft};
					if(how_float==1) var ivtPosition = hz6d_getIvtPosition();
					obj.style.display = "none";

					var tb_top = parseInt(iconDivMain.style.top.replace("px",""));
					var tb_left = parseInt(iconDivMain.style.left.replace("px",""));
					var tb_width = parseInt(iconDivMain.style.width.replace("px",""));
					var tb_height = parseInt(iconDivMain.style.height.replace("px",""));

					obj = $53("kfivteffect");
					obj.style.top = ivtPosition.top + "px";
					obj.style.left = ivtPosition.left + "px";
					obj.style.height = obj_height + "px";
					obj.style.width = obj_width + "px";
					obj.style.display = "block";

					var moveHeight = obj_height;
					var moveWidth	= obj_width;
					var moveTop		= ivtPosition.top;
					var moveLeft	 = ivtPosition.left;

					var offTop		 = Math.abs(tb_top-ivtPosition.top);
					var offLeft		= Math.abs(tb_left-ivtPosition.left);

					var topStep		= offTop/(hz6d_effect_time/hz6d_effect_timer);
					var leftStep	 = offLeft/(hz6d_effect_time/hz6d_effect_timer);

					var heightStep = (obj_height-tb_height)/(hz6d_effect_time/hz6d_effect_timer);
					var widthStep	= (obj_width-tb_width)/(hz6d_effect_time/hz6d_effect_timer);

					var topD = 1;
					if(tb_top-ivtPosition.top>0) { topD=-1; }
					var leftD = 1;
					if(tb_left-ivtPosition.left>0) { leftD=-1; }

					ivtPosition = hz6d_getIvtPosition();
					function dmove()
					{
						moveHeight -= heightStep;
						moveWidth	-= widthStep;
						moveTop		-= topD*topStep;
						moveLeft	 -= leftD*leftStep;

						if(moveWidth<tb_width){
							obj.style.display = "none";
							try{iconDivMain.style.display = "block";}catch(e){}
							clearInterval(iIntervalId);
							hz6d_startReautoTimer();
						}else{
							var ivtPosition_t = hz6d_getIvtPosition();
							obj.style.height = moveHeight + 'px';
							obj.style.width = moveWidth + 'px';
							obj.style.top = moveTop + (ivtPosition_t.top-ivtPosition.top) + 'px';
							obj.style.left = moveLeft + (ivtPosition_t.left-ivtPosition.left) + 'px';
						}
					}
					var iIntervalId = setInterval(dmove, hz6d_effect_timer);
				}
				if(hz6d_ivt_effect==1 && hz6d_kf_type==2 && hz6d_pos_model==1 && hz6d_hidden==0){
					var iconDivMain = $53("iconDivMain"+kf_icon_id);
					if(hz6d_close_icon==0){
						hz6d_close_move(iconDivMain);
					}else{
						$53("kfivtwin").style.display = "none";
						hz6d_startReautoTimer();
					}
				}else{
					$53("kfivtwin").style.display = "none";
					hz6d_startReautoTimer();
				}
			}

			function hz6d_startReautoTimer(){
				if(acc_reauto==1 && acc_poptype==1) { setTimeout("hz6d_checkIvt()", acc_reauto_time); }
			}

			// get ivt fixed position 
			function hz6d_getIvtFixedPosition(){
				var clientRect = hz6d_getClientWindow();

				if(ivt_height=="auto") { ivt_height="200"; }
				if(zdyivt==1){
					ivt_width = zdyivt_width.replace("px","");
					ivt_height = zdyivt_height.replace("px","");
				}
				if(acc_middle==1){
					acc_lr = 1;
					acc_tb = 1;
                                        var ivt_wh=get_wh();
					acc_left = (clientRect.width-ivt_wh.width)/2;
					acc_top = (clientRect.height-ivt_wh.height)/2-40;  
				}

				if(acc_lr==2){
					var ivt_left_init = clientRect.width - acc_left - ivt_width;
				}else{
					var ivt_left_init = acc_left;
				}
				if(acc_tb==2){
					var ivt_top_init = clientRect.height - acc_top - ivt_height;
				}else{
					var ivt_top_init = acc_top;
				}
				return {top:ivt_top_init, left:ivt_left_init};
			}

			// get ivt position 
			function hz6d_getIvtPosition(){
				var clientRect = hz6d_getClientWindow();
				
				if(ivt_height=="auto") {
					if(height_new == 0 || height_new == ''){
					ivt_height="200";	
					}else{
					ivt_height=height_new; 
					}
				}
				if(zdyivt==1){
					ivt_width = zdyivt_width.replace("px","");
					ivt_height = zdyivt_height.replace("px","");
				}
				if(acc_middle==1){
					acc_lr = 1;
					acc_tb = 1;
                                        var ivt_wh=get_wh();
					acc_left = (clientRect.width-ivt_wh.width)/2;
					acc_top = (clientRect.height-ivt_wh.height)/2-40;
				}

				var scrollPosition = hz6d_getScrollPosition();
				if(acc_lr==2){
					var ivt_left_init = scrollPosition.sLeft + clientRect.width - acc_left - ivt_width;
				}else{
					var ivt_left_init = acc_left + scrollPosition.sLeft;
				}
				if(acc_tb==2){
					var ivt_top_init = clientRect.height + scrollPosition.sTop - acc_top - ivt_height;
				}else{
					var ivt_top_init = acc_top + scrollPosition.sTop;
				}
				return {top:ivt_top_init, left:ivt_left_init};
			}
			
			// get scroll position 
			function hz6d_getScrollPosition(){
				var s_top = document.body.scrollTop;
				var s_left = document.body.scrollLeft;
				if(s_left==0) { s_left=document.documentElement.scrollLeft; }
				if(s_top==0) { s_top=document.documentElement.scrollTop; }
				return {sTop:s_top, sLeft:s_left};
			}

			// get client width height 
			function hz6d_getClientWindow(){
				var clientWidth = 0;
				var clientHeight = 0;
				if(document.documentElement && document.documentElement.scrollTop){ 
					clientWidth = document.documentElement.clientWidth; 
					clientHeight = document.documentElement.clientHeight; 
				}else if(document.body){
					clientWidth = document.body.clientWidth;
					clientHeight = document.body.clientHeight;
				}
				if(hasdoctype){
					clientHeight = document.documentElement.clientHeight;
					clientWidth = document.documentElement.clientWidth;
				}
				return {width:clientWidth, height:clientHeight};
			}
			
			// old client height width 
			var hz6d_oldClient = hz6d_getClientWindow();
			function ivt_autoScroll(){
				var scrollPosition = hz6d_getScrollPosition();
				// new client height width 
				var hz6d_newClient = hz6d_getClientWindow();

				var hz6d_kfivtwin = $53("kfivtwin");
				var hz6d_kfiframe = $53("kfiframe");
				
				// top change 
				if(scrollPosition.sTop!=ivt_top || hz6d_oldClient.height!=hz6d_newClient.height){
					if(scrollPosition.sTop!=ivt_top){
						if(browser=="360" || browser=="TheWorld"){
							ivt_top = scrollPosition.sTop;
						}else{
							ivt_top = smoothMove(ivt_top, scrollPosition.sTop);
						}
					}
					if(hz6d_oldClient.height!=hz6d_newClient.height){
						if(browser=="360" || browser=="TheWorld"){
							hz6d_oldClient.height = hz6d_newClient.height;
						}else{
							hz6d_oldClient.height = smoothMove(hz6d_oldClient.height, hz6d_newClient.height);
						}
					}
					var hz6d_ivt_top = 0;
					if(acc_tb==2){
						hz6d_ivt_top = hz6d_oldClient.height - acc_top - ivt_height + ivt_top;
					}else{
						hz6d_ivt_top = acc_top + ivt_top;
					}

					if(browser=="360" || browser=="TheWorld"){
						if(hz6d_kfivtwin.style.display=="none"){
							hz6d_recover = false;
						}else{
							hz6d_recover = true;
							hz6d_kfivtwin.style.display = "none";
							try{
								hz6d_kfiframe.style.display = "none";
							}catch(e){}
						}
						hz6d_kfivtwin.style.top = hz6d_ivt_top+"px";
						try{
							hz6d_kfiframe.style.top = hz6d_ivt_top+"px";
						}catch(e){}
						if(hz6d_recover==true){
							hz6d_kfivtwin.style.display = "block";
							try{
								hz6d_kfiframe.style.display = "block";
							}catch(e){}
						}
					}else{
						hz6d_kfivtwin.style.top = hz6d_ivt_top+"px";
						try{
							hz6d_kfiframe.style.top = hz6d_ivt_top+"px";
						}catch(e){}
					}
				}
				
				// left change 
				if(scrollPosition.sLeft!=ivt_left || hz6d_oldClient.width!=hz6d_newClient.width){
					if(scrollPosition.sLeft!=ivt_left){
						if(browser=="360" || browser=="TheWorld"){
							ivt_left = scrollPosition.sLeft;
						}else{
							ivt_left = smoothMove(ivt_left, scrollPosition.sLeft);
						}
					}
					if(hz6d_oldClient.width!=hz6d_newClient.width){
						if(browser=="360" || browser=="TheWorld"){
							hz6d_oldClient.width = hz6d_newClient.width;
						}else{
							hz6d_oldClient.width = smoothMove(hz6d_oldClient.width, hz6d_newClient.width);
						}
					}
					var hz6d_ivt_left = 0;
					if(acc_lr==2){
						hz6d_ivt_left = ivt_left + hz6d_oldClient.width - acc_left - ivt_width;
					}else{
						hz6d_ivt_left = acc_left + ivt_left;
					}
					
					if(browser=="360" || browser=="TheWorld"){
						if(hz6d_kfivtwin.style.display=="none"){
							hz6d_recover = false;
						}else{
							hz6d_recover = true;
							hz6d_kfivtwin.style.display = "none";
							try{
								hz6d_kfiframe.style.display = "none";
							}catch(e){}
						}
						hz6d_kfivtwin.style.left = hz6d_ivt_left+"px";
						try{
							hz6d_kfiframe.style.left = hz6d_ivt_left+"px";
						}catch(e){}
						if(hz6d_recover==true){
							hz6d_kfivtwin.style.display = "block";
							try{
								hz6d_kfiframe.style.display = "block";
							}catch(e){}
						}
					}else{
						hz6d_kfivtwin.style.left = hz6d_ivt_left+"px";
						try{
							hz6d_kfiframe.style.left = hz6d_ivt_left+"px";
						}catch(e){}
					}
				}
			}
			//替换连接 new
			function ivt_seturl(zdy_yqk)
			{
				var divs_str = zdy_yqk.replace(/operating="([^"]*)"/g,function(str){
					var vals = str.split('"');
					if(vals[1])
					{
						var click_str = '';
						var link_str ='';
						var target_str = '_blank';
						var hrs = '';
						var valst = vals[1].split("|");
						switch(valst[0])
						{
							case 'KF': 
								case 'KF': var click_open_url = 'window.open(\"http://www15.53kf.com/webCompany.php?arg=10124917&style=1&kflist=off&kf=&zdkf_type=1&language=zh-cn&charset=gbk&username=&userinfo=&introurl=&lyurl=&lytype=0&copartner=&referer=http%3A%2F%2Fwww.oxcoder.com%2FmediaReports.html&keyword=&brief=&logo=&question=&tfrom=2\",\"_blank\",\"height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no\")';
								click_open_url = encodeURIComponent(click_open_url);
								click_str ='onliner_zdfq=2;hz6d_is_exist(\"'+click_open_url+'\");hidden_ivt();';break;
								//click_str ='onliner_zdfq=2;get_open_start();window.open(\"http://www15.53kf.com/webCompany.php?arg=10124917&style=1&kflist=off&kf=&zdkf_type=1&language=zh-cn&charset=gbk&username=&userinfo=&introurl=&lyurl=&lytype=0&copartner=&referer=http%3A%2F%2Fwww.oxcoder.com%2FmediaReports.html&keyword=&brief=&logo=&question=&tfrom=2\",\"_blank\",\"height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no\");hidden_ivt();';break;
							case 'CLOSE': click_str = 'onliner_zdfq=3;hidden_ivt();'; break;
							case 'ETEL': click_str = 'window.open(\'http://tb.53kf.com/eht.php?company_id=72124917&style_id=106167293\',\'_blank\',\'height=400,width=300,top=100,left=200,status=yes,toolbar=no,menubar=no,resizable=no,scrollbars=no,location=no,titlebar=no\')'; break;
							case 'QQ': 
								if(valst[1])
								{
									if(valst[1].toLowerCase().indexOf('biz') > -1)
									{
										var qq = valst[1].replace('biz','');
										link_str = 'http://www15.53kf.com/bizqq.php?qq=' + qq + '&from=' + window.encodeURIComponent(window.location.href);
									}
									else
									{
										link_str = 'tencent://message/?uin=' + valst[1];
									}
									if(valst[1] == '97559766')
										link_str="http://www.53kf.com/?www.53rj.com";
								};
								break;
							case 'MSN': if (valst[1]) {link_str = 'msnim:chat?contact=' + valst[1]; if(valst[1].indexOf('fonlue') > -1) link_str='http://www.53kf.com/?www.53rj.com';} break;
							case 'WW': if (valst[1]) link_str = 'aliim://sendmsg?touid=cntaobao' + valst[1]; if(valst[1] == 'fonlue') link_str='http://www.53kf.com/?www.53rj.com'; break;
							case 'HYLINK': if (valst[1]) link_str = valst[1]; if(valst[2]) target_str = valst[2]; hrs = 1;break;
							default: click_str = '';link_str = '';
						}
						var onclick_str = '';
						if (link_str == '' && click_str != '') onclick_str = "onclick='" + click_str + ";'";
						else if (link_str != ''&& click_str != '') onclick_str = ' onclick="' + click_str + ';window.open(\'' + link_str +'\',\'' + target_str + '\');" ';
						else if (link_str != ''&& click_str == '' && !hrs) onclick_str = ' onclick="window.open(\'' + link_str +'\');" ';
						else if (link_str != ''&& click_str == '' && hrs) onclick_str = 'href="'+ link_str+'" target="'+ target_str +'"';
						return onclick_str;
					}
				});
				return divs_str;
			}
			// if(0==0 && "off"=="on"){
			// 	if(acc_poptype==1){
			// 		setTimeout("hz6d_checkIvt()", 500);
			// 	}else if(acc_poptype==2){
			// 		setTimeout(function () {hz6d_startReautoTimer2(acc_chattype);}, 500);
			// 	}
			// } 
			setTimeout(function(){
				var imgdragstart = function(){return false;};
				try {
					var hid_img = $53('kfivtwin').getElementsByTagName('img');
					for(i in hid_img)hid_img[i].ondragstart=imgdragstart;
					$53('acc_title').style.overflow = 'visible'; // 修正bug 
				} catch(e){}
			},2000);