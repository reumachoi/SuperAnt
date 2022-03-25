package com.dao;

import com.dto.StockBoardDto;
import com.dto.StockBoardParam;
import com.dto.StockTalkDto;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class StockBoardDaoImpl implements StockBoardDao{

    private final SqlSession ss;

    private final String NS = "StockBoard.";

    @Override
    public int writeStockBoard(StockBoardDto dto) {
        int count = ss.insert(NS + "writeStockBoard", dto);
        return count;
    }

    @Override
    public int updateStockBoard(StockBoardDto dto) {
        System.out.println(dto.toString());
        return ss.update( NS+"updateStockBoard",dto);
    }

        @Override
    public List<StockBoardDto> stockBoardList(StockBoardParam param) {
        return ss.selectList(NS + "view", param);
    }

    @Override
    public StockBoardDto getStockBoard(int BORINDEX) {
        return ss.selectOne(NS + "getStockBoard", BORINDEX);
    }

    @Override
    public void deleteStockBoard(int BORINDEX) {
        ss.delete(NS + "deleteStockBoard", BORINDEX);
    }

    @Override
    public List<StockBoardParam> stockBoardSearch(StockBoardParam param) {

        return ss.selectList(NS + "view", param);
    }

    @Override
    public int replyStockBoardUpdate(StockBoardDto dto) {
        return ss.update(NS + "replyStockBoardUpdate", dto);
    }

    @Override
    public int updateReply(StockBoardDto dto) {
        return ss.update(NS + "replyUpdateAf", dto);
    }

    @Override
    public int deleteReply(StockBoardDto dto) {
        return ss.delete(NS + "replyDelete", dto);
    }

    @Override
    public int replyStockBoardInsert(StockBoardDto dto) {
        int count = ss.insert(NS + "replyStockBoardInsert", dto);
        return count;
    }
}
