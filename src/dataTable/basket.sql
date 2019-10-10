create table basket(
s_id VARCHAR2(20),
c_id VARCHAR2(20),
c_id_no NUMBER,
e_year NUMBER,
e_semester NUMBER,
CONSTRAINT basket_pk PRIMARY KEY(s_id, c_id, c_id_no),
CONSTRAINT basket_fk1 FOREIGN KEY(s_id) REFERENCES student(s_id),
CONSTRAINT basket_fk2 FOREIGN KEY(c_id, c_id_no) REFERENCES course(c_id, c_id_no));