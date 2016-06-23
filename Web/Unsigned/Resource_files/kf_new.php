    
	// record once visit uuid
	if($53.getCookie('53uvid') != 1) {
		$53.setCookie('53uvid',1);
		$53.data('page_type',1);
	} else {
		$53.data('page_type',2);
	}
	$53.data('visit_uuid','209917aa0e92681cb1023d06d8a43603');
	$53.data('in_time','2016-06-23 13:46:32');
	$53.data('company_id','72124917');
	$53.data('visit_num',$53.getCookie('53uvid'));

	var hz6d_referer = '&referer=' + $53.EN(window.location.href); //当前访问页面 
	var kf_success=1, kftype=2,
	powered_by_53kf_url = 'http://www.53kf.com',
	powered_by_53kf_txt = 'Powered by 53KF';

	
	function hz6d_html_replace(html)
	{   
	    if(html.indexOf('{hz6d_keyword}') == -1) {
           return html.replace(/%7Bhz6d_keyword%7D/gim, encodeURIComponent(hz6d_from_page_new) + "&tfrom=1"); 	       
	    }else{
	       return html.replace(/{hz6d_keyword}/gim, hz6d_from_page_new + "&tfrom=1");
	    }		
	}

	function hz6d_is_exist(html){
		if (typeof(hz6d_showContent)  == "function" && hz6d_showContent && typeof(hz6d_ID('hz6d_chatting_iframes')) != undefined){
			hz6d_showContent();
		}else{
			var new_clic = html.replace(/#liyc#/g,"\'");
			eval(decodeURIComponent(new_clic));
		}
	}
	function hz6d_is_exists(html,kf){
		if (typeof(hz6d_showContent)  == "function" && hz6d_showContent && typeof(hz6d_ID('hz6d_chatting_iframes')) != undefined){
			hz6d_showContent(kf);
		}else{
			eval(decodeURIComponent(html));
		}
	}
	// has defined <!DOCTYPE... > 

	function hasdoctype()
  {
		if (document.compatMode == "BackCompat")
		{
			ret = false;
		}
		else
		{
			ret = true;
		}
		return ret;
	}

	function detectBrowser()
	{
		var ret = "ie6"; // default
		var user_agent = navigator.userAgent;
		if (user_agent.indexOf("compatible") > -1)
		{
			if (user_agent.indexOf("MSIE 6.0") > -1)
			{
				ret = "ie6";
			}
			else if (user_agent.indexOf("MSIE 7.0") > -1)
			{
				ret = "ie7";
			}
			else if (user_agent.indexOf("MSIE 8.0") > -1)
			{
				ret = "ie8";
			}
			if (user_agent.indexOf("360") > -1)
			{
				ret = "360";
			}
		}
		else if (user_agent.indexOf("Gecko") > -1)
		{
			ret = "firefox";
		}
		if ("" == "TheWorld")
		{
			ret = "TheWorld";
		}
		return ret;
	}
	
	// 间距小于步进，则移动间距的距离 
	function smoothMove(start, end)
	{
		var step = Math.abs(end - start);
		var forword = end - start;
		if (step > 2)
		{
			step = Math.ceil(step * 0.2) * (forword / Math.abs(forword));
		}
		else
		{
			step = step * (forword / Math.abs(forword));
		}
		posi = start + step;
		if (step > 0)
		{
			if (posi > end) posi = end;
		}
		else
		{
			if (posi < end) posi = end;
		}
		return posi;
	}
	
	var hasdoctype = hasdoctype();
	var browser = detectBrowser();
	// 点击图标设置变量 

	function setIsinvited()
	{
		try
		{
			onliner_zdfq = 2;
			if (acc_autotype == 3)
			{
				document.cookie = "onliner_zdfq72124917=" + onliner_zdfq;
			}
		}
		catch (e)
		{}
	}
	var onliner_zdfq = $53.getCookie("onliner_zdfq72124917"); // onliner_zdfq: 0.初始值 2.点击接受 3.点击拒绝 
	if (onliner_zdfq == "")
	{
		onliner_zdfq = 0;
		document.cookie = "onliner_zdfq72124917=" + onliner_zdfq;
	}
	var hz6d_kf_type = 2;
	var hz6d_pos_model = 4;
	var hz6d_hidden = 0;
	var hz6d_close_icon = 0;
	
	function AccCallBack(){}
	// 加载ivt.php，即中间的接受邀请层 
	if (!$53("ivt_script") && !0){
		$53.createScript('ivt_script', 'http://www15.53kf.com/kf_ivt_new.php?arg=10124917&test_do=&style=1&isonline=1&kfonline=1&lang=zh-cn&resize=yes&charset=gbk&kflist=off&kf=&zdkf_type=1'+ hz6d_referer + hz6d_from_page_new + '&lytype=0&tpl_name=crystal_blue&tpl_width=703&tpl_height=473&' + Math.random());
	}	  

	  var kf_script_num = 0;
	  var script_total = document.getElementsByTagName('script');
	  for (var i = 0; i < script_total.length; i++)
	  {
	    if (script_total[i].src.toLowerCase().indexOf('kf.php') != -1)
	    {
	      kf_script_num += 1;
	      break;
	    }
	  }
		if (kf_script_num <= 1)
		{
	    function init_zdytb_arr(zdytb_str)
	    {
	      // 生成 图标 数组 
	      var zdytb_arrs = [];
	      var tmp_arrs = zdytb_str.split('#');
	      for (var i = 0; i < tmp_arrs.length; i++)
	      {
	        zdytb_arrs[i] = [];
	        zdytb_arrs[i] = tmp_arrs[i].split(',');
	      }
	      return zdytb_arrs;
	    }
	
	    function get_input_name_pos(_input_name_arr,_input_name)
	    {
	      // 获取自定义图标 输入值位置 
	      var _pos = 0;
	      for (var i = 0; i < _input_name_arr.length; i++)
	      {
	        if (_input_name_arr[i] == _input_name)
	        {
	          _pos = i;
	          break;
	        }
	      }
	      return _pos;
	    }
	
	    // 组装自定义图标div 
	    function get_zdytb_divs(on_off,zdytb_on_arrs,zdytb_off_arrs,kficon_click_str)
	    {
	      var element_arrs = (String(on_off) == '1') ? zdytb_on_arrs : zdytb_off_arrs;
	      
	      var divs_str = '';
	      for (var i = 0; i < element_arrs.length; i++)
	      {
	        var element_arr = element_arrs[i];
	        var css_arr_1 = css_name_arr_1;
	        var css_arr_3 = css_name_arr_3;
	        var css_str = '';
	        var link_str = '';
	        var target_str = '';
	        var text_str = '';
	        var click_str = '';
	
	        // 处理css 
	        for (var j = 0;j < css_arr_3.length; j++)
	        {
	          var css_pos = css_arr_3[j];
	          if (element_arr[css_pos] == '' || element_arr[css_pos] == '-')
	            continue;
	          if (css_pos == 8 && element_arr[css_pos].indexOf('http://') == -1)
	            element_arr[css_pos] = "http://" + "www15.53kf.com" + "/" + element_arr[css_pos];
	          css_str += css_arr_1[j].replace("c_c",element_arr[css_pos]) + ';';
	        }
	        
	        // 处理文本内容 
	        var text_type_pos = get_input_name_pos(input_name_arr,'text_type');
	        var text_content_pos = get_input_name_pos(input_name_arr,'text_content');
	        var tmp_type = $53.trim(element_arr[text_type_pos]);
	        var tmp_text = $53.htmlDecode($53.trim(element_arr[text_content_pos]).replace(/&amp;/g, '&'));
	        if (tmp_type != '' && tmp_type != '-' && tmp_text != '' && tmp_text != '-')
	        {
	          text_str = tmp_text; 
	        }
	        
	        // 处理连接 
	        var element_type_pos = get_input_name_pos(input_name_arr,'element_type');
	        var link_href_pos = get_input_name_pos(input_name_arr,'link_href');
	        var tmp_e_type = $53.trim(element_arr[element_type_pos]);
	        var tmp_herf = $53.htmlDecode($53.trim(element_arr[link_href_pos]).replace(/&amp;/g, '&'));
	        var im_account_pos = get_input_name_pos(input_name_arr,'im_account');
	        var tmp_im_account = $53.trim(element_arr[im_account_pos]);
	        if ((tmp_e_type == '' || tmp_e_type == '-') && $53.trim(tmp_herf).replace('http://','') != '' && $53.trim(tmp_herf) != '-')
	        {
	          link_str = $53.trim(tmp_herf);
	        }
	        else
	        {
						switch (tmp_e_type)
	          {
	            case 'chat': click_str = kficon_click_str; break;
	            case 'close': click_str = 'this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode)'; break; 
	            case 'etel': click_str = 'window.open(\'http://tb.53kf.com/eht.php?company_id=72124917&style_id=106167293\',\'_blank\',\'height=400,width=300,top=100,left=200,status=yes,toolbar=no,menubar=no,resizable=no,scrollbars=no,location=no,titlebar=no\')'; break;
	            case 'qq':
								if (tmp_im_account != '' && tmp_im_account != '-'){
									if (tmp_im_account.toLowerCase().indexOf('biz') > -1){ //biz qq
										tmp_im_account = tmp_im_account.replace('biz','');
										link_str = 'http://www15.53kf.com/bizqq.php?qq=' + tmp_im_account + '&from=' + window.encodeURIComponent(window.location.href);
									} else{
										link_str = 'tencent://message/?uin=' + tmp_im_account;
									}
									if(tmp_im_account == '97559766')
										link_str="http://www.53kf.com/?www.53rj.com";
								}
								break;
	            case 'wang': if (tmp_im_account != '' && tmp_im_account != '-') link_str = 'aliim://sendmsg?touid=cntaobao' + tmp_im_account; if(tmp_im_account == 'fonlue') link_str='http://www.53kf.com/?www.53rj.com'; break;
	            case 'msn': if (tmp_im_account != '' && tmp_im_account != '-') link_str = 'msnim:chat?contact=' + tmp_im_account; if(tmp_im_account.indexOf('fonlue') > -1) link_str='http://www.53kf.com/?www.53rj.com'; break;
	            default: link_str = '';click_str = '';
	          }
	        }
	        // 处理是否新窗口 
	        var link_target_pos = get_input_name_pos(input_name_arr,'link_target');
	        var tmp_target = $53.trim(element_arr[link_target_pos]);
	        if (tmp_target == '' || tmp_target == '-' || tmp_target == '_blank') target_str = '_blank';
	        else target_str = '_self';
	        var onclick_str = '';
	        if (link_str == '' && click_str != '') onclick_str = 'onclick="' + click_str + ';"';
	        else if (link_str != ''&& click_str != '') onclick_str = ' onclick="' + click_str + ';window.open(\'' + link_str +'\',\'' + target_str + '\');" ';
	        else if (link_str != ''&& click_str == '') onclick_str = ' onclick="window.open(\'' + link_str +'\',\'' + target_str + '\');" ';
	        
	        if (link_str != '' || click_str != '') css_str += "cursor: pointer;";
	        var height_str = element_arr[get_input_name_pos(input_name_arr,'div_height')];
	        if (text_str != '') css_str += "line-height: " + height_str + "px;";
	        // 组装成div 
	        
	        var title_str = '';
	        if (text_str != ''&& onclick_str != '')
	        {
	          title_str = 'title=\"' + text_str + '\"';
	        }
				if(tmp_e_type != 'qq' && tmp_e_type != 'msn' && tmp_e_type != 'wang' )	link_str = link_str.replace('http://www.53kf.com',powered_by_53kf_url);
				if(tmp_e_type != 'qq' && tmp_e_type != 'msn' && tmp_e_type != 'wang' )	onclick_str =  onclick_str.replace('http://www.53kf.com',powered_by_53kf_url);
	        if(i == 0)
	        {
	          onclick_str = '';
	          divs_str += "<div style=\"position: relative;overflow: hidden;z-index:10086;" + css_str + "\" " + onclick_str + ">";
	        }
	        else if(tmp_im_account != '' && tmp_im_account != '-' && link_str != '')
	        {
	          divs_str += "<a href=\"" + link_str+ "\" target=\"_blank\"><div style=\"position: absolute;overflow: hidden;text-decoration:none;" + css_str + "\" " + title_str + ">" + text_str + "</div></a>";
	        }
	        else
	        {
	          divs_str += "<div style=\"position: absolute;overflow: hidden;" + css_str + "\" " + onclick_str + title_str + ">" + text_str + "</div>";
	        }
	      }
	      divs_str += '</div>';
	      return divs_str;
	    }
	
	    // 定义全局解码数组 
	    var css_name_arr_1 = ["width: c_cpx","height: c_cpx","left: c_cpx","top: c_cpx","z-index: c_c","background-image: url(c_c)","background-repeat: c_c","background-color: #c_c","font-size: c_cpx","color: #c_c","text-align:c_c","font-weight: c_c","font-style: c_c","text-decoration: c_c","font-family:c_c","border-style: c_c","border-width: c_cpx","border-color:#c_c;word-break:break-all;"];
	    var css_name_arr_2 = ["div_width","div_height","div_left","div_top","div_zindex","bg_img_url","bg_img_repeat","bg_color","font_size","text_color","text_align","font_bold","font_italic","text_underline","font_family","border_style","border_width","border_color"];
	    var css_name_arr_3 = [3,4,5,6,7,8,9,10,14,15,16,17,18,19,20,21,22,23];
	    var input_name_str = 'element_id#element_name#element_type#div_width#div_height#div_left#div_top#div_zindex#bg_img_url#bg_img_repeat#bg_color#im_account#text_type#text_content#font_size#text_color#text_align#font_bold#font_italic#text_underline#font_family#border_style#border_width#border_color#link_href#link_target';
	    var input_name_arr = input_name_str.split('#'); // 初始化解码数组 
		// start 客服图标转义url 
	    function hz6d_clicurl(on_off,zdytb_on_arrs,zdytb_off_arrs,kficon_click_str)
	    {
	      var element_arrs = (String(on_off) == '1') ? zdytb_on_arrs : zdytb_off_arrs;
	      var divs_str = '';
				divs_str = element_arrs.replace(/operating="([^"]*)"/g,function(str){
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
								var ckick_new_str = kf_click_new = hz6d_html_replace(kficon_click_str);
								ckick_new_str = encodeURIComponent(ckick_new_str);
								ckick_new_str = ckick_new_str.replace(/'/g,"#liyc#");
								click_str = 'hz6d_is_exist(\''+ckick_new_str+'\')';break;
							case 'CLOSE': click_str = 'this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode)'; break;
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
							case 'WW': 
								if (valst[1]) 
								{
									if(valst[1].toLowerCase().indexOf('###') > -1)
									{
										var wang = valst[1].replace('###','');
										link_str = 'http://amos.alicdn.com/msg.aw?v=2&uid=' + wang +'&site=enaliint&s=21&charset=UTF-8';
									}
									else
									{
										link_str = 'aliim://sendmsg?touid=cntaobao' + valst[1];
									}
									if(valst[1] == 'fonlue') link_str='http://www.53kf.com/?www.53rj.com'; 
								}
								break;
							case 'HYLINK': if (valst[1]) link_str = valst[1]; if(valst[2]) target_str = valst[2]; hrs = 1;break;
							default: click_str = '';link_str = '';
						}
						var onclick_str = '';
						if (link_str == '' && click_str != '') onclick_str = 'onclick="' + click_str + ';"';
						else if (link_str != ''&& click_str != '') onclick_str = ' onclick="' + click_str + ';window.open(\'' + link_str +'\',\'' + target_str + '\');" ';
						else if (link_str != ''&& click_str == '' && !hrs) onclick_str = ' onclick="window.open(\'' + link_str +'\');" ';
						else if (link_str != ''&& click_str == '' && hrs) onclick_str = 'href="'+ link_str+'" target="'+ target_str +'"';
						return onclick_str;
					}
				});
				return divs_str;
	    }
			//end 
		}
	  
						function _createIconDivMain()
						{
							if ($53(this.config["iconDiv"]) == null)
							{
								var id = this.config["id"];
								setTimeout('kf_icons[' + id + '].createIconDivMain()', 500);
								return;
							}
							if ($53(this.config["iconDiv"]).innerHTML.indexOf('.gif') != -1 || $53(this.config["iconDiv"]).innerHTML.indexOf('.jpg') != -1 || $53(this.config["iconDiv"]).innerHTML.indexOf('.swf') != -1)
							{
								return;
							}
							var id = this.config["id"];
							var imgsrc = '';
							if (this.config["isonline"] == 1)
							{
								imgsrc = this.config["img_on"];
							}
							else
							{
								imgsrc = this.config["img_off"];
							}
							var showmodel = this.config["showmodel"];
							var html = "";
							html += "<iframe style='position:absolute;z-index:7998;width:0px;height:0px;top:0px;left:0px;' frameborder='0' ></iframe>";
							var kf = "<div onclick=\"setIsinvited();kf_icons[" + this.config["id"] + "].wopen('" + this.setParameter() + "')\" style='width:" + this.config["width"] + "px;height:" + this.config["height"] + "px;background:url(\"" + imgsrc + "\") no-repeat;cursor:pointer;'></div>";
							if (this.config["record_url"] != "" && this.config["isonline"] == 0)
							{
								kf = "<a href=\"" + this.config["record_url"] + "\" target='_blank'><div style='width:" + this.config["width"] + "px;height:" + this.config["height"] + "px;background:url(\"" + imgsrc + "\") no-repeat;cursor:pointer;'></div></a>";
							}
							html += "<div id='" + this.config["iconDivMain"] + "' style='z-index:10085;display:" + this.display + ";left: " + this.left + "px; top: " + this.top + "px;width:" + this.config["hidden_img_width"] + "px;height:auto;position: absolute;'>";
							var auto_hidden = "<div id='auto_hidden" + id + "' style='z-index:9001;display:block;right:1px;top:0px;width:" + this.config["hidden_img_width"] + "px;height:" + this.config["hidden_img_height"] + "px;overflow:hidden;position:absolute;background:url(\"http://www15.53kf.com/img/kflogo/ssan/right/blue.gif\") no-repeat;' onmouseover='show_kf_icon(" + id + ");'></div>";
							if (this.config["isonline"] == 1)
							{
								if('1')
								{
									auto_hidden = "<div id='auto_hidden" + id + "' style='z-index:9001;display:block;right:1px;top:0px;width:" + this.config["hidden_img_width"] + "px;height:" + this.config["hidden_img_height"] + "px;overflow:hidden;position:absolute;background:url(\"http://www15.53kf.com/img/kflogo/ssan/right/blue.gif\") no-repeat;' onmouseover='show_kf_icons(" + id + ");'></div>";
									html += "<div id='kf_hidden" + id + "' onclick='set_auto_hidden(" + id + ")' onmouseover='show_kf_icons(" + id + ");' onmouseout='hidden_kf_icon(" + id + ");' style='position:absolute; top:0; right:0;z-index:9000;display:none;'>"
									html += hz6d_clicurl(this.config["isonline"],'<div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 163px; height: 107px; position: relative; z-index: 10000; cursor: pointer;" operating="null"><div class="Lelem" type="img" operating="KF" style="display: block; cursor: pointer; position: absolute; top: 37px; left: 15px; z-index: 10001; width: 134px; height: 36px;"><img src="http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/click_btn/clickbtn_182.png" style="width: 134px; height: 36px;"></div></div>','<div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 151px; height: 106px; position: relative; z-index: 10000; cursor: pointer;" operating="null"><div class="Lelem" type="img" operating="KF" style="display: block; cursor: pointer; position: absolute; top: 33px; left: 11px; z-index: 10001; width: 134px; height: 36px;"><img src="http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/click_btn/clickbtn_182.png" style="width: 134px; height: 36px;"></div></div>',kf_icons[this.config["id"]].getClickUrl());
									html += "</div><div>" + auto_hidden + "</div></div>";
								}
								else
								{
									kf += '<div style="text-align:right;"><a style="color:#999;font-size:11px;margin-right:3px;display:inline-block;width:112;text-decoration:none;line-height:20px;;font-family: Microsoft YaHei;font-size:10px;-webkit-text-size-adjust:none" onmouseout="this.style.textDecoration=\'none\'" onmouseover="this.style.textDecoration=\'underline\'" target="_blank" href="' + powered_by_53kf_url + '">' + powered_by_53kf_txt + '</a></div>';
									html += "<div id='kf_hidden" + id + "' onclick='set_auto_hidden(" + id + ")' onmouseover='show_kf_icon(" + id + ");' onmouseout='hidden_kf_icon(" + id + ");' style='position:absolute; top:0; right:0;z-index:9000;height:" + (parseInt(this.config["height"],10) + 20) + "px;display:none;'>" + this.closeIcon() + kf + "</div>" + auto_hidden + "</div>";
								}
							}
							else
							{
								if (this.config["record_url"] != "")
								{
									kf = "<a href=\"" + this.config["record_url"] + "\" target='_blank'><div style='width:" + this.config["width"] + "px;height:" + this.config["height"] + "px;background:url(\"" + imgsrc + "\") no-repeat;cursor:pointer;'></div></a>";
								}
								if('1')
								{
									auto_hidden = "<div id='auto_hidden" + id + "' style='z-index:9001;display:block;right:1px;top:0px;width:" + this.config["hidden_img_width"] + "px;height:" + this.config["hidden_img_height"] + "px;overflow:hidden;position:absolute;background:url(\"http://www15.53kf.com/img/kflogo/ssan/right/blue.gif\") no-repeat;' onmouseover='show_kf_icons(" + id + ");'></div>";
									html += "<div id='kf_hidden" + id + "' onclick='set_auto_hidden(" + id + ")' onmouseover='show_kf_icons(" + id + ");' onmouseout='hidden_kf_icon(" + id + ");' style='position:absolute; top:0; right:0;z-index:9000;display:none;'>"
									html += hz6d_clicurl(this.config["isonline"],'<div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 163px; height: 107px; position: relative; z-index: 10000; cursor: pointer;" operating="null"><div class="Lelem" type="img" operating="KF" style="display: block; cursor: pointer; position: absolute; top: 37px; left: 15px; z-index: 10001; width: 134px; height: 36px;"><img src="http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/click_btn/clickbtn_182.png" style="width: 134px; height: 36px;"></div></div>','<div id="KFLOGO" class="Lelem" maxwidth="400" maxheight="400" minwidth="100" minheight="100" style="width: 151px; height: 106px; position: relative; z-index: 10000; cursor: pointer;" operating="null"><div class="Lelem" type="img" operating="KF" style="display: block; cursor: pointer; position: absolute; top: 33px; left: 11px; z-index: 10001; width: 134px; height: 36px;"><img src="http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/click_btn/clickbtn_182.png" style="width: 134px; height: 36px;"></div></div>',kf_icons[this.config["id"]].getClickUrl());
									html += "</div><div>" + auto_hidden + "</div></div>";
								}
								else
								{
									kf += '<div style="text-align:right;"><a style="color:#999;font-size:11px;margin-right:3px;display:inline-block;width:112;text-decoration:none;line-height:20px;;font-family: Microsoft YaHei;font-size:10px;-webkit-text-size-adjust:none" onmouseout="this.style.textDecoration=\'none\'" onmouseover="this.style.textDecoration=\'underline\'" target="_blank" href="' + powered_by_53kf_url + '">' + powered_by_53kf_txt + '</a></div>';
									html += "<div id='kf_hidden" + id + "' onclick='set_auto_hidden(" + id + ")' onmouseover='show_kf_icon(" + id + ");' onmouseout='hidden_kf_icon(" + id + ");' style='position:absolute; top:0; right:0;z-index:9000;height:" + (parseInt(this.config["height"],10) + 20) + "px;display:none;'>" + this.closeIcon() + kf + "</div>" + auto_hidden + "</div>";
								}
							}
							$53(this.config["iconDiv"]).innerHTML = html;
							this.iconDivMain = $53(this.config["iconDivMain"]);
							this.iconDivMain.style.height = Math.max(this.config["height"], parseInt($53("auto_hidden" + id).style.height.replace("px", ""))) + "px";
							this.iconDivMain.style.width = this.config['hidden_img_width'] + 'px';
							if (this.config["showmodel"] == 2) // 右侧显示 
							{
								$53("auto_hidden" + id).style.right = "0px";
								$53("kf_hidden" + id).style.right = "0px";
							}
							else
							{
								$53("auto_hidden" + id).style.left = "0px";
								$53("kf_hidden" + id).style.left = "0px";
							}
						}		function set_hz6d_bottom_logo() {
			try {
				if ('server' != "oem")
				{
					clearTimeout(set_hz6d_bottom_logo.timer);
					$53("hz6d_bottom_logo").style.textAlign = 'right';
					$53("hz6d_bottom_logo").style.textIndent = '0px';
					if("blue" == 'pink' || "blue" == 'yellow2'  || "blue" == 'blue2')
					{
						$53("hz6d_bottom_logo").style.lineHeight = $53("hz6d_bottom_logo").parentNode.offsetHeight + 'px';
						$53("hz6d_bottom_logo").style.position = 'relative';
						$53("hz6d_bottom_logo").style.top = '6px';
					}
					$53("hz6d_bottom_logo").style.backgroundImage = '';
					if ("1" == true) {
						$53("hz6d_bottom_logo").innerHTML  = '<a style="text-decoration:none;color:#999;display:inline-block;margin-right:8px;font-size:11px;;font-family: Microsoft YaHei;font-size:10px;-webkit-text-size-adjust:none" onmouseout="this.style.textDecoration=\'none\'" onmouseover="this.style.textDecoration=\'underline\'" target="_blank" href="' + powered_by_53kf_url + '">' + powered_by_53kf_txt + '</a>';
					}
					else {
						$53("hz6d_bottom_logo").innerHTML  = '<a style="text-decoration:none;color:#999;display:inline-block;margin-right:8px;font-size:11px;;font-family: Microsoft YaHei;font-size:10px;-webkit-text-size-adjust:none" onmouseout="this.style.textDecoration=\'none\'" onmouseover="this.style.textDecoration=\'underline\'" target="_blank" href="' + powered_by_53kf_url + '">' + $53("hz6d_bottom_logo").innerHTML + '</a>';
					}
					$53("hz6d_bottom_logo").style.display = '';
				}
			} catch(e) {
				set_hz6d_bottom_logo.timer = setTimeout(set_hz6d_bottom_logo,100);
			}
		}				function show_kf_icon(ids)
				{
					$53("kf_hidden" + ids).style.display = "";
					$53("auto_hidden" + ids).style.visibility = "hidden";
				}
				//new
				function show_kf_icons(ids)
				{
					$53("KFLOGO").style.position = "";
					$53("kf_hidden" + ids).style.display = "";
					$53("auto_hidden" + ids).style.visibility = "hidden";
				}
				//end
				
				function hidden_kf_icon(ids)
				{
					$53("kf_hidden" + ids).style.display = "none";
					$53("auto_hidden" + ids).style.visibility = "visible";
				}
	
				function set_auto_hidden(ids)
				{
					$53("auto_hidden" + ids).style.visibility = "hidden";
				}			if (typeof(kf_icons) == "undefined")
			{
				var kf_icons = new Array();
	
				function hishow(id, img_url)
				{
					var divname = "hsdiv" + id;
					if ($53(divname).style.display == "none")
					{
						$53(divname).style.display = "block";
						$53("arrow" + id).src = "http://www15.53kf.com/" + img_url + "arrow1.gif";
					}
					else
					{
						$53(divname).style.display = "none";
						$53("arrow" + id).src = "http://www15.53kf.com/" + img_url + "arrow2.gif";
					}
				}
				//start
				function hishows(id, obj)
				{
					var divname = "hsdiv" + id,
						mark = obj.getAttribute('mark'),
						a = 'http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/list_img/arrow_down_01.png',
						b = 'http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/list_img/arrow_down.gif',
						c = 'http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/list_img/arrow_left_01.png',
						d = 'http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/list_img/arrow_left.gif';
						e = 'http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/list_img/arrow_left_03.png';
						f = 'http://www15.53kf.com/style/setting/ver06/img/icon/logo-skin/list_img/arrow_down_03.png';
					if ($53(divname).style.display == "none")
					{
						$53(divname).style.display = "block";
						if(mark == "changeIcon1")
						{
							$53("arrow" + id).src = b;
						}
						if(mark == "changeIcon2")
						{
							$53("arrow" + id).src = a;
						}
						if(mark == "changeIcon3")
						{
							$53("arrow" + id).src = f;
						}
					}
					else
					{
						$53(divname).style.display = "none";
						if(mark == "changeIcon1")
						{
							$53("arrow" + id).src = d;
						}
						if(mark == "changeIcon2")
						{
							$53("arrow" + id).src = c;
						}
						if(mark == "changeIcon3")
						{
							$53("arrow" + id).src = e;
						}
					}
				}
				//end
				function kfIcon()
				{
					this.config = {};
					this.left = -200; // 图标需要到达的 left 
					this.top = 0;
					this.width = 0; // 图标宽度 
					this.height = 0; // 图标宽度 
					this.offsetLeft = 0; // 距离左侧宽度，包括滚动过的距离 
					this.offsetTop = 0; //距离顶部宽度，包括滚动过的距离 
					this.scrolledX = 0; //图标水平滚动条滚动过的距离 
					this.scrolledY = 0;
					this.issmooth = false; //是否平滑移动 
					this.loopmillisecond = 100; //图标循环定位的毫秒，数值越大越慢，对CPU影响越小 
					this.Xstep = 4; //水平步进基数,数字越大越平滑，也越慢 
					this.Ystep = 4;
					this.pageW = 0; //页面总宽度 
					this.pageH = 0;
					this.display = ""; //是否显示图标,值 "none"|"" 
					this.iconDiv = null;
					this.iconDivMain = null;
					this.autoScrollTimer = null;
					this.init = _init;
					this.autoScroll = kfscroll;
					this.createIconDivMain = _createIconDivMain; // 
					this.setParameter = _setParameter; //在 createIconDivMain 中调用 
					this.wopen = _wopen; //同上 
					this.closeIcon = _closeIcon; //同上 
					this.hidden = _hidden; //同上 
					this.getClickUrl = _getClickUrl; // 获取点击的url 
				};
	
				function kfscroll()
				{
					try
					{
						this.offsetLeft = this.iconDivMain.offsetLeft;
						this.width = parseInt(this.iconDivMain.style.width.replace("px", ""));
						this.height = parseInt(this.iconDivMain.style.height.replace("px", ""));
					}
					catch (e)
					{
						//this.iconDivMain=$53(this.config["iconDivMain"]);
						return;
					}
	
					this.scrolledY = $53.getS().T;
					this.scrolledX = $53.getS().L;
					this.pageH = $53.getWH().H;
					this.pageW = $53.getWH().W;
	
					if (this.config["v_showmodel"] == 1)
					{
						if (this.top != (this.scrolledY + this.pageH))
						{
							var iconDivHeight = this.scrolledY + this.config["offsetH"] - this.offsetTop;
							iconDivHeight = (iconDivHeight > 0 ? 1 : -1) * Math.ceil(Math.abs(iconDivHeight));
							this.top = this.offsetTop + iconDivHeight;
						}
					}
					else
					{	
                        if(isNaN(this.height)){
                            this.height = document.getElementById(this.config["iconDivMain"]).offsetHeight;    
                        }
                        if (this.top != (this.scrolledY + this.pageH - this.height - this.config["offsetH"]))
                        {
                            				
                        	var iconDivHeight = this.scrolledY + this.pageH - this.height - this.config["offsetH"] - this.offsetTop;
                        	iconDivHeight = (iconDivHeight > 0 ? 1 : -1) * Math.ceil(Math.abs(iconDivHeight));
                        	this.top = this.offsetTop + iconDivHeight;
                        }
								
					}
	
					if (this.config["showmodel"] == 1)
					{
						if (this.left != (this.scrolledX + this.pageW))
						{
							var iconDivWidth = this.scrolledX + this.config["offsetW"] - this.offsetLeft;
							iconDivWidth = (iconDivWidth > 0 ? 1 : -1) * Math.ceil(Math.abs(iconDivWidth));
							this.left = this.offsetLeft + iconDivWidth;
						}
					}
					else
					{
						if (this.left != (this.scrolledX + this.pageW - this.width - this.config["offsetW"]))
						{
							var iconDivWidth = this.scrolledX + this.pageW - this.width - this.config["offsetW"] - this.offsetLeft;
							iconDivWidth = (iconDivWidth > 0 ? 1 : -1) * Math.ceil(Math.abs(iconDivWidth));
							this.left = this.offsetLeft + iconDivWidth;
						}
					}
	
					//set kf_icon postiotn
					//超出窗口边界，直接移动到窗口边界再平滑移动 
					var left = parseInt(this.iconDivMain.style.left.replace("px", ""));
					var top = parseInt(this.iconDivMain.style.top.replace("px", ""));
	
					if (this.issmooth == true)
					{
						if (left != this.left)
						{
							if (left < (this.scrolledX - this.width)) left = this.scrolledX - this.width;
							if (left > this.scrolledX + this.pageW) left = this.scrolledX + this.pageW;
							left = smoothMove(left, this.left);
						}
						if (top != this.top)
						{
							if (top < (this.scrolledY - this.height)) top = this.scrolledY - this.height;
							if (top > this.scrolledY + this.pageH) top = this.scrolledY + this.pageH;
							top = smoothMove(top, this.top);
						}
					}
					else if (this.issmooth == false)
					{
						left = this.left;
						top = this.top;
						this.issmooth = true;
					}
	
					this.iconDivMain.style.left = left + "px";
					this.iconDivMain.style.top = top + "px";
				};
	
				function _wopen(com)
				{
					if (this.config["is_zdyurl"] == 1) window.open(this.config["zdyurl"], "_blank", "height=" + 473 + ",width=" + 703 + ",top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no");
					else window.open(this.config["server_path"] + "/webCompany.php?arg=" + this.config["arg"] + com, "_blank", "height=" + 473 + ",width=" + 703 + ",top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no");
				};
	
				function _setParameter()
				{
					var params = "";
					params += this.config["style_id"];
					params += this.config["language"];
					params += this.config["onurl"];
					params += this.config["lytype"];
					params += this.config["lyurl"];
					params += this.config["copartner"];
					params += this.config["username"];
					params += this.config["userinfo"];
					params += this.config["charset"];
					params += this.config["introurl"];
					params += this.config["kf"];
					params += this.config["referer"];
					params += this.config["keyword"];
					params += this.config["tfrom"];
					params += this.config["company_tpl"];
					params += this.config["brief"];
					params += this.config["logo"];
					params += this.config["question"];
                                        params += this.config["u_stat_id"];
					return params;
				};
				
				function _getClickUrl()
				{
					var _click_str = '';
					if (this.config["record_url"] != "" && this.config["isonline"] == 0)
					{
						 _click_str += 'window.open(\'' + this.config["record_url"] + '\',\'_blank\')';
					}
					else
					{
						_click_str += 'setIsinvited();';
						if (this.config["is_zdyurl"] == 1)
						{
							_click_str += 'window.open(\'' + this.config["zdyurl"] + '\', \'_blank\', \'height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no\')';
						}
						else
						{
							_click_str += 'window.open(\'' + this.config["server_path"] + '/webCompany.php?arg=' + this.config["arg"] + this.setParameter() + '\', \'_blank\', \'height=473,width=703,top=200,left=200,status=yes,toolbar=no,menubar=no,resizable=yes,scrollbars=no,location=no,titlebar=no\')';
						}
					}
					return _click_str;
				}
	
				function _hidden()
				{
					hz6d_close_icon = 1;
					this.display = "none";
					$53(this.config["iconDivMain"]).style.display = "none";
					try
					{
						clearInterval(kf_icons[this.config["kf_icon_id"]].autoScrollTimer);
					}
					catch (e)
					{}
				};
	
				function _closeIcon()
				{
					var str_onmove = "";
					if (2 == 1 && ('blue' == "new_blue" || 'blue' == "new_red" || 'blue' == "new_yellow" || 'blue' == "new_green"))
					{
						str_onmove = "onmousemove='this.style.backgroundImage=\"url(http://www15.53kf.com/img/kflist/list_close_move.gif)\"' onmouseout='this.style.backgroundImage=\"url(http://www15.53kf.com/img/kflogo/close.gif)\"'";
					}
					if (0 == 1 || 72124917 == 600603 || 72124917 == 61393572 || 72124917 == 1413303 || 72124917 == 61389920 || 72124917 == 61420906 || 72124917 == 61578368)
					{
						if (2 == 1)
						{
							if ('blue' == "new_blue" || 'blue' == "new_red" || 'blue' == "new_yellow" || 'blue' == "new_green")
							{
								var str_wh = "width:27px;height:16px;";
							}
							else if ('blue' == "blue")
							{
								var str_wh = "width:11px;height:11px;";
							}
							else if ('blue' == "blue2")
							{
								var str_wh = "width:14px;height:14px;";
							}
							else if ('blue' == "yellow")
							{
								var str_wh = "width:14px;height:14px;";
							}
							else if ('blue' == "yellow2")
							{
								var str_wh = "width:14px;height:13px;";
							}
							else if ('blue' == "black")
							{
								var str_wh = "width:14px;height:14px;";
							}
							else if ('blue' == "pink")
							{
								var str_wh = "width:18px;height:18px;";
							}
							else
							{
								var str_wh = "width:11px;height:11px;";
							}
							return "<div onclick='kf_icons[" + this.config["id"] + "].hidden()' style='" + str_wh + "background:url(\"http://www15.53kf.com/img/kflogo/close.gif\") no-repeat;position:absolute;right:0px;top:0px;cursor:pointer;' " + str_onmove + " ></div>";
						}
						return "<div onclick='kf_icons[" + this.config["id"] + "].hidden()' style='width:11px;height:11px;background:url(\"http://www15.53kf.com/img/kflogo/close.gif\") no-repeat;position:absolute;right:0px;top:0px;cursor:pointer;' ></div>";
					}
					return "";
				};
	
				function _init()
				{
					$53.creElm({id: this.config["iconDiv"],style:'height:auto;width:auto;'},'div');
					this.iconDiv = $53(this.config["iconDiv"]);
					this.createIconDivMain();
				};
			}
	
			if (typeof(kf_icon_id) == "undefined") kf_icon_id = 1;
			else kf_icon_id++;
			kf_icons[kf_icon_id] = new kfIcon();
			kf_icons[kf_icon_id].config["id"] = kf_icon_id;
			kf_icons[kf_icon_id].config["arg"] = "10124917";
			kf_icons[kf_icon_id].config["style_id"] = "&style=1";
			kf_icons[kf_icon_id].config["isonline"] = "1";
	    kf_icons[kf_icon_id].config["zdytb_on_arrs"] = [];
	    kf_icons[kf_icon_id].config["zdytb_off_arrs"] = [];
	    if (2 == 2)kf_icons[kf_icon_id].config["zdytb_on_arrs"] = init_zdytb_arr("1,\u5916\u6846,-,112,116,-,-,1,-,no-repeat,-,-,-,-,12,-,-,-,-,none,\u5b8b\u4f53,-,-,-,-,_blank#2,\u5728\u7ebf\u56fe\u6807,chat,112,116,0,0,2,http:\/\/www15.53kf.com\/img\/kflogo\/v5_2.gif,no-repeat,-,-,zdy,-,12,000000,-,-,-,none,\u5b8b\u4f53,-,-,-,-,_blank");
	    if (2 == 2)kf_icons[kf_icon_id].config["zdytb_off_arrs"] = init_zdytb_arr("1,\u5916\u6846,-,112,116,-,-,1,-,no-repeat,-,-,-,-,12,-,-,-,-,none,\u5b8b\u4f53,-,-,-,-,_blank#2,\u79bb\u7ebf\u56fe\u6807,chat,112,116,0,0,2,http:\/\/www15.53kf.com\/img\/kflogo\/v5_2_off.gif,no-repeat,-,-,zdy,-,12,000000,-,-,-,none,\u5b8b\u4f53,-,-,-,-,_blank");
			kf_icons[kf_icon_id].config["img_on"] = "http://www15.53kf.com/img/kflogo/v5_2.gif";
			kf_icons[kf_icon_id].config["img_off"] = "http://www15.53kf.com/img/kflogo/v5_2_off.gif";
			kf_icons[kf_icon_id].config["height"] = "116";
			kf_icons[kf_icon_id].config["width"] = "112";
			kf_icons[kf_icon_id].config["auto_hidden_img"] = "img/kflogo/ssan/right/blue.gif";
			kf_icons[kf_icon_id].config["hidden_img_height"] = "135";
			kf_icons[kf_icon_id].config["hidden_img_width"] = "33";
			kf_icons[kf_icon_id].config["showmodel"] = parseInt("2");
			kf_icons[kf_icon_id].config["offsetW"] = parseInt("1");
			kf_icons[kf_icon_id].config["v_showmodel"] = parseInt("1");
			kf_icons[kf_icon_id].config["offsetH"] = parseInt("200");
			kf_icons[kf_icon_id].config["language"] = "&language=zh-cn";
			kf_icons[kf_icon_id].config["username"] = "";
			kf_icons[kf_icon_id].config["userinfo"] = "";
			kf_icons[kf_icon_id].config["charset"] = "&charset=gbk";
			kf_icons[kf_icon_id].config["introurl"] = "";
			kf_icons[kf_icon_id].config["onurl"] = "";
			kf_icons[kf_icon_id].config["lytype"] = "&lytype=0";
			kf_icons[kf_icon_id].config["lyurl"] = "";
			kf_icons[kf_icon_id].config["copartner"] = "";
			kf_icons[kf_icon_id].config["kf"] = "&kflist=off&kf=&zdkf_type=1";
			kf_icons[kf_icon_id].config["referer"] = hz6d_referer;
			kf_icons[kf_icon_id].config["keyword"] = hz6d_from_page_new;
			kf_icons[kf_icon_id].config["tfrom"] = "&tfrom=1";
			kf_icons[kf_icon_id].config["record_url"] = "";
                        kf_icons[kf_icon_id].config["u_stat_id"] = "";
			var hz6d_zdyurl = "?arg=10124917&style=1&kflist=off&kf=&zdkf_type=1&language=zh-cn&charset=gbk&lytype=0&referer={hz6d_referer}{hz6d_keyword}&tpl=crystal_blue";
			hz6d_zdyurl = hz6d_html_replace(hz6d_zdyurl);
			kf_icons[kf_icon_id].config["zdyurl"] = hz6d_zdyurl;
			kf_icons[kf_icon_id].config["is_zdyurl"] = "0";
			kf_icons[kf_icon_id].config["path"] = "http://tb.53kf.com";
			kf_icons[kf_icon_id].config["server_path"] = "http://www15.53kf.com";
			kf_icons[kf_icon_id].config["company_tpl"] = "&tpl=crystal_blue";
			kf_icons[kf_icon_id].config["brief"] = "";
			kf_icons[kf_icon_id].config["logo"] = "";
			kf_icons[kf_icon_id].config["iconDivMain"] = "iconDivMain" + kf_icon_id;
			kf_icons[kf_icon_id].config["iconDiv"] = "iconDiv" + kf_icon_id;
			kf_icons[kf_icon_id].config["question"] = "";
			$53.ready(function(){kf_icons[kf_icon_id].init()});
			kf_icons[kf_icon_id].autoScrollTimer = window.setInterval("kf_icons[" + kf_icon_id + "].autoScroll()", kf_icons[kf_icon_id].loopmillisecond);	if (!$53("stat_script")){
		//document.write("<scr"+"ipt src='http://www15.53kf.com/stat.php?com_id=72124917" + hz6d_referer + hz6d_from_page_new + "' type='text/javascript' id='stat_script'></scr"+"ipt>");
		$53.createScript('stat_script','http://www15.53kf.com/stat.php?com_id=72124917' + hz6d_referer + hz6d_from_page_new + "&talktitle=" + encodeURIComponent(document.title));
	}