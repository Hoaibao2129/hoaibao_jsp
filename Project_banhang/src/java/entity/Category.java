/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author trinh
 */
public class Category {
    private int cid;
    private String cname;
    private int MALOAISP;
    public Category() {
    }

    public Category(int cid, String cname , int MALOAISP) {
        this.cid = cid;
        this.cname = cname;
        this.MALOAISP = MALOAISP;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getMALOAISP() {
        return MALOAISP;
    }

    public void setMALOAISP(int MALOAISP) {
        this.MALOAISP = MALOAISP;
    }

    @Override
    public String toString() {
        return "Category{" + "cid=" + cid + ", cname=" + cname + ", MALOAISP=" + MALOAISP + '}';
    }

    
}
