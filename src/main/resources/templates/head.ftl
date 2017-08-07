<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="imagetoolbar" content="no" />
    <title>流畅的动态jQuery导航</title>
    <link rel="stylesheet" href="head/style.css" />
    <script type="text/javascript" src="searchpage/jquery3.2.1.js"></script>
    <script language="javascript">
        $(document).ready(function() {

            $(".menu li a").wrapInner( '<span class="out"></span>' );

            $(".menu li a").each(function() {
                $( '<span class="over">' +  $(this).text() + '</span>' ).appendTo( this );
            });

            $(".menu li a").hover(function() {
                $(".out",	this).stop().animate({'top':	'45px'},	200); // move down - hide
                $(".over",	this).stop().animate({'top':	'0px'},		200); // move down - show

            }, function() {
                $(".out",	this).stop().animate({'top':	'0px'},		200); // move up - show
                $(".over",	this).stop().animate({'top':	'-45px'},	200); // move up - hide
            });

        });

    </script>
</head>

    <div class="menu">
        <ul>
            <li><a href="/">主页</a></li>
            <li><a href="/resume" target="_blank">个人简历</a></li>

        </ul>
    </div>
