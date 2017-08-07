<!DOCTYPE html>
<html manifest="offlintab.appcache">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>个人网页</title>

    <link type="text/css" rel="stylesheet" href="searchpage/searchpage.css">
    <script type="text/javascript" src="searchpage/jquery3.2.1.js"></script>
    <script type="text/javascript" src="searchpage/searchpage.js"></script>
<body>
<div> <#include "../head.ftl"/></div>

<div id="searchform">
    <fieldset>
        <a href="https://www.baidu.com/?tn=monline_3_dg" target="_blank"><img src="searchpage/baidu_web.png" alt="百 度"></a><input
            name="q"><input value="搜索" type="button" onclick="searchB()">
    </fieldset>
    <fieldset>
        <label><input name="engine" value="baidu_web" checked="checked"  type="radio">百 度</label>
        <label><input name="engine" value="google_web" type="radio">谷 歌</label>
        <label><input name="engine" value="github" type="radio">GitHub</label>
        <label><input name="engine" value="taobao_shopping" type="radio">淘 宝</label>
        <label><input name="engine" value="yahoo" type="radio">Yahoo</label>
        <label><input name="engine" value="fanyi" type="radio">翻译</label>
    </fieldset>
</div>
<div  id="section">
    <ul>
        <li>1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
    </ul>



</div>
<div id="footer">
    <div class="testdiv">
        <ul>
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
        </ul>
    </div>
    <div class="testdiv">
        <ul>
            <li>1</li>
            <li>2</li>
            <li>3</li>
            <li>4</li>
        </ul>
    </div>


</div>

</body>
</html>