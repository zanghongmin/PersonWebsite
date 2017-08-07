
function searchB() {
    if ($("#searchform input[checked]").val() == "baidu_web") {
        window.open('https://www.baidu.com/s?wd=' + $("#searchform input[name='q']").val());
    } else if ($("#searchform input[checked]").val() == "google_web") {
        window.open('https://www.google.com.hk/search?q=' + $("#searchform input[name='q']").val());
    } else if ($("#searchform input[checked]").val() == "taobao_shopping") {
        window.open('http://ai.taobao.com/search/index.htm?key=' + $("#searchform input[name='q']").val());
    } else if ($("#searchform input[checked]").val() == "github") {
        window.open('https://github.com/search?utf8=✓&type=&q=' + $("#searchform input[name='q']").val());
    } else if ($("#searchform input[checked]").val() == "yahoo") {
        window.open('https://sg.search.yahoo.com/search?p=' + $("#searchform input[name='q']").val());
    } else if ($("#searchform input[checked]").val() == "fanyi") {
        window.open('http://fanyi.baidu.com/?aldtype=16047#en/zh/' + $("#searchform input[name='q']").val());
    }
}


$(function () {

    $("#searchform :radio").each(function () {
        if($(this).prop("checked")){
            $(this).attr("checked",true);
            if ($(this).val() == "baidu_web") {
                $("#searchform a>img").prop("alt", "百 度").prop("src", "searchpage/baidu_web.png");
                $("#searchform a").prop("href", "https://www.baidu.com/?tn=monline_3_dg");
            } else if ($(this).val() == "google_web") {
                $("#searchform a>img").prop("alt", "谷 歌").prop("src", "searchpage/google_web-444.png");
                $("#searchform a").prop("href", "https://www.google.com/");
            } else if ($(this).val() == "taobao_shopping") {
                $("#searchform a>img").prop("alt", "淘 宝").prop("src", "searchpage/taobao_shopping-446.png");
                $("#searchform a").prop("href", "http://ai.taobao.com/?pid=mm_28347190_2425761_13466329");
            } else if ($(this).val() == "github") {
                $("#searchform a>img").prop("alt", "GitHub").prop("src", "searchpage/github.png");
                $("#searchform a").prop("href", "https://github.com/");
            } else if ($(this).val() == "yahoo") {
                $("#searchform a>img").prop("alt", "Yahoo").prop("src", "searchpage/yahoo.png");
                $("#searchform a").prop("href", "https://sg.search.yahoo.com");
            } else if ($(this).val() == "fanyi") {
                $("#searchform a>img").prop("alt", "翻译").prop("src", "searchpage/fanyi.png");
                $("#searchform a").prop("href", "http://fanyi.baidu.com/?aldtype=16047");
            }
        }else{
            $(this).removeAttr("checked");
        }
    });

    $("#searchform :radio").click(function () {

        $("#searchform :radio").each(function () {
            if($(this).prop("checked")){
                $(this).attr("checked",true);
            }else{
                $(this).removeAttr("checked");
            }
        });
        if ($(this).val() == "baidu_web") {
            $("#searchform a>img").prop("alt", "百 度").prop("src", "searchpage/baidu_web.png");
            $("#searchform a").prop("href", "https://www.baidu.com/?tn=monline_3_dg");
        } else if ($(this).val() == "google_web") {
            $("#searchform a>img").prop("alt", "谷 歌").prop("src", "searchpage/google_web-444.png");
            $("#searchform a").prop("href", "https://www.google.com/");
        } else if ($(this).val() == "taobao_shopping") {
            $("#searchform a>img").prop("alt", "淘 宝").prop("src", "searchpage/taobao_shopping-446.png");
            $("#searchform a").prop("href", "http://ai.taobao.com/?pid=mm_28347190_2425761_13466329");
        } else if ($(this).val() == "github") {
            $("#searchform a>img").prop("alt", "GitHub").prop("src", "searchpage/github.png");
            $("#searchform a").prop("href", "https://github.com/");
        } else if ($(this).val() == "yahoo") {
            $("#searchform a>img").prop("alt", "Yahoo").prop("src", "searchpage/yahoo.png");
            $("#searchform a").prop("href", "https://sg.search.yahoo.com");
        } else if ($(this).val() == "fanyi") {
            $("#searchform a>img").prop("alt", "翻译").prop("src", "searchpage/fanyi.png");
            $("#searchform a").prop("href", "http://fanyi.baidu.com/?aldtype=16047");
        }
    });


    document.onkeydown = function(e){
        var ev = document.all ? window.event : e;
        if(ev.keyCode==13) {
            searchB();
        }
    }

});