String.prototype.endWith=function(endStr){
     var d=this.length-endStr.length;
     return (d>=0&&this.lastIndexOf(endStr)==d)
}

function myalert(content){

	layer.msg(content, {icon: 1});

}


//下载文件
function downloadFile(filename,content) {
	

	try{
	    var file = new File([content], filename, { type: "text/plain;charset=utf-8" });
	    saveAs(file);
	}catch (e) {
		//兼容ie10以下版本
	    var win=window.open('','','top=10000,left=10000');  
	    win.document.write(content);  
	    win.document.execCommand('SaveAs','',filename)  
	    win.close(); 
	}

    
};




function newweblist_class_htmls(name){
	return '<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"> <div class="portlet-header ui-widget-header ui-corner-all"><span class="header">'+name+'</span></div> <div class="portlet-content">  <ol class="ollist-unstyled"> </ol>   </div></div>';
}

function newweblist_page_htmls(name,originalurl){		
	return '<li>  <a href="'+originalurl+'" target="_blank">'+name+'</a></li>';
}



//页面列表-统计收藏网页和分类个数
function weblist_label_len_func(){

		var classlen = $('.weblistalldiv').find('.weblistportlet').length;	
		var webpagelen = $('.weblistalldiv').find('li').length;
		$('#weblist_label_len').text("      网页数："+webpagelen  +"   分类数："+ classlen)	
	
}


//页面列表 - 新建分类框	
function add_weblist_class_show_func(){
	$('#modal_weblist_class').find('.modal-title').text("新建网页分类");	        
	$('#modal_weblist_class').find('.modal-body #modal_weblist_class_name').val("");
	$('#modal_weblist_class').find('.modal-footer .btn-primary').attr("onclick","add_weblist_class_add_func()");				
	$('#modal_weblist_class').modal('show');		
}
//页面列表 - 新建分类框	- 保存新建内容
function add_weblist_class_add_func(){
	$("#modal_weblist_class_form").submit();
	if($("#modal_weblist_class_form").validate().valid()){

		var htmls =  newweblist_class_htmls($('#modal_weblist_class').find('.modal-body #modal_weblist_class_name').val());
		$('#modal_weblist_class').modal('hide');
		$('.column1').prepend(htmls);
		enablemode();	
		weblist_label_len_func();
	}		
}
var cweblist_class_obj
//页面列表 - 编辑分类框
function update_weblist_class_show_func(obj){
	$("#modal_weblist_class_form").submit();
	cweblist_class_obj = null;
	cweblist_class_obj = $(obj).parent()
	$('#modal_weblist_class').find('.modal-title').text("编辑网页分类");	        
	$('#modal_weblist_class').find('.modal-body #modal_weblist_class_name').val(cweblist_class_obj.find("span.header").text());
	$('#modal_weblist_class').find('.modal-footer .btn-primary').attr("onclick","update_weblist_class_update_func()");
	$('#modal_weblist_class').modal('show');
}
//页面列表 - 删除分类
function remove_weblist_class_func(obj){  
	
	layer.confirm('确定删除此项吗?', {
	    btn: ['确定','取消'], //按钮
	}, function(index){
		  $(obj).parent().parent().remove();
		  enablemode();	
		  weblist_label_len_func();
		layer.close(index);
	}, function(){

    });
	
}
//页面列表- 编辑分类框 - 保存修改内容
function update_weblist_class_update_func(){
	$("#modal_weblist_class_form").submit();
	if($("#modal_weblist_class_form").validate().valid()){
		cweblist_class_obj.find("span.header").text($('#modal_weblist_class').find('.modal-body #modal_weblist_class_name').val())
		$('#modal_weblist_class').modal('hide');		
	}		
}



//页面列表 - 新建网页框	
function add_weblist_page_show_func(obj){
	
	cweblist_class_obj = null;
	cweblist_class_obj = $(obj).parent()	
	$('#modal_weblist_page').find('.modal-title').text("新建网页");	        
	$('#modal_weblist_page').find('.modal-body #modal_weblist_page_name').val("");
	$('#modal_weblist_page').find('.modal-body #modal_weblist_page_url').val("");
	$('#modal_weblist_page').find('.modal-footer .btn-primary').attr("onclick","add_weblist_page_add_func()");				
	$('#modal_weblist_page').modal('show');		
}
//页面列表 - 新建网页框	- 保存新建内容
function add_weblist_page_add_func(){
	
	if($('#modal_weblist_page').find('.modal-body #modal_weblist_page_url').val()=="http://localhost:8080"){
		var htmls = newweblist_page_htmls($('#modal_weblist_page').find('.modal-body #modal_weblist_page_name').val(),$('#modal_weblist_page').find('.modal-body #modal_weblist_page_url').val());
		$('#modal_weblist_page').modal('hide');				
		cweblist_class_obj.children('ol').append(htmls);
		cweblist_class_obj = null;
		enablemode();	
		weblist_label_len_func();
				
	}else{
		$("#modal_weblist_page_form").submit();
		if($("#modal_weblist_page_form").validate().valid()){

			var htmls = newweblist_page_htmls($('#modal_weblist_page').find('.modal-body #modal_weblist_page_name').val(),$('#modal_weblist_page').find('.modal-body #modal_weblist_page_url').val());
			$('#modal_weblist_page').modal('hide');				
			cweblist_class_obj.children('ol').append(htmls);
			cweblist_class_obj = null;
			enablemode();	
			weblist_label_len_func();				
		}			
	}
	
}
var cweblist_page_obj
//页面列表 - 编辑网页框
function update_weblist_page_show_func(obj){
	$("#modal_weblist_page_form").submit();
	cweblist_page_obj = null;
	cweblist_page_obj = $(obj).parent()
	$('#modal_weblist_page').find('.modal-title').text("编辑网页");	        
	$('#modal_weblist_page').find('.modal-body #modal_weblist_page_name').val(cweblist_page_obj.find("a").first().text());
	$('#modal_weblist_page').find('.modal-body #modal_weblist_page_url').val(cweblist_page_obj.find("a").first().attr("href"));
	$('#modal_weblist_page').find('.modal-footer .btn-primary').attr("onclick","update_weblist_page_update_func()");
	$('#modal_weblist_page').modal('show');
}
//页面列表 - 删除网页
function remove_weblist_page_func(obj){  
	
	layer.confirm('确定删除此项吗?', {
	    btn: ['确定','取消'], //按钮
	}, function(index){
		  $(obj).parent().remove();
		  enablemode();	
		  weblist_label_len_func();
		layer.close(index);
	}, function(){

    });	
	
}




//页面列表- 编辑网页框 - 保存修改内容
function update_weblist_page_update_func(){
	$("#modal_weblist_page_form").submit();
	if($("#modal_weblist_page_form").validate().valid()){
		cweblist_page_obj.find("a").first().text($('#modal_weblist_page').find('.modal-body #modal_weblist_page_name').val())
		cweblist_page_obj.find("a").first().attr("href",$('#modal_weblist_page').find('.modal-body #modal_weblist_page_url').val())
		$('#modal_weblist_page').modal('hide');	
		enablemode();	
		weblist_label_len_func();
	}		
}



//导入按钮事件-保存编辑页面内容	

function importFromCollectionTopweb_show_func(){

	$('#modal_import_collection').modal('show');
}



//导入本地收藏夹到12306	
function importFromCollectionTopweb_click(){	
	$("#uploadHtmlfile").click()
}




//导入本地收藏夹到12306	
function importFromCollectionTopweb(){
    var selectedFile = document.getElementById("uploadHtmlfile").files[0];//获取读取的File对象
    var name = selectedFile.name;//读取选中文件的文件名
    var size = selectedFile.size;//读取选中文件的大小
    console.log("文件名:"+name+"大小："+size);
	if(size > 158530000){
		myalert("文件超出最大值150MB")
		return;
	}
	if(!name.endWith("html") && !name.endWith("htm") ){
		myalert("文件格式需要为.html或.htm文件")
		return;
	}	

    var reader = new FileReader();//这里是核心！！！读取操作就是由它完成的。
    reader.readAsText(selectedFile);//读取文件的内容

    reader.onload = function(){

		var collectionhtml = $.parseHTML(this.result);
		$("#collectionhtmldiv").html(collectionhtml)

		var allh3 = $("#collectionhtmldiv").find("dt h3");
		

		
		for(var n=0;n<allh3.length;n++){	
			
			var obj= allh3.eq(n);
			if(n == allh3.length){				
				obj = $("#collectionhtmldiv").find("h1")
			}		
			var classname = $(obj).text();			
			if(classname != undefined && classname != ''){
				var newweblist_class = $.parseHTML(newweblist_class_htmls(classname));				
				$("#collectionhtmldiv_newclass").html(newweblist_class)		
				if($(obj).parent().children('dl').children('dt').length>0){
					$(obj).parent().children('dl').children('dt').each(function(){				    
						if($(this).children('a').text() != undefined && $(this).children('a').text() != '' && $(this).children('a').attr('href').toLowerCase().indexOf("http")==0){						
							$("#collectionhtmldiv_newclass").find('.portlet-content ol').first().append(newweblist_page_htmls($(this).children('a').text(),$(this).children('a').attr('href')));									
						}
					});										
				}else{ //兼容dd标签下网页内容
					$(obj).parent().next("dd").children('dl').children('dt').each(function(){				    
						if($(this).children('a').text() != undefined && $(this).children('a').text() != '' && $(this).children('a').attr('href').toLowerCase().indexOf("http")==0){						
							$("#collectionhtmldiv_newclass").find('.portlet-content ol').first().append(newweblist_page_htmls($(this).children('a').text(),$(this).children('a').attr('href')));	
								
						}
					});						
				}
				var htmls = $("#collectionhtmldiv_newclass").html();
				
				if(n%3 == 0){					
					$('.column1').prepend(htmls);
				}else if(n%3 == 1){	
					$('.column2').prepend(htmls);					
				}else if(n%3 == 2){	
					$('.column3').prepend(htmls);					
				}	
			}	
		}

		
		enablemode();	
		weblist_label_len_func();
		$('#modal_import_collection').modal('hide');	
    };

}




//导出12306内容到本地文件html
function exportFrompwebToCollection(){
	var content = '<!DOCTYPE NETSCAPE-Bookmark-file-1><META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8"><TITLE>Bookmarks</TITLE><H1>Bookmarks</H1><DL><p>';
	var column1 = $('.column1').children('.portlet');
	var column2 = $('.column2').children('.portlet');
	var column3 = $('.column3').children('.portlet');	
	
	$(column1).each(function(){		
		content +='	<DT><H3 LAST_MODIFIED="" >'+$(this).find(".portlet-header span.header").text()+'</H3><DL><p>';
		$(this).find('.portlet-content>ol>li').each(function(){		
			content +='<DT><A HREF="'+$(this).children('a').attr('href')+'" LAST_MODIFIED="" ICON="" >'+$(this).children('a').text()+'</A>';
		});
		content +='</DL><p>';
	});

	$(column2).each(function(){		
		content +='	<DT><H3 LAST_MODIFIED="" >'+$(this).find(".portlet-header span.header").text()+'</H3><DL><p>';
		$(this).find('.portlet-content>ol>li').each(function(){		
			content +='<DT><A HREF="'+$(this).children('a').attr('href')+'" LAST_MODIFIED="" ICON="" >'+$(this).children('a').text()+'</A>';
		});
		content +='</DL><p>';
	});
	
	$(column3).each(function(){		
		content +='	<DT><H3 LAST_MODIFIED="" >'+$(this).find(".portlet-header span.header").text()+'</H3><DL><p>';
		$(this).find('.portlet-content>ol>li').each(function(){		
			content +='<DT><A HREF="'+$(this).children('a').attr('href')+'" LAST_MODIFIED="" ICON="" >'+$(this).children('a').text()+'</A>';
		});
		content +='</DL><p>';
	});	
	
	
	content += '</DL><p>';
	
	
	downloadFile( 'pweb_'+$("#pwebid").val()+'_'+new Date().getTime()+'.html',content);
 

}



function getlistcontent(){
	var weblistobjarray= [];
	
	rownum = 1;
	$.each($('.column1 .portlet-header'),function(i,obj){
		var weblistobjjson = {classname:"",urls:[],column:1,row:1};
		weblistobjjson.classname=$(obj).find("span.header").text();
		var webpageurlsarray = [];
		var webpageurlobj =  $(obj).next(".portlet-content").find("a");
		$.each(webpageurlobj,function(i,urlobj){
			var webpageurljson = {name:"",url:""};
			webpageurljson.name = $(urlobj).text();
			webpageurljson.url = $(urlobj).attr("href");	
			webpageurlsarray.push(webpageurljson);
		});
		weblistobjjson.row = rownum++;
		weblistobjjson.urls = webpageurlsarray;		
		weblistobjarray.push(weblistobjjson);
	});
	
	rownum = 1;
	$.each($('.column2 .portlet-header'),function(i,obj){
		var weblistobjjson = {classname:"",urls:[],column:2,row:1};
		weblistobjjson.classname=$(obj).find("span.header").text();
		var webpageurlsarray = [];
		var webpageurlobj =  $(obj).next(".portlet-content").find("a");
		$.each(webpageurlobj,function(i,urlobj){
			var webpageurljson = {name:"",url:""};
			webpageurljson.name = $(urlobj).text();
			webpageurljson.url = $(urlobj).attr("href");	
			webpageurlsarray.push(webpageurljson);
		});
		weblistobjjson.row = rownum++;
		weblistobjjson.urls = webpageurlsarray;		
		weblistobjarray.push(weblistobjjson);
	});	
	rownum = 1;
	$.each($('.column3 .portlet-header'),function(i,obj){
		var weblistobjjson = {classname:"",urls:[],column:3,row:1};
		weblistobjjson.classname=$(obj).find("span.header").text();
		var webpageurlsarray = [];
		var webpageurlobj =  $(obj).next(".portlet-content").find("a");
		$.each(webpageurlobj,function(i,urlobj){
			var webpageurljson = {name:"",url:""};
			webpageurljson.name = $(urlobj).text();
			webpageurljson.url = $(urlobj).attr("href");	
			webpageurlsarray.push(webpageurljson);
		});
		weblistobjjson.row = rownum++;
		weblistobjjson.urls = webpageurlsarray;		
		weblistobjarray.push(weblistobjjson);
	});		
	
	return JSON.stringify(weblistobjarray);
	
}


//保存按钮事件-保存编辑页面内容		
function savePagecontent(){

	var pweb_pagecontent_json = {content:"",id:1};
    pweb_pagecontent_json.id = $("#pwebid").val();		
	pweb_pagecontent_json.content = getlistcontent();
	
    $.post("/pweb/update",pweb_pagecontent_json,function(result){
    	myalert(result);
    });	

}	


var editdisplay = false;
function editdisplaymode(obj) {
	if(editdisplay){
		$(obj).text("编辑模式");
	    $(".portlet").find(".canremove").remove();
	    $(".column").sortable("disable"); 
	    $(".ollist-unstyled").sortable("disable"); 
	    editdisplay = false; 				
	}else{
		$(obj).text("浏览模式");
		enablemode();
		editdisplay = true; 
	} 
}


function enablemode() {
	$("#editdisplaymode").text("浏览模式");
	editdisplay = true; 		
    $(".column").sortable({
        connectWith: ".column",
        handle: ".portlet-header",
        cancel: ".portlet-toggle",
        placeholder: "portlet-placeholder ui-corner-all"
    }).disableSelection();	
    $(".column").sortable("enable");
    
    $( ".ollist-unstyled" ).sortable({
	      connectWith: ".ollist-unstyled"
	 }).disableSelection();			    	    						
    $(".ollist-unstyled").sortable("enable");	    	    								    	    						
    		    	    								    	    								    	    								    	    						
	$(".portlet").find(".canremove").remove();
    $(".portlet").find(".portlet-header").prepend('<span class="canremove glyphicon glyphicon-remove iconclass pull-right" title="删除分类" onclick="remove_weblist_class_func(this)"></span><span class="canremove glyphicon glyphicon-cog iconclass pull-right" title="编辑分类" onclick="update_weblist_class_show_func(this)"></span> ');
    $(".portlet").find(".portlet-content li").prepend(' <span class="canremove glyphicon glyphicon-remove pull-right" title="删除网页" onclick="remove_weblist_page_func(this)"></span><span class="canremove glyphicon glyphicon-cog pull-right" title="编辑网页" onclick="update_weblist_page_show_func(this)"></span>');
    $(".portlet").find(".portlet-content").append('<span class="canremove glyphicon glyphicon-plus-sign pull-right" title="添加网页" style="color: rgb(152, 221, 135); font-size: 16px;margin-right:3px;margin-top:3px;margin-bottom:3px;" onclick="add_weblist_page_show_func(this)"></span>');
   	
}	

	
$(function() {
	
	
		$("#modal_weblist_class_form").validate({
			submitHandler:function(form){	
			},
			rules: {
						modal_weblist_class_name : {
							required : true,
							maxlength : 100,
						}
			},
			messages: {
						modal_weblist_class_name : {
							required : "名称不能为空",
							maxlength : "长度小于等于100个字符"
						}
			}
		});
		
		$("#modal_weblist_page_form").validate({
			submitHandler:function(form){	
			},
			rules: {
						modal_weblist_page_name : {
							required : true,
						},
						modal_weblist_page_url : {
							required : true,
							url:true
						}
			},
			messages: {
						modal_weblist_page_name : {
							required : "名称不能为空"
						},
						modal_weblist_page_url : {
							required : "链接不能为空",
							url:"url非法",
						}
			}
		});
		
		$("#pweb_pagecontent_form").validate({
			submitHandler:function(form){	
			},
			rules: {
						pagecontentname : {
							required : true,
						},
						weblink : {
							url:true
						},
			},
			messages: {
						pagecontentname : {
							required : "名称不能为空"
						},			
						weblink : {
							url: "背景图片链接非法"
						},						
			}
		});


	
	
});

