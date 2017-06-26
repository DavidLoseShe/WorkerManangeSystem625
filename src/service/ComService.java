package service;

import Dao.dao;
import com.opensymphony.xwork2.ActionSupport;
import entity.Com;
import entity.Worker;

import java.util.List;

/**
 * Created by d on 2017/6/11.
 */
public class ComService extends ActionSupport {
    String username;
    List<Worker> list;
    List<Com> comList;

    public List<Com> getComList() {
        return comList;
    }

    public void setComList(List<Com> comList) {
        this.comList = comList;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    public List<Worker> getList() {
        return list;
    }

    public void setList(List<Worker> list) {
        this.list = list;
    }

    public String Add() {

        System.out.println(username);
        Com comService = new Com();

        comService.setCno(username);

        list = comService.select_info();
        dao dd = new dao();
        comList= dd.comList();
        for (int i = 0; i < list.size(); i++) {
            System.out.print(list.get(i).getWname());

        }
        if(list!=null)
            return "1";
        else return "0";
    }
    public String cominfo(){

        dao d = new dao();
        comList= d.comList();
        for(Com com:comList) {

            System.out.println( com.getCname());
        }
        return "3";
    }

}

