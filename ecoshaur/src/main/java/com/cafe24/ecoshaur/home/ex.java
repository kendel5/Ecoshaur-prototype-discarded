package com.cafe24.ecoshaur.home;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class ex {
  public static void main(String[] args) {
      HomeDTO hdto = new HomeDTO();
      
      Gson gson = new GsonBuilder().create();
      String json = gson.toJson(hdto);
              
      System.out.println(json);
  }
}

