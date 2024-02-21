package com.qiqi.controller;
import com.qiqi.pojo.User;
import com.qiqi.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
@Controller
public class UserController {
    @Resource
    private UserService service;

    @RequestMapping("userLogin")
    public String login(String name,String password,Model model){
    User user=service.login(name, password);
    if (user!=null){
        return "Book";
    }
        model.addAttribute("logMsg","用户名密码错误或不存在");
        return "register";
    }
    @RequestMapping("registerUser")
    @ResponseBody
    public String addUser(User user ){
        int row= service.addUser(user);
        if(row>0)
            return "ok";
        else
            return "error";
    }
}

