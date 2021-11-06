package com.weblab.webpos.controller;


import com.weblab.webpos.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class Dispatcher {

    @RequestMapping("/")
    public String Index() {
        return "index";
    }

    @RequestMapping("/groceryMain")
    public String groceryMain() { return "groceryMain"; }

    @RequestMapping("/addCatePage")
    public String addCatePage() { return "addCatePage"; }

    @RequestMapping("/addGroceryPage")
    public String addGroceryPage() { return "addGroceryPage"; }

    @RequestMapping("/salesPage")
    public String salesPage() { return "salesPage"; }

}

