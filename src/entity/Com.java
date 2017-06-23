package entity;

import Dao.dao;

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
public class Com extends humen{
    private String cno;
    private String cname;
    private String eno;
    private List<humen> list;

    @Id
    @Column(name = "Cno")
    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    @Basic
    @Column(name = "Cname")
    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Basic
    @Column(name = "Eno")
    public String getEno() {
        return eno;
    }

    public void setEno(String eno) {
        this.eno = eno;
    }




    @Override
    public List<Worker> select_info() {
        List<Worker> ll =new ArrayList<Worker>();
        dao d = new dao();
        list = d.findchild(this.getCno());
        for (int i = 0; i < list.size(); i++) {
            ll.addAll(list.get(i).select_info());
        }
       return ll;
    }
}

