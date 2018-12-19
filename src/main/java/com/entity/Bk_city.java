package com.entity;

public class Bk_city {
    private Integer ciid;

    private Integer pid;

    private String ciname;

    private String ciictures;

    public Integer getCiid() {
        return ciid;
    }

    public void setCiid(Integer ciid) {
        this.ciid = ciid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getCiname() {
        return ciname;
    }

    public void setCiname(String ciname) {
        this.ciname = ciname == null ? null : ciname.trim();
    }

    public String getCiictures() {
        return ciictures;
    }

    public void setCiictures(String ciictures) {
        this.ciictures = ciictures == null ? null : ciictures.trim();
    }
}