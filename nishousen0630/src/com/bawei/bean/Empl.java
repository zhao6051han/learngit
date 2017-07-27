package com.bawei.bean;

import java.util.Date;

public class Empl {
    private Integer id;

    private String ename;

    private Date sdate;

    private Date edate;

    private String econtext;

    private String dname;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename == null ? null : ename.trim();
    }

    public Date getSdate() {
        return sdate;
    }

    public void setSdate(Date sdate) {
        this.sdate = sdate;
    }

    public Date getEdate() {
        return edate;
    }

    public void setEdate(Date edate) {
        this.edate = edate;
    }

    public String getEcontext() {
        return econtext;
    }

    public void setEcontext(String econtext) {
        this.econtext = econtext == null ? null : econtext.trim();
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname == null ? null : dname.trim();
    }
}