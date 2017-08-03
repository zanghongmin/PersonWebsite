package top.zang.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SamplerC {


    @RequestMapping("/")
    String home() {
        System.out.println("tret");
        String ss = "";


        return "index";
    }

}

