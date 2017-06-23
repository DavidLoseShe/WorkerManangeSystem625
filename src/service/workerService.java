package service;

import Dao.dao;
import entity.Com;
import entity.Worker;

/**
 * Created by d on 2017/6/11.
 */
public class workerService extends Com{
        String Wno;
        Worker worker;

    public Worker getWorker() {
        return worker;
    }

    public void setWorker(Worker worker) {
        this.worker = worker;
    }

    public String getWno() {
        return Wno;
    }

    public void setWno(String wno) {
        Wno = wno;
    }
    public String info_action(){
        System.out.println(Wno+789);
        dao d = new dao();
        worker=d.info(Wno);
      return "1";
    }
}
