package com.cafe24.ecoshaur.community;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cafe24.ecoshaur.community.NoticeDTO;
import net.utility.DBClose;
import net.utility.DBOpen;

@Component
public class NoticeDAO {
    @Autowired
    private DBOpen dbopen;
    @Autowired
    private DBClose dbclose;

    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    StringBuilder sql = null;
    ArrayList<NoticeDTO> list = null;
     
    NoticeDTO dto = null;

    public NoticeDAO() { }

    public ArrayList<NoticeDTO> list(){
      try{
        con = dbopen.getConnection();
        sql = new StringBuilder();
        sql.append(" SELECT postno, head, title, contents, image_name, image_size, post_date, view ");
        sql.append(" FROM notice");       
        sql.append(" ORDER BY postno DESC");
        
        pstmt = con.prepareStatement(sql.toString());
        rs = pstmt.executeQuery();
        if(rs.next()){
          list = new ArrayList<NoticeDTO>();
          do {
            dto = new NoticeDTO();
            dto.setPostno(rs.getInt("postno"));
            dto.setHead(rs.getString("head"));
            dto.setTitle(rs.getString("title"));
            dto.setPost_date(rs.getString("post_date"));
            dto.setView(rs.getInt("view"));
            list.add(dto);
          } while(rs.next());
        }else{
          list = null;
        }//if end

      }catch(Exception e){
         System.out.println("공지사항 목록 실패:"+e);
      }finally{
         DBClose.close(con, pstmt, rs);
      }//end
      return list;
    }//list() end
    
    public NoticeDTO read(int postno){
      try{
        con = dbopen.getConnection();
        sql = new StringBuilder();
        sql.append(" SELECT postno, head, title, contents, image_name, image_size, post_date, view ");
        sql.append(" FROM notice");       
        sql.append(" WHERE postno = ?");       
        
        pstmt = con.prepareStatement(sql.toString());
        pstmt.setInt(1, postno);
        rs = pstmt.executeQuery();
        if(rs.next()){
            dto = new NoticeDTO();
            dto.setPostno(rs.getInt("postno"));
            dto.setHead(rs.getString("head"));
            dto.setTitle(rs.getString("title"));
            dto.setContents(rs.getString("contents"));
            dto.setImage_name(rs.getString("image_name"));
            dto.setImage_size(rs.getLong("image_size"));
            dto.setPost_date(rs.getString("post_date"));
            dto.setView(rs.getInt("view"));
        }
      }catch(Exception e){
         System.out.println("공지사항 보기 실패:"+e);
      }finally{
         DBClose.close(con, pstmt, rs);
      }//end
      return dto;
    }//list() end    
}
