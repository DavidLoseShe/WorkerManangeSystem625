package entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by d on 2017/6/11.
 */
@Entity
public class Worker extends humen{
    private String wno;
    private String wname;
    private String wsex;
    private Integer wold;
    private String waddress;
    private String wschool;
    private String cno;

    @Id
    @Column(name = "Wno")
    public String getWno() {
        return wno;
    }

    public void setWno(String wno) {
        this.wno = wno;
    }

    @Basic
    @Column(name = "Wname")
    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname;
    }

    @Basic
    @Column(name = "Wsex")
    public String getWsex() {
        return wsex;
    }

    public void setWsex(String wsex) {
        this.wsex = wsex;
    }

    @Basic
    @Column(name = "Wold")
    public Integer getWold() {
        return wold;
    }

    public void setWold(Integer wold) {
        this.wold = wold;
    }

    @Basic
    @Column(name = "Waddress")
    public String getWaddress() {
        return waddress;
    }

    public void setWaddress(String waddress) {
        this.waddress = waddress;
    }

    @Basic
    @Column(name = "Wschool")
    public String getWschool() {
        return wschool;
    }

    public void setWschool(String wschool) {
        this.wschool = wschool;
    }

    @Basic
    @Column(name = "Cno")
    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    @Override
    public List<Worker> select_info() {
      List<Worker> ll=new ArrayList<Worker>();
       ll.add(this);
        return ll;
    }
}
