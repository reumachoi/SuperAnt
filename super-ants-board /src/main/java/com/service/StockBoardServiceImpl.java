package com.service;

import com.dao.StockBoardDao;
import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;


import java.util.List;

@Service
@RequiredArgsConstructor
public class StockBoardServiceImpl implements StockBoardService{

    private final StockBoardDao dao;

    @Override
    public boolean writeStockBoard(StockBoardDto dto) {
        int count = dao.writeStockBoard(dto);
        return count>0?true:false;
    }

    @Override
    public int updateStockBoard(StockBoardDto dto) {

        return dao.updateStockBoard(dto);
    }


    @Override
    public List<StockBoardDto> stockBoardList(StockBoardParam param) {

        return dao.stockBoardList(param);
    }

    @Override
    public StockBoardDto getStockBoard(int BORINDEX) {
        return dao.getStockBoard(BORINDEX);
    }

    @Override
    public void deleteStockBoard(int BORINDEX) {
        dao.deleteStockBoard(BORINDEX);
    }

    @Override
    public List<StockBoardParam> stockBoardSearch(StockBoardParam param) {
        return dao.stockBoardSearch(param);
    }

    @Override
    public void replyStockBoard(StockBoardDto dto) {
        int cnt = dao.replyStockBoardUpdate(dto);
        if (cnt == 0) System.out.println("reply update failed");
    }

    @Override
    public int updateReply(StockBoardDto dto) {
        return dao.updateReply(dto);
    }

    @Override
    public int deleteReply(StockBoardDto dto) {
        return dao.deleteReply(dto);
    }

    @Override
    public boolean  replyStockBoardInsert(StockBoardDto dto) {
        int count = dao. replyStockBoardInsert(dto);
        return count>0?true:false;
    }

}
