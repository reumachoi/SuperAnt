package com.dto;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;


public class StockBoardDto implements Serializable {

    int BORINDEX;
    String BORTITLE;
    String BORUSERID;
    String BORCONTENT;
    String BORDATE;
    String BORUSERNAME;
    int BORREF;
    int BORSTEP;
    int BORDEPTH;

    @Override
    public String toString() {
        return "StockBoardDto{" +
                "BORINDEX=" + BORINDEX +
                ", BORTITLE='" + BORTITLE + '\'' +
                ", BORUSERID='" + BORUSERID + '\'' +
                ", BORCONTENT='" + BORCONTENT + '\'' +
                ", BORDATE='" + BORDATE + '\'' +
                ", BORUSERNAME='" + BORUSERNAME + '\'' +
                ", BORREF=" + BORREF +
                ", BORSTEP=" + BORSTEP +
                ", BORDEPTH=" + BORDEPTH +
                '}';
    }

    public StockBoardDto() {
    }

    public StockBoardDto(int BORINDEX, String BORTITLE, String BORUSERID, String BORCONTENT, String BORDATE, String BORUSERNAME, int BORREF, int BORSTEP, int BORDEPTH) {
        this.BORINDEX = BORINDEX;
        this.BORTITLE = BORTITLE;
        this.BORUSERID = BORUSERID;
        this.BORCONTENT = BORCONTENT;
        this.BORDATE = BORDATE;
        this.BORUSERNAME = BORUSERNAME;
        this.BORREF = BORREF;
        this.BORSTEP = BORSTEP;
        this.BORDEPTH = BORDEPTH;
    }

    public int getBORINDEX() {
        return BORINDEX;
    }

    public void setBORINDEX(int BORINDEX) {
        this.BORINDEX = BORINDEX;
    }

    public String getBORTITLE() {
        return BORTITLE;
    }

    public void setBORTITLE(String BORTITLE) {
        this.BORTITLE = BORTITLE;
    }

    public String getBORUSERID() {
        return BORUSERID;
    }

    public void setBORUSERID(String BORUSERID) {
        this.BORUSERID = BORUSERID;
    }

    public String getBORCONTENT() {
        return BORCONTENT;
    }

    public void setBORCONTENT(String BORCONTENT) {
        this.BORCONTENT = BORCONTENT;
    }

    public String getBORDATE() {
        return BORDATE;
    }

    public void setBORDATE(String BORDATE) {
        this.BORDATE = BORDATE;
    }

    public String getBORUSERNAME() {
        return BORUSERNAME;
    }

    public void setBORUSERNAME(String BORUSERNAME) {
        this.BORUSERNAME = BORUSERNAME;
    }

    public int getBORREF() {
        return BORREF;
    }

    public void setBORREF(int BORREF) {
        this.BORREF = BORREF;
    }

    public int getBORSTEP() {
        return BORSTEP;
    }

    public void setBORSTEP(int BORSTEP) {
        this.BORSTEP = BORSTEP;
    }

    public int getBORDEPTH() {
        return BORDEPTH;
    }

    public void setBORDEPTH(int BORDEPTH) {
        this.BORDEPTH = BORDEPTH;
    }
}
