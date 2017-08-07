
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
    <title>个人简历</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Resume Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="resume/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="resume/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- js -->
    <script type="text/javascript" src="resume/js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <!-- fonts -->


    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="resume/js/move-top.js"></script>
    <script type="text/javascript" src="resume/js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->

    <!-- skills -->
    <script src="resume/js/pie-chart.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#10A7AF',
                trackColor: '#fff',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#10A7AF',
                trackColor: '#fff',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#10A7AF',
                trackColor: '#fff',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-4').pieChart({
                barColor: '#10A7AF',
                trackColor: '#fff',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });
        });
    </script>
    <!-- skills -->
    <script type="text/javascript" src="resume/js/numscroller-1.0.js"></script>

</head>
<body>
<!-- banner -->
<div class="header-top">
    <div class="container">
        <ul>
            <li><a class="scroll" href="#about"><span class="glyphicon glyphicon-file" aria-hidden="true"></span>简历</a></li>
            <li><a href="javascript:window.print()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span>打印页面</a></li>
            <li><a href="#portfolioModal9" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal">
                <span class="glyphicon glyphicon-picture" aria-hidden="true"></span>照片</a></li>
        </ul>
    </div>
</div>
<div class="header">
    <div class="container">
        <div class="col-md-8 header-left">
            <div class="col-sm-5 pro-pic">
                <img class="img-responsive" src="resume/images/pzang.jpg" alt=" "/>
            </div>
            <div class="col-sm-5 pro-text">
                <h1>藏红敏</h1>
                <p>开发测试工程师</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-4 header-right ">
            <ul class="list-left">
                <li>邮箱:</li>
                <li>手机:</li>
                <li>个人网站:</li>
                <li>github:</li>
            </ul>
            <ul class="list-right">
                <li><a href="mailto:zanghongmin3@126.com">zanghongmin3@126.com</a></li>
                <li>152-1068-4514</li>
                <li><a href="http://www.zanghongmin.top">www.zanghongmin.top</a></li>
                <li><a href="https://github.com/zanghongmin"  target="_blank">https://github.com/zanghongmin</a></li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //banner -->
<!-- about -->
<div id="about" class="about">
    <div class="container">
        <h3 class="tittle">简历</h3>
        <p class="abt-para">Java全栈开发能力<br>
            熟悉 Windows、Linux操作系统  <br>
            阅读和了解jmeter、jenkins、activemq等源码<br>
            熟悉jenkins插件编写、jmeter插件编写、maven插件编写等<br>
            性能测试、WEB自动化测试、andriod自动化测试有丰富的经验<br>
            熟悉对数据进行准确性测试，熟悉hadoop、hive、reids、ES、mysql等<br>
            掌握自动化测试工具，如LoadRunner、QuickTest Professional、uiautomer、selenium等<br></p>

    </div>
    <div class="col-md-6 abt-left ">
        <h2>教育经历</h2>
        <div class="accordion">
            <div class="accordion-section">
                <h5><a class="accordion-section-title" href="#accordion-1">
                    <span>2015 - 2018</span> 北京航空航天大学 （硕士）
                    <i class="glyphicon glyphicon-chevron-down"></i><div class="clearfix"></div>
                </a></h5>
                <div id="accordion-1" class="accordion-section-content">
                    <h6>大数据与云计算专业</h6>
                    <ul>
                        <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">在职研究生学习</a></li>
                        <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">大数据工程实践</a></li>
                        <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">机器学习及数据挖掘相关</a></li>
                    </ul>
                </div>
            </div>

            <div class="accordion-section">
                <h5><a class="accordion-section-title" href="#accordion-2">
                    <span>2004 - 2008</span> 天津农学院 （本科）
                    <i class="glyphicon glyphicon-chevron-down"></i><div class="clearfix"></div>
                </a></h5>
                <div id="accordion-2" class="accordion-section-content">
                    <h6>计算机科学与技术</h6>
                    <ul>
                        <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">基础语言C</a></li>
                        <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">计算机导论</a></li>
                        <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span><a href="#">操作系统等课程</a></li>
                    </ul>
                </div>
            </div>




        </div>
        <script>
            jQuery(document).ready(function() {
                function close_accordion_section() {
                    jQuery('.accordion .accordion-section-title').removeClass('active');
                    jQuery('.accordion .accordion-section-content').slideUp(300).removeClass('open');
                }

                jQuery('.accordion-section-title').click(function(e) {
                    // Grab current anchor value
                    var currentAttrValue = jQuery(this).attr('href');

                    if(jQuery(e.target).is('.active')) {
                        close_accordion_section();
                    }else {
                        close_accordion_section();

                        // Add active class to section title
                        jQuery(this).addClass('active');
                        // Open up the hidden content panel
                        jQuery('.accordion ' + currentAttrValue).slideDown(300).addClass('open');
                    }

                    e.preventDefault();
                });
            });
        </script>
    </div>
    <div class="col-md-6 abt-right ">
        <div class="col-sm-4 abt-gd-left text-center">
            <div id="demo-pie-1" class="pie-title-center" data-percent="50"> <span class="pie-value"></span> </div>
            <h4>Java测试开发</h4>
        </div>
        <div class="col-sm-4 abt-gd-left text-center">
            <div id="demo-pie-3" class="pie-title-center" data-percent="15"> <span class="pie-value"></span> </div>
            <h4>大数据开发</h4>
        </div>
        <div class="col-sm-4 abt-gd-left text-center">
            <div id="demo-pie-4" class="pie-title-center" data-percent="35"> <span class="pie-value"></span> </div>
            <h4>其他能力</h4>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="clearfix"></div>
</div>
<!-- about -->
<!-- education -->
<div class="employment">
    <div class="container">
        <h3 class="tittle ">工作经验</h3>
        <p class="abt-para ">9年软件测试及开发经验</p>
        <div class="col-md-6 employ-left">
            <h4>01</h4>
        </div>
        <div class="col-md-6 employ-right">
            <h5><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>java开发测试</h5>
            <p><a href="https://github.com/zanghongmin/AtopAutoAndriodTest" target="_blank"> 设计整体测试框架及开发，从代码集成、打包、运行用例、到结果显示...</a></p>
        </div>
        <div class="col-md-6 employ-left2">
            <h5>jmeter插件开发<span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span></h5>
            <p><a href="https://github.com/zanghongmin/JmeterPlugin_FuncTesting" target="_blank"> 接口工具开发，使用jmeter插件扩展方式，满足复杂接口测试需求...</a></p>
        </div>
        <div class="col-md-6 employ-right2">
            <h4>02</h4>
        </div>
        <div class="col-md-6 employ-left ">
            <h4>03</h4>
        </div>
        <div class="col-md-6 employ-right">
            <h5><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>jenkins插件开发</h5>
            <p><a href="https://github.com/zanghongmin/jenkins_userContent" target="_blank">测试开发框架中使用jenkins进行集成操作，有时固有插件不能满足业务需要，需要进行插件开发...</a> </p>
        </div>
        <div class="col-md-6 employ-left2">
            <h5>uiautomator自动化测试<span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span></h5>
            <p>操作android手机使用uiautomator，完成自动化测试 </p>
        </div>
        <div class="col-md-6 employ-right2">
            <h4>04</h4>
        </div>
        <div class="col-md-6 employ-left ">
            <h4>05</h4>
        </div>
        <div class="col-md-6 employ-right">
            <h5><span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>Java全栈开发</h5>
            <p><a href="https://github.com/zanghongmin/adminSystem" target="_blank">完成了360加固保后台管理平台等项目开发，从数据库到页面显示设计及开发...</a></p>
        </div>
        <div class="col-md-6 employ-left2">
            <h5>hadoop大数据开发<span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span></h5>
            <p>整理hadoop原始数据到hive表，再分析数据到mysql </p>
        </div>
        <div class="col-md-6 employ-right2">
            <h4>06</h4>
        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!-- education -->
<!-- num scroller -->

<!-- //num scroller -->
<!-- portfolio -->
<div class="portfolio">
    <div class="container">
        <h3 class="tittle ">项目介绍</h3>
        <div class="portfolio-grids">
            <script src="resume/js/easyResponsiveTabs.js" type="text/javascript"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    $('#horizontalTab').easyResponsiveTabs({
                        type: 'default', //Types: default, vertical, accordion
                        width: 'auto', //auto or any width like 600px
                        fit: true   // 100% fit in a container
                    });
                });

            </script>
            <div class="sap_tabs">
                <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                    <ul class="resp-tabs-list">

                        <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>多apk兼容性测试</span></li>
                        <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>atop测试平台</span></li>
                        <li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span>运营管理平台</span></li>
                        <li class="resp-tab-item" aria-controls="tab_item-4" role="tab"><span>jmeter接口测试</span></li>
                    </ul>
                    <div class="resp-tabs-container">

                        <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                            <div class="col-md-3 team-gd ">
                                <div class="thumb">
                                    <a href="#portfolioModal5" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="resume/images/360jiagu_comp_0.png" alt="">
                                        <div class="team_pos">
                                            <ul>
                                                <li>
                                                    <div class="morph pic fb_icon1">
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                            <div class="col-md-3 team-gd ">
                                <div class="thumb">
                                    <a href="#portfolioModal6" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="resume/images/360atop_0.png" alt="">
                                        <div class="team_pos">
                                            <ul>
                                                <li>
                                                    <div class="morph pic fb_icon1">
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
                            <div class="col-md-3 team-gd ">
                                <div class="thumb">
                                    <a href="#portfolioModal7" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="resume/images/360jiagu_manger_0.png" alt="">
                                        <div class="team_pos">
                                            <ul>
                                                <li>
                                                    <div class="morph pic fb_icon1">
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-4">
                            <div class="col-md-3 team-gd ">
                                <div class="thumb">
                                    <a href="#portfolioModal8" class="portfolio-link b-link-diagonal b-animate-go" data-toggle="modal"><img src="resume/images/360jmeter_0.png" alt="">
                                        <div class="team_pos">
                                            <ul>
                                                <li>
                                                    <div class="morph pic fb_icon1">
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //portfolio -->
<!-- more skills -->
<div class="more">
    <div class="container">
        <h3 class="tittle ">技能</h3>
        <div class="col-md-666 skill-left ">
            <div class="progress">
                <div class="progress-bar progress-bar-success" style="width: 30%">JAVA
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning " style="width: 60%">
                    <span class="sr-only"></span>
                </div>
                <p>90%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success1" style="width: 30%">JAVASCRIPT
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning1" style="width: 30%">
                    <span class="sr-only"></span>
                </div>
                <p>60%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success3" style="width: 30%">CSS
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning3 " style="width: 30%">
                    <span class="sr-only"></span>
                </div>
                <p>60%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success2" style="width: 30%">HTML
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning2" style="width: 30%">
                    <span class="sr-only"></span>
                </div>
                <p>60%</p>
                <div class="clearfix"></div>
            </div>

            <div class="progress">
                <div class="progress-bar progress-bar-success4" style="width: 30%">自动化测试
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning4" style="width: 50%">
                    <span class="sr-only"></span>
                </div>
                <p>80%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success" style="width: 30%">Shell
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning " style="width: 40%">
                    <span class="sr-only"></span>
                </div>
                <p>70%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success1" style="width: 30%">Python
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning1" style="width: 30%">
                    <span class="sr-only"></span>
                </div>
                <p>60%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success3" style="width: 30%">R语言
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning3 " style="width: 10%">
                    <span class="sr-only"></span>
                </div>
                <p>40%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success2" style="width: 30%">Spring
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning2" style="width: 40%">
                    <span class="sr-only"></span>
                </div>
                <p>70%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress">
                <div class="progress-bar progress-bar-success4" style="width: 30%">hadoop相关
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning4" style="width: 30%">
                    <span class="sr-only"></span>
                </div>
                <p>60%</p>
                <div class="clearfix"></div>
            </div>
            <div class="progress  no-marg">
                <div class="progress-bar progress-bar-success" style="width: 30%">开源硬件平台Arduino
                    <span class="sr-only">35% Complete (success)</span>
                </div>
                <div class="progress-bar progress-bar-warning " style="width: 10%">
                    <span class="sr-only"></span>
                </div>
                <p>40%</p>
                <div class="clearfix"></div>
            </div>

        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!-- more skills -->

<!-- //contact -->
<!-- for bootstrap working -->
<script src="resume/js/bootstrap.js"></script>
<!-- //for bootstrap working -->


<div class="portfolio-modal modal fade slideanim" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container01">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <h3>测试结果页</h3>
                        <img src="resume/images/360jiagu_comp_0.png" class="img-responsive img-centered" alt="">
                        <p><a href="https://github.com/zanghongmin/AutoTestAPK" target="_blank"> 测试结果页，展示运行结果....</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container01">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <h3>Atop项目管理页面</h3>
                        <img src="resume/images/360atop_0.png" class="img-responsive img-centered" alt="">
                        <p><a href="https://github.com/zanghongmin/AtopAutoAndriodTest" target="_blank">Atop项目管理页面，包括设备在线节点、任务启动、结果显示等...</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="portfolio-modal modal fade slideanim" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container01">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <h3>360加固保运营管理后台</h3>
                        <img src="resume/images/360jiagu_manger_0.png" class="img-responsive img-centered" alt="">
                        <p><a href="https://github.com/zanghongmin/adminSystem" target="_blank">360加固保运营管理后台页面，用于管理留言回复、数据统计、黑白名单等...</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container01">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <h3>jemter插件</h3>
                        <img src="resume/images/360jmeter_0.png" class="img-responsive img-centered" alt="">
                        <p><a href="https://github.com/zanghongmin/JmeterPlugin_FuncTesting" target="_blank">jemter插件页面，jmeter参数自定义循环、jemter参数加解密等...</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal9" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content port-modal">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container01">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <div class="modal-body">
                        <img src="resume/images/pzang.jpg" class="img-responsive img-centered" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--scrolling js-->
<script src="resume/js/jquery.nicescroll.js"></script>
<script src="resume/js/scripts.js"></script>
<!--//scrolling js-->
<!-- smooth scrolling -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

</body>
</html>
