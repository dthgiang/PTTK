package sample.demo2;

public class FormDP {
    String maphieu, trangthai, dkvanchuyenhanhly, yeucaudacbiet, ngaylap, madaily, makhachhang, nhanvienxuly;

    public FormDP() {};
    public FormDP (String maphieu,String trangthai,String dkvanchuyenhanhly,String yeucaudacbiet,String ngaylap,String madaily,String makhachhang,String nhanvienxuly)
    {
        this.maphieu=maphieu;
        this.trangthai=trangthai;
        this.dkvanchuyenhanhly=dkvanchuyenhanhly;
        this.yeucaudacbiet=yeucaudacbiet;
        this.ngaylap=ngaylap;
        this.madaily=madaily;
        this.makhachhang=makhachhang;
        this.nhanvienxuly=nhanvienxuly;
    }
    public String getMaphieu(){
        return maphieu;
    }
    public String getTrangthai(){
        return trangthai;
    }
    public String getDkvanchuyenhanhly(){
        return dkvanchuyenhanhly;
    }
    public String getYeucaudacbiet(){
        return yeucaudacbiet;
    }
    public String getNgaylap(){
        return ngaylap;
    }
    public String getMadaily(){
        return madaily;
    }
    public String getMakhachhang(){
        return makhachhang;
    }
    public String getNhanvienxuly(){
        return nhanvienxuly;
    }
}
