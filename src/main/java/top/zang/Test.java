package top.zang;

import java.util.*;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Test {

    public static void main(String[] args){



        List<String> ss = new ArrayList<>();
        for(int n=0;n<100;n++){
            ss.add(""+100);
        }

        for(String s:ss){

            System.out.println(s.hashCode()%5);

        }






    }
}
