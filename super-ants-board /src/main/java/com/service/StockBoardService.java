package com.service;

import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import com.dto.StockTalkDto;

import java.util.List;

public interface StockBoardService {

    boolean writeStockBoard(StockBoardDto dto);

    int updateStockBoard(StockBoardDto dto);

    List<StockBoardDto> stockBoardList(StockBoardParam param);

    StockBoardDto getStockBoard(int BORINDEX);

    void deleteStockBoard(int BORINDEX);

    List<StockBoardParam> stockBoardSearch(StockBoardParam param);

    void replyStockBoard(StockBoardDto dto);

    int updateReply(StockBoardDto dto);

    int deleteReply(StockBoardDto dto);

    boolean replyStockBoardInsert(StockBoardDto dto);
}
