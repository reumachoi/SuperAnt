package com.controller;

import com.dto.LoginDto;
import com.dto.UserDto;
import com.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class UserController {

    private final static Logger logger = LoggerFactory.getLogger(UserController.class);

    private final UserService srv;

    // 아이디 찾기로
    @GetMapping("forgetid.do")
    public String forgetId() {
        return "user/forgetid";
    }

    // 비밀번호 찾기로
    @GetMapping("forgetpwd.do")
    public String forgetPwd() {
        return "user/forgetpwd";
    }

    // 회원가입으로
    @GetMapping("signup.do")
    public String signup() {
        return "user/signup";
    }

    // 로그인으로
    @GetMapping("login.do")
    public String login() {
        return "user/login";
    }

    @GetMapping("main.do")
    public String main() {
        return "main";
    }

    // 로그인 요청 처리
    @PostMapping("afLogin.do")
    public String afLogin(UserDto dto, HttpServletRequest req, Model model) {
       logger.info("UserController afLogin()");
       System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~UserController afLogin()");
        System.out.println(dto.toString());

        UserDto user = srv.login(dto);
        System.out.print("start");
        System.out.println(user.toString()); //username test넘어옴

        if (user != null) {
            req.getSession().setAttribute("login", user);
            logger.info("Login Succeess");
            System.out.println("로그인성공");
            return "redirect:/home.do";
        } else {
            logger.info("Login Fail");
            System.out.println("로그인실패");
            return "redirect:/login.do";
        }
    }

    // 회원가입 요청 처리
    @PostMapping("afSignup.do")
    public String afSignup(UserDto dto) {
        System.out.println("~~~~~~~~~afSignup");
        System.out.println("---> " + dto.toString());
        boolean p = srv.addUser(dto);
        if (p==true) {
            logger.info("Success");
            System.out.println("가입성공");
        }
        return "redirect:/home.do";
    }


    // id 중복확인
    @ResponseBody
    @PostMapping("idCheck.do")
    public String idCheck(String id) {
        logger.info("UserController idCheck() ");

        int cnt = srv.userIdCheck(id);
        logger.info("USERID : " + id);

        if(cnt > 0) {
            return "no";
        } else {
            return "ok";
        }
    }

    // 로그아웃
    @GetMapping("logout.do")
    public String logout(HttpSession ss) {
        ss.invalidate();
        logger.info("logout success");
        return "redirect:/";
    }

    //아이디 찾기
    @ResponseBody
    @PostMapping("findID.do")
    public String findId(@RequestParam List<String> findData) throws  Exception{
        logger.info("UserController idCheck() " + new Date());

        return srv.findUserID(findData.get(0),findData.get(1),findData.get(2));
    }

}