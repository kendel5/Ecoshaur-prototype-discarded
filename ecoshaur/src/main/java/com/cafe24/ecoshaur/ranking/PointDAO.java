package com.cafe24.ecoshaur.ranking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.utility.DBClose;
import net.utility.DBOpen;

@Component
public class PointDAO {
    @Autowired
    private DBOpen dbopen;
    @Autowired
    private DBClose dbclose;

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    StringBuilder sql = null;
    ArrayList<PointDTO> list = null;

    public PointDAO() { }

    public synchronized ArrayList<PointDTO> list(){ //싱크로로 하면 문제 발생시 os로 신속히 처리 가능.
  	  ArrayList<PointDTO> list=null;
  	  try {
  		  con=dbopen.getConnection();
  	      sql=new StringBuilder();
  	      sql.append(" SELECT no, id, point, date ");
  	      sql.append(" FROM point ");
  	      sql.append(" ORDER BY rpoint ASC ");
  	      pstmt=con.prepareStatement(sql.toString());
  	      rs=pstmt.executeQuery();
  	      if(rs.next()){
  	    	  list=new ArrayList<>();
  	    	  do {
  	    		  PointDTO dto=new PointDTO();
  			        dto=new PointDTO();
  			        dto.setNo(rs.getInt("no"));
  		            dto.setId(rs.getString("id"));
  		            dto.setPoint(rs.getInt("point"));
  		            dto.setDate(rs.getString("date"));
  				      
  			        list.add(dto);
  	      }while(rs.next());
  	      }else {
  	    	  list=null;
  	      }//if end
  	  }catch (Exception e) {
  	      System.out.println("목록 불러오기 실패: "+e);
  	    }finally {
  	      DBClose.close(con, pstmt, rs);
  	    }//try end
  	    return list;
    }//list end
}
