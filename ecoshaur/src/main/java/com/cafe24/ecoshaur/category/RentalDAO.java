package com.cafe24.ecoshaur.category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe24.ecoshaur.category.RentalDTO;

import net.utility.DBClose;
import net.utility.DBOpen;

@Component



public class RentalDAO {
    @Autowired
    private DBOpen dbopen;
    @Autowired
    private DBClose dbclose;

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    StringBuilder sql = null;
    ArrayList<RentalDTO> list = null;

    public RentalDAO() { }

  //목록
    public ArrayList<RentalDTO> list() {
      try {
        RentalDTO dto = new RentalDTO();
        con = dbopen.getConnection();
        sql = new StringBuilder();
        sql.append(" SELECT product_no, title, sub_title, price_daily, deposit, total_quantity, remaining_quantity, thmb_name, id ");
        sql.append(" FROM RENTAL_LIST ");
        sql.append(" WHERE availability='Y' ");
        sql.append(" ORDER BY product_no DESC ");
        pstmt = con.prepareStatement(sql.toString());
        rs = pstmt.executeQuery();
        if (rs.next()) {
          list = new ArrayList<RentalDTO>();
          do {
            dto = new RentalDTO();
            dto.setProduct_no(rs.getString("product_no").trim());
            dto.setTitle(rs.getString("title").trim());
            dto.setSub_title(rs.getString("sub_title").trim());
            dto.setPrice_daily(rs.getString("price_daily").trim());
            dto.setDeposit(rs.getInt("deposit"));
            dto.setTotal_quantity(rs.getInt("total_quantity"));
            dto.setRemaining_quantity(rs.getInt("remaining_quantity"));
            dto.setThmb_name(rs.getString("thmb_name").trim());
            dto.setId(rs.getString("id").trim());
            list.add(dto);
          } while (rs.next());
        } else {
          list = null;
        } // if end

      } catch (Exception e) {
        System.out.println("Category목록 실패:" + e);
      } finally {
        DBClose.close(con, pstmt, rs);
      }
      return list;
    }// list() end
    
  //세부목록
    public ArrayList<RentalDTO> listDT(String category) {
      try {
        RentalDTO dto = new RentalDTO();
        con = dbopen.getConnection();
        sql = new StringBuilder();
        sql.append(" SELECT product_no, title, sub_title, price_daily, deposit, total_quantity, remaining_quantity, thmb_name, id ");
        sql.append(" FROM RENTAL_LIST ");
        if(category.equals("컴퓨터"))
          sql.append(" WHERE availability='Y' and Product_name = '컴퓨터' ");
        else if(category.equals("TV/영상가전"))
          sql.append(" WHERE availability='Y' and Product_name = 'TV/영상가전' ");
        else if(category.equals("음향기기"))
          sql.append(" WHERE availability='Y' and Product_name = '음향기기' ");
        else if(category.equals("콘솔/게이밍"))
          sql.append(" WHERE availability='Y' and Product_name = '콘솔/게이밍' ");
        else
          sql.append(" WHERE availability='Y' and Product_name = '카메라' ");
        sql.append(" ORDER BY product_no DESC ");
        pstmt = con.prepareStatement(sql.toString());
        rs = pstmt.executeQuery();
        if (rs.next()) {
          list = new ArrayList<RentalDTO>();
          do {
            dto = new RentalDTO();
            dto.setProduct_no(rs.getString("product_no").trim());
            dto.setTitle(rs.getString("title").trim());
            dto.setSub_title(rs.getString("sub_title").trim());
            dto.setPrice_daily(rs.getString("price_daily").trim());
            dto.setDeposit(rs.getInt("deposit"));
            dto.setTotal_quantity(rs.getInt("total_quantity"));
            dto.setRemaining_quantity(rs.getInt("remaining_quantity"));
            dto.setThmb_name(rs.getString("thmb_name").trim());
            dto.setId(rs.getString("id").trim());
            list.add(dto);
          } while (rs.next());
        } else {
          list = null;
        } // if end

      } catch (Exception e) {
        System.out.println("Category세부목록 실패:" + e);
      } finally {
        DBClose.close(con, pstmt, rs);
      }
      return list;
    }// listDT() end
}
