package com.cafe24.ecoshaur.payment;

public class OrderDTO {

		private int order_no;
		private int payment_price;
		private String id;
		private String recipient;
		private String delivery_method;
		private String address;
		private String address_R;
		private String tel;

		public OrderDTO() { }
		
    public OrderDTO(int order_no, int payment_price, String id, String recipient, String delivery_method,
        String address, String address_R, String tel) {
      this.order_no = order_no;
      this.payment_price = payment_price;
      this.id = id;
      this.recipient = recipient;
      this.delivery_method = delivery_method;
      this.address = address;
      this.address_R = address_R;
      this.tel = tel;
    }

    public int getOrder_no() {
			return order_no;
		}
		public void setOrder_no(int order_no) {
			this.order_no = order_no;
		}
		public int getPayment_price() {
			return payment_price;
		}
		public void setPayment_price(int payment_price) {
			this.payment_price = payment_price;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getRecipient() {
			return recipient;
		}
		public void setRecipient(String recipient) {
			this.recipient = recipient;
		}
		public String getDelivery_method() {
			return delivery_method;
		}
		public void setDelivery_method(String delivery_method) {
			this.delivery_method = delivery_method;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getAddress_R() {
			return address_R;
		}
		public void setAddress_R(String address_R) {
			this.address_R = address_R;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		
}
