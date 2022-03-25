package com.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class BbsController {

    /* ***************************************************** */
    // 메뉴 관련 컨트롤러
    // 메뉴에서 홈을 눌렀을 때 메인 페이지로
    @GetMapping("home.do")
    public String home() {
        return "../../index";
    }

    // 메뉴-주식-공모주
    @GetMapping("stock-calendar.do")
    public String stockCalendar() {
        return "stock-calendar";
    }

    // 메뉴-주식-투자정보
    @GetMapping("stock-inform.do")
    public String stockInform() {
        return "inform/inve-inform";
    }

    // 메뉴-주식-전자공시
    @GetMapping("stock-notice.do")
    public String stockNotice() {
        return "stock-notice";
    }

    // 메뉴-주식-종목토론방
    @GetMapping("stock-discuss.do")
    public String stockdiscuss() {
        return "discuss/discuss";
    }

    // 메뉴-부동산-청약
    @GetMapping("realty-calendar.do")
    public String realtyCalendar() {
        return "realty-calendar";
    }

    // 메뉴-부동산-공시지가
    @GetMapping("realty-notice.do")
    public String realtyNotice() {
        return "realty-notice";
    }

    // 메뉴-부동산-경매정보
    @GetMapping("realty-inform.do")
    public String realtyInform() {
        return "inform/inve-inform";
    }

    // 메뉴-부동산-매매
    @GetMapping("realty-discuss.do")
    public String realtydiscuss() {
        return "discuss/discuss";
    }


}
