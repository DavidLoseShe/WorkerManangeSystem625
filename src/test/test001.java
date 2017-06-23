package test;

import entity.Com;
import entity.Worker;

import java.util.List;

/**
 * Created by d on 2017/6/11.
 */
public class test001 {
    public static void main(String arg[]){
        List<Worker> list;

        Com comService = new Com();

        comService.setCno("A");

        list=comService.select_info();

         for (int i =0;i<list.size();i++){
             System.out.print(list.get(i).getWname());
         }
    }
}
