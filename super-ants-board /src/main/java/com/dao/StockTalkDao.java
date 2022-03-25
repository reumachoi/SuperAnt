package com.dao;

import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import com.dto.StockTalkDto;
import com.dto.StockTalkParam;

import java.util.List;

public interface StockTalkDao {

    int writeStockTalk(StockTalkDto dto);

    int updateStockTalk(StockTalkDto dto);

    List<StockTalkDto> stockTalkList(StockBoardParam param);

    StockTalkDto getStockTalk(int TAKINDEX);

    void deleteStockTalk(int TAKINDEX);

    List<StockBoardParam> stockTalkSearch(StockBoardParam param);

    int replyStockTalkUpdate(StockTalkDto dto);

    int updateReply(StockTalkDto dto);

    int deleteReply(StockTalkDto dto);

    int replyStockTalkInsert(StockTalkDto dto);
}
