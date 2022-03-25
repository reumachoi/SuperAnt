package com.dao;

import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import com.dto.StockTalkDto;
import com.dto.StockTalkParam;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class StockTalkDaoImpl implements StockTalkDao{

    private final SqlSession ss;

    private final String NS = "StockTalk.";

    @Override
    public int writeStockTalk(StockTalkDto dto) {
        int count = ss.insert(NS + "writeStockTalk", dto);
        return count;
    }

    @Override
    public int updateStockTalk(StockTalkDto dto) {

        return ss.update( NS+"updateStockTalk",dto);
    }

    @Override
    public List<StockTalkDto> stockTalkList(StockBoardParam param) {

        return ss.selectList(NS + "view", param);
    }

    @Override
    public StockTalkDto getStockTalk(int TAKINDEX) {

        return ss.selectOne(NS + "getStockTalk", TAKINDEX);
    }

    @Override
    public void deleteStockTalk(int TAKINDEX) {

        ss.delete(NS + "deleteStockTalk", TAKINDEX);
    }

    @Override
    public List<StockBoardParam> stockTalkSearch(StockBoardParam param) {

        return ss.selectList(NS + "view", param);
    }

    @Override
    public int replyStockTalkUpdate(StockTalkDto dto) {
        return ss.update(NS + "replyStockTalkUpdate", dto);
    }

    @Override
    public int updateReply(StockTalkDto dto) {
        return ss.update(NS + "replyUpdateAf", dto);
    }

    @Override
    public int deleteReply(StockTalkDto dto) {
        return ss.delete(NS + "replyDelete", dto);
    }

    @Override
    public int  replyStockTalkInsert(StockTalkDto dto) {
        return ss.insert(NS + "writeStockTalk", dto);
    }

}
