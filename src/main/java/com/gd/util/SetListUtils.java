package com.gd.util;

import java.util.LinkedList;

/**
 * Created by gyl on 2018/1/26.
 */
public class SetListUtils<T> extends LinkedList<T> {
    private static final long serialVersionUID = 1434324234L;

    @Override
    public boolean add(T object) {
        if (size() == 0) {
            return super.add(object);
        } else {
            int count = 0;
            for (T t : this) {
                if (t.equals(object)) {
                    count++;
                    break;
                }
            }
            if (count == 0) {
                return super.add(object);
            } else {
                return false;
            }
        }
    }

    public static void main(String[] args) {
        /*List<Person> list = new SetListUtils<>();

        list.add(new Person(2, 20, "小红", "女"));
        list.add(new Person(2, 20, "小花", "女"));
        list.add(new Person(4, 20, "小辉", "未知"));
        list.add(new Person(2, 20, "小红", "女"));
        list.add(new Person(1, 20, "小明", "男"));
        //System.out.println(list);
        for(int i=0;i<list.size();i++){
            System.out.println(list.get(i).getName());
        }
*/
        /*String newString = String.format("%0"+6+"d", 1);
        System.out.println(newString);*/
        String f = "1111111";  //前10位，中心编码
        while(f.length()<10){
            f=f.concat("0");
        }
        System.out.println(f);
    }


}


