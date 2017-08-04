<!DOCTYPE html>
<html manifest="offlintab.appcache"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"><meta charset="utf-8">
  <title>个人网页</title>

<link type="text/css" rel="stylesheet" href="searchpage/offlintab-457.css">
<script type="text/javascript" src="searchpage/jquery3.2.1.js"></script>

<body>


      <div id="searchform">
        <fieldset>
          <a href="https://www.baidu.com/?tn=monline_3_dg" target="_blank"><img src="searchpage/baidu_web.png" alt="百 度"></a><input name="q"><input value="搜索" type="button" onclick="searchB()">
        </fieldset>
        <fieldset>
          <label><input name="engine" value="baidu_web"  checked="checked"  type="radio">百 度</label>
        <label><input name="engine" value="google_web" type="radio">谷 歌</label> <label><input name="engine" value="github" type="radio">GitHub</label> <label><input name="engine" value="taobao_shopping" type="radio">淘 宝</label> </fieldset>
      </div>
<script type="application/javascript">

    function searchB()
    {

      if($("#searchform input[checked]").val() == "baidu_web"){
          window.open('https://www.baidu.com/s?wd=' + $("#searchform input[name='q']").val()); 
      }else if($("#searchform input[checked]").val() == "google_web"){
          window.open('https://www.google.com.hk/search?q=' + $("#searchform input[name='q']").val()); 
      }else if($("#searchform input[checked]").val() == "taobao_shopping"){
          window.open('http://ai.taobao.com/search/index.htm?key=' + $("#searchform input[name='q']").val()); 
      }else if($("#searchform input[checked]").val() == "github"){
          window.open('https://github.com/search?utf8=✓&type=&q=' + $("#searchform input[name='q']").val());
      }

    }


 $(function(){
  $("#searchform :radio").click(function(){
    $("#searchform :radio").each(function(){
      $(this).attr("checked",false);
    });
    $(this).attr("checked",true);
    if($(this).val() == "baidu_web"){
      $("#searchform a>img").attr("alt","百 度").attr("src","searchpage/baidu_web.png");
      $("#searchform a").attr("href","https://www.baidu.com/?tn=monline_3_dg");
    }else if($(this).val() == "google_web"){
      $("#searchform a>img").attr("alt","谷 歌").attr("src","searchpage/google_web-444.png");
      $("#searchform a").attr("href","https://www.google.com/");
    }else if($(this).val() == "taobao_shopping"){
      $("#searchform a>img").attr("alt","淘 宝").attr("src","searchpage/taobao_shopping-446.png");
      $("#searchform a").attr("href","http://ai.taobao.com/?pid=mm_28347190_2425761_13466329");     
    }else if($(this).val() == "github"){
        $("#searchform a>img").attr("alt","GitHub").attr("src","searchpage/github.png");
        $("#searchform a").attr("href","https://github.com/");
    }



  });




 });
</script>


</body></html>