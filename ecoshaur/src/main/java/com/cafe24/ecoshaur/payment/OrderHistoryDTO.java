package com.cafe24.ecoshaur.payment;

public class OrderHistoryDTO {

	private String order_detail_no;
	private int order_no;
	private String product_no;
	private int quantity;
	private int total_price;
	private String payment;
	private String credit_card;
	private String card_num;
	private String payment_date;
	private char Order_condition;
	
	public OrderHistoryDTO() { }
	
  public OrderHistoryDTO(String order_detail_no, int order_no, String product_no, int quantity, int total_price,
      String payment, String credit_card, String card_num, String payment_date, char order_condition) {
    this.order_detail_no = order_detail_no;
    this.order_no = order_no;
    this.product_no = product_no;
    this.quantity = quantity;
    this.total_price = total_price;
    this.payment = payment;
    this.credit_card = credit_card;
    this.card_num = card_num;
    this.payment_date = payment_date;
    Order_condition = order_condition;
  }

  public String getOrder_detail_no() {
		return order_detail_no;
	}
	public void setOrder_detail_no(String order_detail_no) {
		this.order_detail_no = order_detail_no;
	}
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal_price() {
		return total_price;
	}
	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getCredit_card() {
		return credit_card;
	}
	public void setCredit_card(String credit_card) {
		this.credit_card = credit_card;
	}
	public String getCard_num() {
		return card_num;
	}
	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public char getOrder_condition() {
		return Order_condition;
	}
	public void setOrder_condition(char order_condition) {
		Order_condition = order_condition;
	}
	
}
