<!DOCTYPE html>
<html>
 <head> 
  <meta charset="utf-8" /> 
  <title>网址集合</title> 
  <link rel="icon" type="image/x-icon" href="/stylesheets/favicon.ico">
  
  <link href="/bootstrap3/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> 
  <link href="/stylesheets/jquery-ui.css" rel="stylesheet" type="text/css" /> 
  <link href="/stylesheets/jquery-confirm.min.css" rel="stylesheet" type="text/css" /> 
  <link href="/stylesheets/pwebedit.css" rel="stylesheet" type="text/css" /> 
  <script src="/javascripts/jquery-3.3.1.min.js" type="text/javascript"></script> 
  <script src="/bootstrap3/js/bootstrap.min.js" type="text/javascript"></script> 
  <script src="/layer/layer.js" type="text/javascript"></script> 
  <script src="/javascripts/jquery.validate.min.js" type="text/javascript"></script> 
  <script src="/javascripts/jquery-ui.min.js" type="text/javascript"></script> 
  <script src="/javascripts/jquery-confirm.min.js" type="text/javascript"></script> 
  <script src="/javascripts/FileSaver.min.js" type="text/javascript"></script> 
  <script src="/javascripts/pweb_editpage.js" type="text/javascript"></script> 
  <style>
  
	  .column {
	    padding-bottom: 0px;
	  }
	  .portlet {
	  	margin-bottom: 10px;
	    padding: 0.3em;
	  }
	  .portlet-header {
	    position: relative;
		background: #fff;
		border: none;
		border-bottom: 1px solid #dddddd;
		padding-top: 10px;
		margin-left: 10px;
		margin-right: 10px;
		margin-bottom: 2px;
		padding-bottom: 6px;
		 padding-left: 6px;
		 font-size: 18px;
	  }
	  .portlet-content {
	    padding: 0.4em;
	  }
	  .portlet-placeholder {
	    border: 1px dotted black;
	    margin: 0 1em 1em 0;
	    height: 50px;
	  }
	.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
		position: relative;
		min-height: 1px;
		padding-left: 6px;
		padding-right: 6px;
	}
	
	.ollist-unstyled li{
		color: #32649a;
		margin-left:-18px
	}
		  	  	  
  

 </style> 
 </head> 
 <body style=""> 
 
<div class="modal fade" id="modal_weblist_class" style="" tabindex="-1" role="dialog" aria-labelledby="modalLabel_modal_weblist_class"> 
   <div class="modal-dialog  " role="document"> 
    <div class="modal-content"> 
     <div class="modal-header"> 
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> 
      <h4 class="modal-title" id="modalLabel_modal_weblist_class">网页分类</h4> 
     </div> 
     <div class="modal-body"> 
      <div class="row"> 
       <form class="form-horizontal" style="margin-top:30px" id="modal_weblist_class_form"> 
        <div class="form-group"> 
         <label for="name" class="col-md-3 col-lg-2  control-label">名称</label> 
         <div class="col-md-8 col-lg-9"> 
          <input type="text" class="form-control" required="" id="modal_weblist_class_name" name="modal_weblist_class_name" placeholder="如：最常用网站" /> 
         </div> 
        </div> 
       </form> 
      </div> 
      <span></span> 
     </div> 
     <div class="modal-footer"> 
      <button type="button" class="btn btn-primary" onclick="">确认</button> 
      <button type="button" class="btn btn-default" data-dismiss="modal">取消</button> 
     </div> 
    </div> 
   </div> 
  </div> 
  <div class="modal fade" id="modal_weblist_page" style="" tabindex="-1" role="dialog" aria-labelledby="modalLabel_modal_weblist_page"> 
   <div class="modal-dialog  modaltestwidth" role="document"> 
    <div class="modal-content"> 
     <div class="modal-header"> 
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> 
      <h4 class="modal-title" id="modalLabel_modal_weblist_page">网页</h4> 
     </div> 
     <div class="modal-body"> 
      <div class="row"> 
       <form class="form-horizontal" style="margin-top:30px" id="modal_weblist_page_form"> 
        <div class="form-group"> 
         <label for="name" class="col-md-3 col-lg-2  control-label">名称</label> 
         <div class="col-md-8 col-lg-9"> 
          <input type="text" class="form-control" required="" id="modal_weblist_page_name" name="modal_weblist_page_name" placeholder="如：百度一下" /> 
         </div> 
        </div> 
        <div class="form-group"> 
         <label for="name" class="col-md-3 col-lg-2  control-label">链接</label> 
         <div class="col-md-8 col-lg-9"> 
          <input type="text" class="form-control" required="" id="modal_weblist_page_url" name="modal_weblist_page_url" placeholder="如：https://www.baidu.com" /> 
         </div> 
        </div> 
       </form> 
      </div> 
      <span></span> 
     </div> 
     <div class="modal-footer"> 
      <button type="button" class="btn btn-primary" onclick="">确认</button> 
      <button type="button" class="btn btn-default" data-dismiss="modal">取消</button> 
     </div> 
    </div> 
   </div> 
  </div> 
  <div class="modal fade" id="modal_import_collection" style="" tabindex="-1" role="dialog" aria-labelledby="modalLabel_modal_import_collection"> 
   <div class="modal-dialog  modaltestwidth" role="document"> 
    <div class="modal-content"> 
     <div class="modal-header"> 
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> 
      <h4 class="modal-title" id="modalLabel_modal_import_collection">导入导出</h4> 
     </div> 
     <div class="modal-body"> 
      <div class="row"> 
       <form class="form-horizontal" style="margin-top:30px" id="modal_import_collection_form"> 
        <div class="form-group"> 
         <div class="col-xs-10 col-xs-offset-1"> 
          <div class="well"> 
           <b>导入收藏夹</b> 
           <br /> 
           <br />1. 把浏览器中收藏的网页导出，导出格式为.htm(或.html)的文件 
           <br />&nbsp;&nbsp;&nbsp;&nbsp; IE用户：在“文件”菜单内选择“导入或导出”，点“下一步”再选择“导出收藏夹”。 
           <br />&nbsp;&nbsp;&nbsp;&nbsp; chrome用户：在工具选择“书签管理器”--“整理”--“导出书签”。 
           <br />&nbsp;&nbsp;&nbsp;&nbsp; firefox用户：在“书签”菜单选择“管理书签”，再点击“导出书签”。 
           <br />2. 点击“导入收藏夹”,选择该文件导入到pweb 
           <br /> 
           <br />
           <b>导出收藏备份</b> 
           <br /> 
           <br />1. 点击“导出收藏备份”,导出文件格式为.html的文件 
           <br /> 
           <br />
          </div> 
         </div> 
        </div> 
        <div class="form-group"> 
         <input type="file" id="uploadHtmlfile" style="display:none" onchange="importFromCollectionTopweb();" /> 
         <div class="col-xs-10 col-xs-offset-1"> 
          <button type="button" class="btn btn-primary form-control" style="width:160px" onclick="importFromCollectionTopweb_click()">导入收藏夹</button> 
          <button type="button" class="btn btn-primary form-control" style="width:160px" id="buttonexportFrompwebToCollection" onclick="exportFrompwebToCollection()">导出收藏备份</button> 
         </div> 
         <div class="col-xs-3"> 
         </div> 
        </div> 
       </form> 
      </div> 
      <span></span> 
     </div> 
    </div> 
   </div> 
  </div> 
 
 <#if webcontent??>
  <div class="container" style="margin:30px auto"> 
  				   <div class="col-xs-12"> 
				    <div class="form-group"> 
				     <div class="text-center"> 

				      <button type="button" id="editdisplaymode" class="btn btn-primary" style="width:100px" onclick="editdisplaymode(this)">编辑模式</button> 
				      <button type="button" class="btn btn-primary" style="width:100px" onclick="savePagecontent()">保存</button>
			          <button type="button" class="btn btn-primary " style="width:100px" onclick="add_weblist_class_show_func()">添加分类</button>            		         
				      <button type="button"  class="btn btn-primary " style="width:100px"  onclick="importFromCollectionTopweb_show_func()">导入导出</button> 				      
				      <a href="/pweb/create" target="_blank" type="button"  class="btn btn-primary " style="width:120px;color:#fff" >新建网站集合</a> 
				      
				     </div> 
				    </div> 
				   </div> 
   </div> 
  <div class="container" id="allcontent" style="margin:30px auto">  		
  				<#assign text>
					${webcontent.content}
				</#assign>
				<#assign json=text?eval /> 		
									
				<div class="column1 column col-xs-12 col-sm-6 col-md-4"> 	
	  				<#list json as content>			  				
			  				<#if content.column == 1>
							    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"> 
								     <div class="portlet-header ui-widget-header ui-corner-all">
								     	  <span class="header">${content.classname}</span>
								     </div> 
								     <div class="portlet-content"> 
								      <ol class="ollist-unstyled"> 
								      
								      <#list content.urls as url>
								       <li><a href="${url.url}" target="_blank">${url.name}</a></li> 
								      </#list>
								       
								      </ol> 
								       
								     </div> 
							    </div> 
		  				 	</#if>			 				  				 				 				 				 				
	  				</#list>
  				</div>
  				
				<div class="column2 column col-xs-12 col-sm-6 col-md-4"> 	
	  				<#list json as content>			  				
			  				<#if content.column == 2>
							    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"> 
								     <div class="portlet-header ui-widget-header ui-corner-all">
								     	  <span class="header">${content.classname}</span>
								     </div> 
								     <div class="portlet-content"> 
								      <ol class="ollist-unstyled"> 
								      
								      <#list content.urls as url>
								       <li><a href="${url.url}" target="_blank">${url.name}</a></li> 
								      </#list>
								       
								      </ol> 
								       
								     </div> 
							    </div> 
		  				 	</#if>			 				  				 				 				 				 				
	  				</#list>
  				</div> 
  				 				
 				<div class="column3 column col-xs-12 col-sm-6 col-md-4"> 	
	  				<#list json as content>			  				
			  				<#if content.column == 3>
							    <div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"> 
								     <div class="portlet-header ui-widget-header ui-corner-all">
								     	  <span class="header">${content.classname}</span>
								     </div> 
								     <div class="portlet-content"> 
								      <ol class="ollist-unstyled"> 
								      
								      <#list content.urls as url>
								       <li><a href="${url.url}" target="_blank">${url.name}</a></li> 
								      </#list>
								       
								      </ol> 
								       
								     </div> 
							    </div> 
		  				 	</#if>			 				  				 				 				 				 				
	  				</#list>
  				</div> 	
		
  				
  				
   </div> 

   
  	<#else>	
  	
  		
  			<h2>404 </h2>	
  										
  	</#if>	
   
   
   
<div  id="collectionhtmldiv" style="display:none"></div>
<div  id="collectionhtmldiv_newclass" style="display:none"></div>
  <input id="pwebid" type="hidden" value="${webcontent.id}" /> 
  <div style="display:none"> 
   			<a id="downloadfilehide" href="" style="display:none"></a> 
  </div> 

    
 </body>
</html>