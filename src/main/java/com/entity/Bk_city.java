package com.entity;

public class Bk_city {
    private Integer ciid;

    private Integer pid;

    private String ciname;

    private String ciictures;
    
    private Integer arid;     //新增辅助字段，数据库该表没有该字段
    
    
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