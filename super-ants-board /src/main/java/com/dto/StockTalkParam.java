package com.dto;

import lombok.Getter;

import java.io.Serializable;

@Getter
public class StockTalkParam implements Serializable {

    private String chosen;
    private String search;

    public StockTalkParam() {
    }

    public StockTalkParam(String chosen, String search) {
        super();
        this.chosen = chosen;
        this.search = search;
    }

    public void setChosen(String chosen) {

        this.chosen = chosen;
    }

    public void setSearch(String search) {

        this.search = search;
    }
}
