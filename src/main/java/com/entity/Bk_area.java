package com.entity;

import org.apache.ibatis.annotations.Mapper;

public class Bk_area {
    private Integer arid;

    private Integer ciid;

    private String arname;

    public Integer getArid() {
        return arid;
    }

    public void setArid(Integer arid) {
        this.arid = arid;
    }

    public Integer getCiid() {
        return ciid;
    }

    public void setCiid(Integer ciid) {
        this.ciid = ciid;
    }

    public String getArname() {
        return arname;
    }

    public void setArname(String arname) {
        this.arname = arname == null ? null : arname.trim();
    }
}