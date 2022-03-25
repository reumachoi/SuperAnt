package com.controller;


import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import com.service.StockBoardService;
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
public class StockBoardController {

    private final static Logger logger = LoggerFactory.getLogger(StockBoardController.class);

    private final StockBoardService srv;

    // 새 글 쓰기
    @GetMapping("goStBorToNewPost.do")
    public String goToNewPost() { return "inform/inve-newpost"; }

    // 글쓰기 완료
    @PostMapping("BorWriteAf.do")
    public String BorWriteAf(StockBoardDto dto) {
        logger.info("StockBoardService BorWriteAf()");
        System.out.println(dto.toString());		// 확인
        boolean b = srv.writeStockBoard(dto);
        if(b == true) {
            System.out.println("성공적으로 추가되었습니다");
        }

        return "redirect:/inve-inform.do";
    }

    // 글 목록을 리스트로 보여주기
    @GetMapping("inve-inform.do")
    public String stockBoardList(Model model, StockBoardParam param) {
        logger.info("StockBoardController stockBoardList()");
        List<StockBoardDto> list = srv.stockBoardList(param);
        model.addAttribute("stockBoardList", list);
        return "inform/inve-inform";
    }

    // 글 세부사항 보여주기
    @GetMapping("inveInformDetail.do")
    public String stockBoardDetail(Model model, int BORINDEX) {
        logger.info("stockBoardDetail()");
        StockBoardDto dto = srv.getStockBoard(BORINDEX);
        model.addAttribute("stockBoardDetail", dto);

        return "inform/inve-inform-detail";
    }

    // 주식정보방 글 수정 페이지
    @GetMapping("updateStockBoard.do")
    public String updateStockBoard(Model model, int BORINDEX) {
        logger.info("StockBoardController updateStockBoard()");

        StockBoardDto dto = srv.getStockBoard(BORINDEX);
        // 짐싸!
        model.addAttribute("stockBoardUpdate", dto);
        return "inform/inve-inform-update";
    }

    // 주식정보방 글 수정완료
    @PostMapping("updateStockBoardAf.do")
    public String updateStockBoardAf(StockBoardDto dto) {
        logger.info("StockBoardController updateStockBoardAf()");
        srv.updateStockBoard(dto);

        return "redirect:/inve-inform.do";
    }


    // 삭제버튼 누르면 테이블에서 삭제하고 리스트로 돌아감
    @GetMapping("deleteStockBoard.do")
    public String deleteStockBoard(int BORINDEX) {
        srv.deleteStockBoard(BORINDEX);
        return "redirect:/inve-inform.do";
    }

//    // 답글 관련
//    @GetMapping("inveReply.do") //안쓰는기능
//    public String inveReply(Model model, int BORINDEX) {
//        StockBoardDto dto = srv.getStockBoard(BORINDEX);
//        model.addAttribute("bbs", dto);
//        return "inve-reply";
//    }

    // 답글쓰기 완료
    @PostMapping("saveBoardReply.do")
    public String saveReply(StockBoardDto dto, Model model, int BORINDEX) {
        logger.info("StockBoardService saveReply()");
        System.out.println(dto.toString());		// 확인

        boolean b = srv.replyStockBoardInsert(dto);
        StockBoardDto sb = srv.getStockBoard(BORINDEX);
        model.addAttribute("reply", sb);
        if(b == true) {
            System.out.println("성공적으로 추가되었습니다");
        }

        return "redirect:/inve-inform.do";
    }

    // 답글 삭제
    @GetMapping("deleteReply.do")
    public String deleteInveReply(int BORINDEX) {
        srv.deleteStockBoard(BORINDEX);
        return "redirect:/inve-inform.do";
    }

    // 게시판 검색을 위한 컨트롤러
    @GetMapping("getBoardSearch.do")
    public String getSearch(Model model, @RequestParam(required = false, defaultValue = "title") String chosen, @RequestParam(required = false) String search) {
        StockBoardParam sbp = new StockBoardParam();
        sbp.setChosen(chosen);
        sbp.setSearch(search);

        model.addAttribute("stockBoardSearch", sbp);
        return "inform/inve-inform";
    }



}