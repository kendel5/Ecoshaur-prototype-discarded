package com.cafe24.ecoshaur.home;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe24.ecoshaur.home.HomeDTO;
import net.utility.DBClose;
import net.utility.DBOpen;

@Component
public class HomeDAO {
    @Autowired
    private DBOpen dbopen;
    @Autowired
    private DBClose dbclose;

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    StringBuilder sql = null;
    ArrayList<HomeDTO> list = null;

    public HomeDTO read() {
      HomeDTO dto = new HomeDTO();
      try {
        con = dbopen.getConnection();
        sql = new StringBuilder();
        sql.append(" SELECT * FROM member ");

        pstmt = con.prepareStatement(sql.toString());
        rs = pstmt.executeQuery();
        String result = "";
        
        while (rs.next()) {
        result += "{";
        result += "\"id\":" + "\"" + rs.getString("id") + "\",";
        result += "},";        
        }
        if(result.length()>0) {
          result = result.substring(0,result.length()-1);        
        }
        
        System.out.println(result);
        
      } catch (Exception e) {
        System.out.println("db 실패: " + e);
      } finally {
        dbclose.close(con, pstmt, rs);
      }
      return dto;
    }// read() end
}
