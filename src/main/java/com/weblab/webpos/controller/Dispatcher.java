package com.weblab.webpos.controller;


import com.weblab.webpos.vo.CategoryVO;
import com.weblab.webpos.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class Dispatcher {

    @RequestMapping("/")
    public String Index() {
        return "index";
    }


//    @RequestMapping(value = "/posMain/{id}",method = RequestMethod.GET)
//    public String posMain(HttpServletRequest request, @PathVariable int id) {
//        HttpSession session = request.getSession();
//        session.setAttribute("id",id);
//        return "posMain"; }

    @RequestMapping("/groceryMain")
    public String groceryMain() { return "groceryMain"; }


        



    @RequestMapping("/salesPage")
    public String salesPage() { return "salesPage"; }


//포스메인에서 투두 상세보기하면 테이블 띄워주는 거 --> 데이터 반영하는 걸로 고쳐야함
    @RequestMapping("/test2")
    public String test() { return "test2"; }

    @RequestMapping("/dragTest")
    public String dragTest() { return "dragTest"; }

    @RequestMapping("/addCatePage")
    public String addCatePage() { return "addCatePage"; }

}

