package com.entity;

import java.util.Date;

public class Bk_user {
    private Integer uid;

    private String uphone;

    private String upassword;

    private String uname;

    private String uregion;

    private Date ubirthday;

    private String uphoto;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone == null ? null : uphone.trim();
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword == null ? null : upassword.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getUregion() {
        return uregion;
    }

    public void setUregion(String uregion) {
        this.uregion = uregion == null ? null : uregion.trim();
    }

    public Date getUbirthday() {
        return ubirthday;
    }

    public void setUbirthday(Date ubirthday) {
        this.ubirthday = ubirthday;
    }

    public String getUphoto() {
        return uphoto;
    }

    public void setUphoto(String uphoto) {
        this.uphoto = uphoto == null ? null : uphoto.trim();
    }
}