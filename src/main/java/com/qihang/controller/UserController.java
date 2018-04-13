package com.qihang.controller;

import com.qihang.pojo.user;
import com.qihang.services.userService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private userService userService;

    @RequestMapping("/test")
    public String query(Model model){
        model.addAttribute("username","阿龙");
        model.addAttribute("password","along");
        return "test";
    }

    @RequestMapping("/query")
    public String query(@RequestParam(value = "username",required = true) String username, Model model){
        user user = new user();
        user = userService.querybyUsername(username);
        model.addAttribute("user",user);
        return "test";
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    @ResponseBody
    public user ifLogin(@RequestParam String username,@RequestParam String password){
        user user = userService.querybyUsername(username);
        if(user==null){
            return null;
        }
        else if(password.equals(user.getPassword())){
            return user;
        }else{
            return null;
        }
    }

}
