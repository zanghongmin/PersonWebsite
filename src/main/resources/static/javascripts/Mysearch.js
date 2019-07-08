window.baidu = {};
var searchq = "";
baidu.sug = function(e) {
    var d = e.s;
    searchq = e.q;
    var a = $("#pwedsearchlist");
    a.empty();
    if (d.length > 0) {
        var c = "";
        for (var b = 0; b < d.length; b++) {
            c += '<div class="testsa" hidefocus="ture" >' + d[b] + "</div>";
        }
        a.append(c);
        $(".testsa").bind("click",
			function() {
				$("#pwebinput").val($(this).text());
				enterpwedsearchlist();
			});
        $(".testsa").bind("mouseenter",
			function() {
				$("div.ahover").removeClass("ahover");
				$(this).addClass("ahover");
			});
        $(".testsa").bind("mouseleave",
			function() {
				$(this).removeClass("ahover");
			});
		a.css("width",$("#pwebinput").css("width"));
		a.css("left",$("#pwebinput").css("left"));
        a.show();
    } else {
        a.hide();
    }
};

window.googlesug = {};
googlesug.sug = function(e) {
    var d = e[1];
    searchq = e[0];
    var a = $("#pwedsearchlist");
    a.empty();
    if (d.length > 0) {
        var c = "";
        for (var b = 0; b < d.length; b++) {
            c += '<div class="testsa"  hidefocus="ture" >' + d[b][0] + "</div>";
        }
        a.append(c);
        $(".testsa").bind("click",
        function() {
				$("#pwebinput").val($(this).text());
				enterpwedsearchlist();
        });
        $(".testsa").bind("mouseenter",
        function() {
				$("div.ahover").removeClass("ahover");
				$(this).addClass("ahover");
        });
        $(".testsa").bind("mouseleave",
        function() {
            $(this).removeClass("ahover");
        });
		a.css("width",$("#pwebinput").css("width"));
		a.css("left",$("#pwebinput").css("left"));
        a.show();
    } else {
        a.hide();
    }
};


   //打开搜索页面
   function pwedsearch(obj){
	   
	   var hrefold = $(obj).attr("dataurl")
	   
		var test = hrefold.replace(/{pwebcontent}/, $(obj).parent().prev().prev().val());
		
		
		$(obj).attr("href",test)
		
		//window.open(test);  
		
		
		
   }
   
   

	var i = {
		UP: 38,
		DOWN: 40,
		DEL: 46,
		TAB: 9,
		ENTER: 13,
		ESC: 27
	};
   
   
   $("#pwebinput").bind("keyup", function(q) {
		var e = $("#pwedsearchlist");
		switch (q.keyCode) {
		case i.UP:
			q.preventDefault();
			if (!e.is(":hidden")) {
				//uppwedsearchlist();
			}
			break;
		case i.DOWN:
			q.preventDefault();
			if (!e.is(":hidden")) {
				//downpwedsearchlist();
			}
			break;
		case i.ENTER:
			q.preventDefault();
			if (!e.is(":hidden")) {
				enterpwedsearchlist();
			}			
			break;
		case i.ESC:
			//$(this).val(q.keyCode);
			break;
		default:
			addpwedsearchlist();
			break;
		}
	});
	
	
$("#pwebinput").bind("keydown",function(q){
  var e = $("#pwedsearchlist");
		switch (q.keyCode) {
		case i.UP:
			q.preventDefault();
			if (!e.is(":hidden")) {
				uppwedsearchlist();
			}
			break;
		case i.DOWN:
			q.preventDefault();
			if (!e.is(":hidden")) {
				downpwedsearchlist();
				//downtimed();
			}
			break;
		default:
			break;
		}
});
	
	

	
	
	
	

	$("#pwebinput").bind("click", function() {
			if($(this).val() != '' && $("#pwedsearchlist").find("div").length>0){
				$("#pwedsearchlist").show();
			}
	});
	
	
	function addpwedsearchlist(){	
	
		if($("#pwedsearch").attr("dataurl").indexOf("www.baidu.com/s?wd=") >= 0){
				
				var B = document.createElement("script");
				B.type = "text/javascript";
				B.src = "http://suggestion.baidu.com/su?wd=" + $("#pwebinput").val() + "&p=3&t=" + (new Date()).getTime();
				B.charset = "gb2312";
				B.id = "sugscript";
				if (document.getElementById("sugscript").hasChildNodes()) {
					document.getElementById("sugscript").replaceChild(B, document.getElementById("sugscript").firstChild);
				} else {
					document.getElementById("sugscript").appendChild(B);
				}	
		}else if($("#pwedsearch").attr("dataurl").indexOf("www.google.com.hk/search?q=") >= 0){
				
				var B = document.createElement("script");
				B.type = "text/javascript";
				B.src = "http://www.google.com.hk/complete/search?hl=zh-CN&client=hp&q=" + $("#pwebinput").val() + "&cp=1&hjson=t&jsonp=window.googlesug.sug&t=" + (new Date()).getTime();
				B.id = "sugscript";
				if (document.getElementById("sugscript").hasChildNodes()) {
					document.getElementById("sugscript").replaceChild(B, document.getElementById("sugscript").firstChild);
				} else {
					document.getElementById("sugscript").appendChild(B);
				}
		}else{
			if (document.getElementById("sugscript").hasChildNodes()) {
				$("#sugscript").empty();
			} 
			$("#pwedsearchlist").empty();

		}
		
		//else if($("#pwedsearch").val().indexOf("ai.taobao.com/search/index.htm?key=") >= 0){
		//	$.getJSON("https://suggest.taobao.com/sug?&code=utf-8&q=" + $("#pwebinput").val() + "&t=" + (new Date()).getTime(), function(result){
		//		var a = $("#pwedsearchlist");
		//		a.empty();
		//		var d = result.result;
		//		if(d.length>0){
		//			var c = "";
		//			for (var b = 0; b < d.length; b++) {
		//				c += '<div class="testsa"  hidefocus="ture" >' + d[b][0] + "</div>";
		//			}						
		//			a.append(c);
		//			$(".testsa").bind("click",
		//				function() {
		//					$("#pwebinput").val($(this).text());
		//					enterpwedsearchlist();
		//				});
		//			$(".testsa").bind("mouseenter",
		//				function() {
		//					$("div.ahover").removeClass("ahover");
		//					$(this).addClass("ahover");
		//				});
		//			$(".testsa").bind("mouseleave",
		//				function() {
		//					$(this).removeClass("ahover");
		//				});
		//			a.css("width",$("#pwebinput").css("width"));
		//			a.css("left",$("#pwebinput").css("left"));
		//			a.show();
		//		}else{
		//			a.hide();
		//		}
		//	});					
		//}
	
	}
	
   $(document).bind('click', function(e) {  
		var e = e || window.event; //浏览器兼容性   
		var elem = e.target || e.srcElement;  
		while (elem) { //循环判断至跟节点，防止点击的是div子元素   
			if (elem.id && elem.id == 'pwedsearchlist') {  
				return;  
			}  
			if (elem.id && elem.id == 'pwebinput') {  
				return;  
			}  
			elem = elem.parentNode;  
		}  
		$("#pwedsearchlist").css("display","none"); //点击的不是div或其子元素   
	});  
	
	function downpwedsearchlist() {
				var e = $("#pwedsearchlist");
				var p = $("#pwebinput");
                var r = e.find("div");
				var hoverCss="ahover"
				var l = -1;
                if (r.length >= 1) {
                    for (var q = r.length - 1; q >= 0; q--) {
                        if ($(r[q]).hasClass(hoverCss)) {
                            l = q;
                            break;
                        }
                    }
                    if (l != -1) {
                        $(r[l]).removeClass(hoverCss);
                    }
                    if (l >= r.length - 1) {
                        $(r[l]).removeClass(hoverCss);
                        l = -1;
                        //p.val(searchq);
                       
                    }
					
					l = l + 1;
					$(r[l]).addClass(hoverCss);
					p.val($(r[l]).text());
                    
                }
    }
	
	function uppwedsearchlist() {
			var e = $("#pwedsearchlist");
			var p = $("#pwebinput");
			var r = e.find("div");
			var hoverCss="ahover"
			var l = -1;
			if (r.length >= 1) {
				for (var q = r.length - 1; q >= 0; q--) {
					if ($(r[q]).hasClass(hoverCss)) {
						l = q;
						break;
					}
				}
				if (l != -1) {
					$(r[l]).removeClass(hoverCss);
					if(l == 0){
						l = r.length;
					}
				}else{
					l = r.length;
				}

				
				l = l - 1;
				$(r[l]).addClass(hoverCss);
				p.val($(r[l]).text());
				
			}
    }
	
	function enterpwedsearchlist() {
			document.getElementById("pwedsearch").click(); 
			$("#pwedsearchlist").hide();
		
    }
	