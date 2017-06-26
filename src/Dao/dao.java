package Dao;

import entity.Com;
import entity.Worker;
import entity.humen;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

/**
 * Created by d on 2017/6/11.
 */
public class dao {
    public  List<humen> findchild(String no){
       List<humen> arrayList ;
        String hql ="from Com where Eno=?1";
        String hql2="from Worker where Cno=?1";
        Session session = Main.getSession();
        Query query1 = session.createQuery(hql);
        Query query2 = session.createQuery(hql2);
        query1.setParameter(1, no);
        query2.setParameter(1, no);
        arrayList = query1.list();
        List list = query2.list();
        arrayList.addAll(list);
        session.close();
        return  arrayList;
    }
    public Worker info(String wno){
        Worker worker=null;
        String hql = "from Worker where Wno=?1";
        Session session = Main.getSession();
        Query query =session.createQuery(hql);
        query.setParameter(1, wno);
        List<Worker> list =query.list();
        for(Worker worker1:list){
              worker=worker1;
        }
        return  worker;
    }
    public List<Com> comList(){
        List<Com> coms = null;
        String hql = "from Com";
        Session session = Main.getSession();
        Query query =session.createQuery(hql);
        coms =query.list();
        return coms;

    }
    public void inserWorker(Worker worker){

    }

}
