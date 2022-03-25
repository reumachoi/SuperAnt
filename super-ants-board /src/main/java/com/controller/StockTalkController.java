package com.controller;

import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import com.dto.StockTalkDto;
import com.dto.StockTalkParam;
import com.service.StockTalkService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class StockTalkController {

    private final static Logger logger = LoggerFactory.getLogger(StockTalkController.class);

    private final StockTalkService srv;

    // 새 글 쓰기
    @GetMapping("goStTalkToNewPost.do")
    public String goToNewPost() { return "discuss/discuss-newpost"; }


    // 글쓰기 완료
    @PostMapping("disWriteAf.do")
    public String disWriteAf(StockTalkDto dto) {
        logger.info("StockTalkController disWriteAf()");
        System.out.println(dto.toString());		// 확인

        boolean b = srv.writeStockTalk(dto);
        if(b == true) {
            System.out.println("성공적으로 추가되었습니다");
        }

        return "redirect:/discuss.do";
    }

    // 글 목록 테이블에 리스트로 보여주기
    @GetMapping("discuss.do")
    public String stockTalkList(Model model, StockBoardParam param) {
        logger.info("StockTalkController stockTalkList()");
        System.out.println("discuss.do이동");
        List<StockTalkDto> list = srv.stockTalkList(param);
        model.addAttribute("stockTalkList", list);

        return "discuss/discuss";
    }

    // 테이블에서 제목 클릭하면 글 세부사항 보여주기
    @GetMapping("discussDetail.do")
    public String discussDetail(Model model, int TAKINDEX) {
        logger.info("StockTalkController discussDetail()");
        StockTalkDto dto = srv.getStockTalk(TAKINDEX);
        model.addAttribute("stockTalkDetail", dto);

        return "discuss/discuss-detail";
    }

    // 주식토론방 글 수정 페이지
    @GetMapping("updateStockTalk.do")
    public String updateStockTalk(Model model, int TAKINDEX) {
        logger.info("StockTalkController updateStockTalk()");

        StockTalkDto dto = srv.getStockTalk(TAKINDEX);
        // 짐싸!
        model.addAttribute("stockTalkUpdate", dto);
        return "discuss/discuss-update";
    }

    // 주식토론방 글 수정 완료
    @PostMapping("updateStockTalkAf.do")
    public String updateStockTalkAf(StockTalkDto dto) {
        logger.info("StockTalkController updateStockTalkAf()");
        srv.updateStockTalk(dto);
        return "discuss/discuss";
    }

    // 삭제버튼 누르면 db 테이블과 뷰에서 글 삭제하기
    @GetMapping("deleteStockTalk.do")
    public String deleteStockTalk(int TAKINDEX) {
        srv.deleteStockTalk(TAKINDEX);
        return "redirect:/discuss.do";
    }

    // 검색기능 전용 컨트롤러
    @GetMapping("talkSearch.do")
    public String talkSearch(Model model, @RequestParam(required = false, defaultValue = "title") String chosen, @RequestParam(required = false) String search) {
        StockBoardParam sbp = new StockBoardParam();
        sbp.setChosen(chosen);
        sbp.setSearch(search);

        model.addAttribute("stockTalkSearch", sbp);

        return "discuss/discuss";
    }

//    // 답글 관련
//    @GetMapping("discussReply.do")
//    public String discussReply(Model model, int userIndex) {
//        StockTalkDto dto = srv.getStockTalk(userIndex);
//        model.addAttribute("discussReply", dto);
//        return "discuss-reply";
//    }

    // 답글쓰기 완료
    @PostMapping("saveTalkReply.do")
    public String saveReply(StockTalkDto dto) {
        logger.info("StockBoardService saveReply()");
        System.out.println(dto.toString());		// 확인

        boolean b = srv.replyStockTalkInsert(dto);
        if(b == true) {
            System.out.println("성공적으로 추가되었습니다");
        }

        return "redirect:/discuss.do";
    }

    // 답글 삭제
    @GetMapping("deleteDiscussReply.do")
    public String deleteDiscussReply(int TAKINDEX) {
        srv.deleteStockTalk(TAKINDEX);
        return "redirect:/discuss.do";
    }

    // 게시판 검색을 위한 컨트롤러
    @GetMapping("getTalkSearch.do")
    public String getSearch(Model model, @RequestParam(required = false, defaultValue = "title") String chosen, @RequestParam(required = false) String search) {
        StockBoardParam sbp = new StockBoardParam();
        sbp.setChosen(chosen);
        sbp.setSearch(search);

        model.addAttribute("stockBoardSearch", sbp);
        return "inform/inve-inform";
    }
}