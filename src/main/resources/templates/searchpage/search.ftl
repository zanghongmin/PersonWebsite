<!DOCTYPE html>
<html manifest="offlintab.appcache">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>藏红敏的网页</title>

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
    <h3>常用网站</h3>
    <ul>
        <li><a href="http://localhost:8080/" target="_blank">1. localhost:8080</a></li>
        <li><a href="https://github.com/zanghongmin" target="_blank">2. 个人github</a></li>
    </ul>
</div>
<div id="footer">
    <div class="testdiv">
        <h3>视频学习和论文网站</h3>
        <ul>
            <li><a href="https://www.jikexueyuan.com/" target="_blank">1. 极客学院（部分收费的开发学习网站）</a></li>
            <li><a href="http://www.imooc.com/" target="_blank">2. 慕课网（免费的初级开发学习网站）</a></li>
            <li><a href="https://open.163.com/" target="_blank">3. 网易公开课（综合类视频网站）</a></li>
            <li><a href="http://lib.mayiso.com/e/action/ShowInfo.php?classid=2&id=1" target="_blank">4. 蚂蚁图书馆(进入其他论文网站的入口)</a></li>
            <li><a href="http://www.cnki.net/" target="_blank">5. 知网(国内最大的论文网站)</a></li>
            <li><a href="http://www.arocmag.com/" target="_blank">6. 计算机应用研究期刊</a></li>
            <li><a href="http://www.geekpark.net/" target="_blank">7. 极客公园</a></li>

        </ul>
    </div>
    <div class="testdiv">
        <h3>开发和测试类学习</h3>
        <ul>
            <li><a href="http://docs.oracle.com/javase/8/" target="_blank">1. java官方文档</a></li>
            <li><a href="http://projects.spring.io/spring-boot/" target="_blank">2. spring boot(框架)</a></li>
            <li><a href="http://www.importnew.com/" target="_blank">3. java技术类网站</a></li>
            <li><a href="http://www.importnew.com/23549.html#comment-542805" target="_blank">4. java面试总结</a></li>
            <li><a href="http://www.runoob.com/sitemap" target="_blank">5. 不错的综合技术类网站</a></li>
            <li><a href="http://www.w3school.com.cn/" target="_blank">6. w3school网站</a></li>
            <li><a href="https://testerhome.com/" target="_blank">7. testerhome(测试技术综合网站)</a></li>
            <li><a href="http://www.ishanque.com/iterbao/knowledgeLib/knowledgeList?catId=23" target="_blank">8. 山雀(tid等相关文档)</a></li>
            <li><a href="http://mqc.aliyun.com/" target="_blank">9. 阿里移动质量中心平台</a></li>
            <li><a href="http://www.testin.cn/" target="_blank">10. testin平台</a></li>
            <li><a href="http://utest.qq.com/" target="_blank">11. 腾讯云测试平台</a></li>
            <li><a href="http://mtc.baidu.com/" target="_blank">12. 百度MTC平台</a></li>
            <li><a href="https://www.nowcoder.com/" target="_blank">13. 牛客网(java面试练习题)</a></li>

        </ul>
    </div>
    <div class="testdiv">
        <h3>在线工具类</h3>
        <ul>
            <li><a href="http://mail.126.com/" target="_blank">1. 126邮箱</a></li>
            <li><a href="https://www.processon.com/" target="_blank">2. 在线作图</a></li>
            <li><a href="http://tool.oschina.net/codeformat/json" target="_blank">3. 在线json格式化</a></li>
            <li><a href="http://tool.lu/hexconvert/" target="_blank">4. 在线进制转换</a></li>
            <li><a href="http://tool.lu/encdec/" target="_blank">5. 在线编解码</a></li>
        </ul>
    </div>
    <div class="testdiv">
        <h3>数据学习</h3>
        <ul>
            <li><a href="http://scikit-learn.org/dev/index.html" target="_blank">1. scikit-learn(python类库的机器算法)</a></li>
            <li><a href="http://scikit-learn.org/dev/index.html" target="_blank">2. 如何成为数据科学家</a></li>
            <li><a href="http://blog.csdn.net/v_july_v/article/details/6543438" target="_blank">3. 博客中算法总结文章</a></li>
        </ul>
    </div>
    <div class="testdiv">
        <h3>开源代码</h3>
        <ul>
            <li><a href="https://github.com/torvalds/linux" target="_blank">1. linux源码</a></li>
            <li><a href="https://github.com/apache/activemq" target="_blank">2. activemq源码</a></li>
            <li><a href="https://github.com/apache/jmeter" target="_blank">3. jmeter源码</a></li>
        </ul>
    </div>
    <div class="testdiv">
        <h3>咨询类网站</h3>
        <ul>
            <li><a href="http://www.xinhuanet.com/" target="_blank">1. 新华网</a></li>
            <li><a href="http://www.mofcom.gov.cn/" target="_blank">2. 中国商务部网站</a></li>
            <li><a href="http://finance.sina.com.cn/" target="_blank">3. 新浪财经</a></li>
            <li><a href="http://rencai.people.com.cn/" target="_blank">4. 中国人才网</a></li>
            <li><a href="http://news.baidu.com/" target="_blank">5. 百度新闻</a></li>
            <li><a href="https://www.yahoo.com/news/" target="_blank">6. 雅虎新闻</a></li>
            <li><a href="http://www.youmeek.com/" target="_blank">7. 初级技术类个人网站</a></li>
            <li><a href="http://www.yangzhiping.com/" target="_blank">8. 随笔写的个人网站</a></li>

        </ul>
    </div>

</div>


<div class="recordcode">
    <a href="http://www.miitbeian.gov.cn/" target="_blank">
        <i></i>
        京ICP备17048896号
    </a>
</div>
</body>
</html>