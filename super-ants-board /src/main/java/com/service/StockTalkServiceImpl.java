package com.service;

import com.dao.StockTalkDao;
import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import com.dto.StockTalkDto;
import com.dto.StockTalkParam;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class StockTalkServiceImpl implements StockTalkService{

    private final StockTalkDao dao;

    @Override
    public boolean writeStockTalk(StockTalkDto dto) {
        System.out.println(dto.toString());
        int count = dao.writeStockTalk(dto);
        return count>0?true:false;
    }

    @Override
    public int updateStockTalk(StockTalkDto dto) {
        return dao.updateStockTalk(dto);
    }

    @Override
    public List<StockTalkDto> stockTalkList(StockBoardParam param) {

        return dao.stockTalkList(param);
    }

    @Override
    public StockTalkDto getStockTalk(int TAKINDEX) {
        return dao.getStockTalk(TAKINDEX);
    }

    @Override
    public void deleteStockTalk(int TAKINDEX) {
        dao.deleteStockTalk(TAKINDEX);
    }

    @Override
    public List<StockBoardParam> stockTalkSearch(StockBoardParam param) {
        return dao.stockTalkSearch(param);
    }

    @Override
    public void replyStockTalk(StockTalkDto dto) {
        int cnt = dao.replyStockTalkUpdate(dto);
        if (cnt == 0) System.out.println("reply update failed");
    }

    @Override
    public int updateReply(StockTalkDto dto) {
        return dao.updateReply(dto);
    }

    @Override
    public int deleteReply(StockTalkDto dto) {
        return dao.deleteReply(dto);
    }

    @Override
    public boolean replyStockTalkInsert(StockTalkDto dto) {
        int count = dao.replyStockTalkInsert(dto);
        return count>0?true:false;
    }

}
