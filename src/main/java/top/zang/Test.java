package top.zang;

import java.util.*;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Test {

    public static void main(String[] args){

        Random rd = new Random();
        int baidu = 0 ;
        int b58 = 0;
        int gaode = 0;
        int four = 0;
        int other = 0;
        for(int n=0;n<100000;n++){
            int tmp =rd.nextInt(5);
            if(tmp == 0){
                baidu++;
            }else if(tmp == 1){
                b58++;
            }else if(tmp == 2){
                gaode++;
            }else if(tmp == 3){
                four++;
            }else if(tmp == 4){
                other++;
            }

        }

        System.out.println("baidu = " + baidu);
        System.out.println("b58 = " + b58);
        System.out.println("gaode = " + gaode);
        System.out.println("four = " + four);
        System.out.println("other = " + other);








    }
}
