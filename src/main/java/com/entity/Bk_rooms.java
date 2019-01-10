package com.entity;

import java.math.BigDecimal;
import java.util.Date;

public class Bk_rooms {
    private Integer rid;

    private String rname;

    private String rdescribe;

    private String rinstructions;

    private BigDecimal rprice;

    private Integer rnumber;

    private String rstay;

    private Date rstaydate;

    private Date rcheckdate;

    private Integer hoid;

    private String rbedtype;
    
    private Integer rcheckin;

    private Integer sum;     //空房间的总数 
    
    public Integer getRcheckin() {
		return rcheckin;
	}

	public void setRcheckin(Integer rcheckin) {
		this.rcheckin = rcheckin;
	}

	public Integer getSum() {
		return sum;
	}

	public void setSum(Integer sum) {
		this.sum = sum;
	}
    
    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname == null ? null : rname.trim();
    }

    public String getRdescribe() {
        return rdescribe;
    }

    public void setRdescribe(String rdescribe) {
        this.rdescribe = rdescribe == null ? null : rdescribe.trim();
    }

    public String getRinstructions() {
        return rinstructions;
    }

    public void setRinstructions(String rinstructions) {
        this.rinstructions = rinstructions == null ? null : rinstructions.trim();
    }

    public BigDecimal getRprice() {
        return rprice;
    }

    public void setRprice(BigDecimal rprice) {
        this.rprice = rprice;
    }

    public Integer getRnumber() {
        return rnumber;
    }

    public void setRnumber(Integer rnumber) {
        this.rnumber = rnumber;
    }

    public String getRstay() {
        return rstay;
    }

    public void setRstay(String rstay) {
        this.rstay = rstay == null ? null : rstay.trim();
    }

    public Date getRstaydate() {
        return rstaydate;
    }

    public void setRstaydate(Date rstaydate) {
        this.rstaydate = rstaydate;
    }

    public Date getRcheckdate() {
        return rcheckdate;
    }

    public void setRcheckdate(Date rcheckdate) {
        this.rcheckdate = rcheckdate;
    }

    public Integer getHoid() {
        return hoid;
    }

    public void setHoid(Integer hoid) {
        this.hoid = hoid;
    }

    public String getRbedtype() {
        return rbedtype;
    }

    public void setRbedtype(String rbedtype) {
        this.rbedtype = rbedtype == null ? null : rbedtype.trim();
    }
}