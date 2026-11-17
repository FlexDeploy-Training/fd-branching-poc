CREATE TABLE orders (
  order_id    NUMBER PRIMARY KEY,
  customer_id NUMBER NOT NULL,
  region_code VARCHAR2(10),
  created_on  DATE DEFAULT SYSDATE
);
