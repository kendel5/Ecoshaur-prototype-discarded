package com.cafe24.ecoshaur.ranking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.cafe24.ecoshaur.ranking.PointDTO;
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

    public ArrayList<PointDTO> list(){ 
  	  try {
  		  PointDTO dto = new PointDTO();
  		  con=dbopen.getConnection();
  	      sql=new StringBuilder();
  	      sql.append(" SELECT no, id, point, date ");
  	      sql.append(" FROM point ");
  	      sql.append(" ORDER BY point ASC ");
  	      pstmt=con.prepareStatement(sql.toString());
  	      rs=pstmt.executeQuery();
  	      if(rs.next()){
  	    	  list=new ArrayList<PointDTO>();
  	    	  do {
  	    		  	dto=new PointDTO();
  			        dto.setNo(rs.getInt("no"));
  		            dto.setId(rs.getString("id").trim());
  		            dto.setPoint(rs.getInt("point"));
  		            dto.setDate(rs.getString("date").trim());
  			        list.add(dto);
  	    	  	}while(rs.next());
  	      }else {
  	    	  list=null;
  	      }//if end
  	  }catch (Exception e) {
  	      System.out.println("목록 불러오기 실패:"+e);
  	  }finally {
  	    DBClose.close(con, pstmt, rs);
  	  }//try end
  	  return list;
    }//list end
}
