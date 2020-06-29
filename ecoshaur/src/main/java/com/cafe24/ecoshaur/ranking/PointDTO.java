package com.cafe24.ecoshaur.ranking;

public class PointDTO {
  private int no;
  private String id;
  private int point;
  private String date;

  public PointDTO() {
  }

public int getNo() {
	return no;
}

public void setNo(int no) {
	this.no = no;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public int getPoint() {
	return point;
}

public void setPoint(int point) {
	this.point = point;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

@Override
public String toString() {
	return "PointDTO [no=" + no + ", id=" + id + ", point=" + point + ", date=" + date + "]";
}



}
