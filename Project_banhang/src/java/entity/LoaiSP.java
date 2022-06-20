/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author ASUS
 */
public class LoaiSP {
    private int maloaiSP;
    private String tenLoaiSP;

    public LoaiSP(int maloaiSP, String tenLoaiSP) {
        this.maloaiSP = maloaiSP;
        this.tenLoaiSP = tenLoaiSP;
    }

    public int getMaloaiSP() {
        return maloaiSP;
    }

    public void setMaloaiSP(int maloaiSP) {
        this.maloaiSP = maloaiSP;
    }

    public String getTenLoaiSP() {
        return tenLoaiSP;
    }

    public void setTenLoaiSP(String tenLoaiSP) {
        this.tenLoaiSP = tenLoaiSP;
    }

    @Override
    public String toString() {
        return "LoaiSP{" + "maloaiSP=" + maloaiSP + ", tenLoaiSP=" + tenLoaiSP + '}';
    }
    
    
}
