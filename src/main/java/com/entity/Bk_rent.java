package com.entity;

public class Bk_rent {
    private Integer reid;

    private String recontact;

    private String repassword;

    private String reemail;

    private String rerentname;

    private String rephone;

    private String readdress;

    private Integer recode;

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public String getRecontact() {
        return recontact;
    }

    public void setRecontact(String recontact) {
        this.recontact = recontact == null ? null : recontact.trim();
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword == null ? null : repassword.trim();
    }

    public String getReemail() {
        return reemail;
    }

    public void setReemail(String reemail) {
        this.reemail = reemail == null ? null : reemail.trim();
    }

    public String getRerentname() {
        return rerentname;
    }

    public void setRerentname(String rerentname) {
        this.rerentname = rerentname == null ? null : rerentname.trim();
    }

    public String getRephone() {
        return rephone;
    }

    public void setRephone(String rephone) {
        this.rephone = rephone;
    }

    public String getReaddress() {
        return readdress;
    }

    public void setReaddress(String readdress) {
        this.readdress = readdress == null ? null : readdress.trim();
    }

    public Integer getRecode() {
        return recode;
    }

    public void setRecode(Integer recode) {
        this.recode = recode;
    }
}