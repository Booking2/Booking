package com.entity;

import java.util.Date;

public class Bk_hotel {
    private Integer hoid;

    private Integer hid;

    private String honame;

    private String hodescribe;

    private Integer hosentiment;

    private String hoaddress;

    private String hostate;

    private Date hostaydate;

    private Date hocheckdate;

    private Integer reid;

    private Integer arid;

    public Integer getHoid() {
        return hoid;
    }

    public void setHoid(Integer hoid) {
        this.hoid = hoid;
    }

    public Integer getHid() {
        return hid;
    }

    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public String getHoname() {
        return honame;
    }

    public void setHoname(String honame) {
        this.honame = honame == null ? null : honame.trim();
    }

    public String getHodescribe() {
        return hodescribe;
    }

    public void setHodescribe(String hodescribe) {
        this.hodescribe = hodescribe == null ? null : hodescribe.trim();
    }

    public Integer getHosentiment() {
        return hosentiment;
    }

    public void setHosentiment(Integer hosentiment) {
        this.hosentiment = hosentiment;
    }

    public String getHoaddress() {
        return hoaddress;
    }

    public void setHoaddress(String hoaddress) {
        this.hoaddress = hoaddress == null ? null : hoaddress.trim();
    }

    public String getHostate() {
        return hostate;
    }

    public void setHostate(String hostate) {
        this.hostate = hostate == null ? null : hostate.trim();
    }

    public Date getHostaydate() {
        return hostaydate;
    }

    public void setHostaydate(Date hostaydate) {
        this.hostaydate = hostaydate;
    }

    public Date getHocheckdate() {
        return hocheckdate;
    }

    public void setHocheckdate(Date hocheckdate) {
        this.hocheckdate = hocheckdate;
    }

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public Integer getArid() {
        return arid;
    }

    public void setArid(Integer arid) {
        this.arid = arid;
    }
}