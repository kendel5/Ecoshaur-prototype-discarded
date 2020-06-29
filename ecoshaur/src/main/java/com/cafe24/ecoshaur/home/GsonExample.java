package com.cafe24.ecoshaur.home;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

public class GsonExample {
  class JsonExample {
    @SerializedName("Data1")
    private int data1;

    @SerializedName("Data2")
    private String data2;

    public int getData1() {
      return data1;
    }

    public void setData1(int data1) {
      this.data1 = data1;
    }

    public String getData2() {
      return data2;
    }

    public void setData2(String data2) {
      this.data2 = data2;
    }

  }

  public static void main(String[] args) {
    // Json 형식의 데이터
    String json = "{ \"Data1\": 1, \"Data2\":\"TEST\" }";
    // Json 형식의 String 값을 JsonExmple 형식으로 변환
    Gson gson = new Gson();
    JsonExample obj = gson.fromJson(json, JsonExample.class);
    System.out.println(obj.data1);
    System.out.println(obj.data2);

    obj.setData1(10);
    obj.setData2("Hello world");
    json = gson.toJson(obj);
    System.out.println(json);
  }
}
