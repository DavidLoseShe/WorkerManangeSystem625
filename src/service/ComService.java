package service;

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

        for (int i = 0; i < list.size(); i++) {
            System.out.print(list.get(i).getWname());

        }
        if(list!=null)
        return "1";
        else return "0";
    }

}
