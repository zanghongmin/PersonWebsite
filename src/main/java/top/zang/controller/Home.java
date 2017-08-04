package top.zang.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Home {
    @RequestMapping("/resume")
    String resume() {
        return "resume/resume";
    }

    @RequestMapping("/")
    String home() {
        return "searchpage/search";
    }





//    @RequestMapping("/search")
//    String search() {
//        return "redirect:https://www.baidu.com/s?wd=spring%20boot";
//    }
}

