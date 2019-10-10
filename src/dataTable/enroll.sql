create table enroll(
s_id VARCHAR2(10),
c_id VARCHAR2(20),
c_id_no NUMBER,
e_year NUMBER,
e_semester NUMBER,
CONSTRAINT enroll_pk PRIMARY KEY(s_id, c_id, c_id_no),
CONSTRAINT enroll_fk1 FOREIGN KEY(s_id) REFERENCES student(s_id),
CONSTRAINT enroll_fk2 FOREIGN KEY(c_id, c_id_no) REFERENCES course(c_id, c_id_no));

INSERT INTO enroll VALUES('1400000', '006001', 1, 2020, 1);