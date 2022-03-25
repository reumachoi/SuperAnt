package com.dto;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;

//@Getter
//@Setter
public class StockTalkDto implements Serializable {

    int TAKINDEX;
    String TAKTITLE;
    String TAKUSERID;
    String TAKCONTENT;
    Date TAKDATE;
    int TAKREF;
    int TAKSTEP;
    int TAKDEPTH;

    public StockTalkDto() {
    }

    public StockTalkDto(int TAKINDEX, String TAKTITLE, String TAKUSERID, String TAKCONTENT, Date TAKDATE, int TAKREF, int TAKSTEP, int TAKDEPTH) {
        this.TAKINDEX = TAKINDEX;
        this.TAKTITLE = TAKTITLE;
        this.TAKUSERID = TAKUSERID;
        this.TAKCONTENT = TAKCONTENT;
        this.TAKDATE = TAKDATE;
        this.TAKREF = TAKREF;
        this.TAKSTEP = TAKSTEP;
        this.TAKDEPTH = TAKDEPTH;
    }

    @Override
    public String toString() {
        return "StockTalkDto{" +
                "TAKINDEX=" + TAKINDEX +
                ", TAKTITLE='" + TAKTITLE + '\'' +
                ", TAKUSERID='" + TAKUSERID + '\'' +
                ", TAKCONTENT='" + TAKCONTENT + '\'' +
                ", TAKDATE=" + TAKDATE +
                ", TAKREF=" + TAKREF +
                ", TAKSTEP=" + TAKSTEP +
                ", TAKDEPTH=" + TAKDEPTH +
                '}';
    }

    public int getTAKINDEX() {
        return TAKINDEX;
    }

    public void setTAKINDEX(int TAKINDEX) {
        this.TAKINDEX = TAKINDEX;
    }

    public String getTAKTITLE() {
        return TAKTITLE;
    }

    public void setTAKTITLE(String TAKTITLE) {
        this.TAKTITLE = TAKTITLE;
    }

    public String getTAKUSERID() {
        return TAKUSERID;
    }

    public void setTAKUSERID(String TAKUSERID) {
        this.TAKUSERID = TAKUSERID;
    }

    public String getTAKCONTENT() {
        return TAKCONTENT;
    }

    public void setTAKCONTENT(String TAKCONTENT) {
        this.TAKCONTENT = TAKCONTENT;
    }

    public Date getTAKDATE() {
        return TAKDATE;
    }

    public void setTAKDATE(Date TAKDATE) {
        this.TAKDATE = TAKDATE;
    }

    public int getTAKREF() {
        return TAKREF;
    }

    public void setTAKREF(int TAKREF) {
        this.TAKREF = TAKREF;
    }

    public int getTAKSTEP() {
        return TAKSTEP;
    }

    public void setTAKSTEP(int TAKSTEP) {
        this.TAKSTEP = TAKSTEP;
    }

    public int getTAKDEPTH() {
        return TAKDEPTH;
    }

    public void setTAKDEPTH(int TAKDEPTH) {
        this.TAKDEPTH = TAKDEPTH;
    }


}
