package com.dao;

import com.dto.StockBoardDto;
import com.dto.StockBoardParam;

import java.util.List;

public interface StockBoardDao {

    int writeStockBoard(StockBoardDto dto);

    int updateStockBoard(StockBoardDto dto);

    List<StockBoardDto> stockBoardList(StockBoardParam param);

    StockBoardDto getStockBoard(int BORINDEX);

    void deleteStockBoard(int BORINDEX);

    List<StockBoardParam> stockBoardSearch(StockBoardParam param);

    int replyStockBoardUpdate(StockBoardDto dto);

    int updateReply(StockBoardDto dto);

    int deleteReply(StockBoardDto dto);

    int replyStockBoardInsert(StockBoardDto dto);



}
