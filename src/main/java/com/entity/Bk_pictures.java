package com.entity;

public class Bk_pictures {
    private Integer piid;

    private String pipicture;

    private Integer hoid;

    public Integer getPiid() {
        return piid;
    }

    public void setPiid(Integer piid) {
        this.piid = piid;
    }

    public String getPipicture() {
        return pipicture;
    }

    public void setPipicture(String pipicture) {
        this.pipicture = pipicture == null ? null : pipicture.trim();
    }

    public Integer getHoid() {
        return hoid;
    }

    public void setHoid(Integer hoid) {
        this.hoid = hoid;
    }
}