package com.entity;

public class Rooms_type {
    private Integer rtid;

    private String rttypename;

    private String rtdescribe;

    private String rpictures;

    public Integer getRtid() {
        return rtid;
    }

    public void setRtid(Integer rtid) {
        this.rtid = rtid;
    }

    public String getRttypename() {
        return rttypename;
    }

    public void setRttypename(String rttypename) {
        this.rttypename = rttypename == null ? null : rttypename.trim();
    }

    public String getRtdescribe() {
        return rtdescribe;
    }

    public void setRtdescribe(String rtdescribe) {
        this.rtdescribe = rtdescribe == null ? null : rtdescribe.trim();
    }

    public String getRpictures() {
        return rpictures;
    }

    public void setRpictures(String rpictures) {
        this.rpictures = rpictures == null ? null : rpictures.trim();
    }
}