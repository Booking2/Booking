package com.entity;

public class Hotel_type {
    private Integer hid;

    private String htypename;

    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public String getHtypename() {
        return htypename;
    }

    public void setHtypename(String htypename) {
        this.htypename = htypename == null ? null : htypename.trim();
    }
}