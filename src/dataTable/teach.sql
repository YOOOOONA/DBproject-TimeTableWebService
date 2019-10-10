create table teach(
p_id VARCHAR2(20),
c_id VARCHAR2(20),
c_id_no NUMBER,
t_year NUMBER,
t_semester NUMBER,
t_time VARCHAR2(30),
t_where VARCHAR2(30),
t_max NUMBER,
CONSTRAINT teach_pk PRIMARY KEY(c_id, c_id_no),
CONSTRAINT teach_fk1 FOREIGN KEY(c_id, c_id_no) REFERENCES course(c_id, c_id_no),
CONSTRAINT teach_fk3 FOREIGN KEY(p_id) REFERENCES professor(p_id));


INSERT INTO teach VALUES('10000', '001001', 1, 2020, 1, '화목 1교시', '명신관501호', 50);
INSERT INTO teach VALUES('10001', '001001', 2, 2020, 1, '월수 1교시', '명신관501호', 50);
INSERT INTO teach VALUES('10000', '001002', 1, 2019, 1, '화목 2교시', '명신관502호', 50);
INSERT INTO teach VALUES('10001', '001003', 1, 2019, 2, '월수 2교시', '명신관502호', 50);
INSERT INTO teach VALUES('10001', '001004', 1, 2019, 2, '화목 3교시', '명신관503호', 50);
INSERT INTO teach VALUES('10002', '001004', 2, 2019, 2, '월수 3교시', '명신관503호', 50);
INSERT INTO teach VALUES('10000', '001005', 1, 2019, 2, '화목 4교시', '명신관503호', 50);
INSERT INTO teach VALUES('10002', '001005', 2, 2019, 2, '월수 4교시', '명신관504호', 50);
INSERT INTO teach VALUES('10002', '001006', 1, 2019, 2, '화목 5교시', '명신관504호', 50);
INSERT INTO teach VALUES('10000', '001006', 2, 2019, 2, '월수 5교시', '명신관505호', 50);
INSERT INTO teach VALUES('10002', '001007', 1, 2019, 2, '월수 3교시', '명신관505호', 50);
INSERT INTO teach VALUES('10001', '001007', 2, 2019, 2, '화목 3교시', '명신관506호', 50);

INSERT INTO teach VALUES('09000', '002001', 1, 2019, 2, '화목 1교시', '새빛관 101호', 50);
INSERT INTO teach VALUES('09001', '002001', 2, 2019, 2, '월수 1교시', '새빛관 101호', 50);
INSERT INTO teach VALUES('09002', '002001', 3, 2019, 2, '화목 2교시', '새빛관 101호', 50);
INSERT INTO teach VALUES('09000', '002002', 1, 2019, 2, '월수 3교시', '새빛관 102호', 50);
INSERT INTO teach VALUES('09001', '002002', 2, 2019, 2, '화목 3교시', '새빛관 102호', 50);
INSERT INTO teach VALUES('09002', '002002', 3, 2019, 2, '화목 4교시', '새빛관 102호', 50);
INSERT INTO teach VALUES('09000', '002003', 1, 2020, 1, '월수 5교시', '새빛관 103호', 50);
INSERT INTO teach VALUES('09001', '002003', 2, 2020, 1, '화목 5교시', '새빛관 103호', 50);
INSERT INTO teach VALUES('09000', '002004', 1, 2019, 2, '월수 2교시', '새빛관 104호', 50);
INSERT INTO teach VALUES('09001', '002005', 1, 2020, 1, '월수 6교시', '새빛관 105호', 50);
INSERT INTO teach VALUES('09000', '002006', 1, 2019, 2, '화목 6교시', '새빛관 106호', 50);
INSERT INTO teach VALUES('09001', '002007', 1, 2020, 1, '화목 2교시', '새빛관 107호', 50);
INSERT INTO teach VALUES('09000', '002008', 1, 2019, 2, '월수 1교시', '새빛관 108호', 50);
INSERT INTO teach VALUES('09002', '002009', 1, 2019, 2, '화목 5교시', '새빛관 109호', 50);

INSERT INTO teach VALUES('08030', '003001', 1, 2019, 2, '화목 1교시', '음대 202호', 50);
INSERT INTO teach VALUES('08010', '003001', 2, 2019, 2, '월수 1교시', '음대 202호', 50);
INSERT INTO teach VALUES('08030', '003002', 1, 2019, 2, '월수 2교시', '음대 203호', 50);
INSERT INTO teach VALUES('08010', '003002', 2, 2019, 2, '화목 2교시', '음대 203호', 50);
INSERT INTO teach VALUES('08030', '003003', 1, 2019, 2, '월수 3교시', '음대 204호', 50);
INSERT INTO teach VALUES('08010', '003004', 1, 2019, 2, '화목 3교시', '음대 205호', 50);
INSERT INTO teach VALUES('08030', '003005', 1, 2019, 2, '화목 4교시', '음대 206호', 50);
INSERT INTO teach VALUES('08010', '003005', 2, 2019, 2, '월수 4교시', '음대 206호', 50);
INSERT INTO teach VALUES('08030', '003006', 1, 2019, 2, '화목 5교시', '음대 207호', 50);
INSERT INTO teach VALUES('08020', '003007', 1, 2020, 1, '월수 5교시', '음대 208호', 50);
INSERT INTO teach VALUES('08020', '003008', 1, 2020, 1, '월수 6교시', '음대 209호', 50);
INSERT INTO teach VALUES('08030', '003009', 1, 2019, 2, '화목 6교시', '음대 210호', 50);
INSERT INTO teach VALUES('08020', '003010', 1, 2019, 2, '월수 7교시', '음대 211호', 50);

INSERT INTO teach VALUES('11011', '004001', 1, 2019, 2, '월수 2교시', '명신관 401호', 50);
INSERT INTO teach VALUES('11012', '004001', 2, 2019, 2, '화목 2교시', '명신관 401호', 50);
INSERT INTO teach VALUES('11011', '004002', 1, 2019, 2, '월수 3교시', '명신관 402호', 50);
INSERT INTO teach VALUES('11012', '004002', 2, 2019, 2, '화목 3교시', '명신관 402호', 50);
INSERT INTO teach VALUES('11012', '004003', 1, 2019, 2, '월수 4교시', '명신관 403호', 50);
INSERT INTO teach VALUES('11013', '004003', 2, 2019, 2, '화목 4교시', '명신관 403호', 50);
INSERT INTO teach VALUES('11012', '004004', 1, 2019, 2, '월수 5교시', '명신관 404호', 50);
INSERT INTO teach VALUES('11011', '004005', 1, 2019, 2, '화목 5교시', '명신관 405호', 50);
INSERT INTO teach VALUES('11013', '004006', 1, 2019, 2, '월수 6교시', '명신관 406호', 50);
INSERT INTO teach VALUES('11013', '004006', 2, 2020, 1, '화목 6교시', '명신관 406호', 50);
INSERT INTO teach VALUES('11011', '004007', 1, 2020, 1, '월수 7교시', '명신관 407호', 50);

INSERT INTO teach VALUES('12001', '005001', 1, 2020, 1, '월수 3교시', '명신관 310호', 50);
INSERT INTO teach VALUES('12002', '005001', 2, 2020, 1, '화목 3교시', '명신관 310호', 50);
INSERT INTO teach VALUES('12001', '005002', 1, 2019, 2, '월수 4교시', '명신관 311호', 50);
INSERT INTO teach VALUES('12001', '005003', 1, 2019, 2, '화목 4교시', '명신관 312호', 50);
INSERT INTO teach VALUES('12002', '005004', 1, 2019, 2, '월수 5교시', '명신관 313호', 50);
INSERT INTO teach VALUES('12003', '005004', 2, 2019, 2, '화목 5교시', '명신관 313호', 50);
INSERT INTO teach VALUES('12001', '005005', 1, 2019, 2, '월수 6교시', '명신관 314호', 50);
INSERT INTO teach VALUES('12002', '005006', 1, 2019, 2, '화목 6교시', '명신관 315호', 50);
INSERT INTO teach VALUES('12003', '005006', 2, 2019, 2, '월수 7교시', '명신관 315호', 50);
INSERT INTO teach VALUES('12003', '005006', 3, 2019, 2, '화목 7교시', '명신관 315호', 50);
INSERT INTO teach VALUES('12001', '005007', 1, 2019, 2, '월수 8교시', '명신관 316호', 50);
INSERT INTO teach VALUES('12002', '005007', 2, 2019, 2, '화목 8교시', '명신관 316호', 50);

INSERT INTO teach VALUES('14016', '006001', 1, 2020, 1, '월수 4교시', '명신관 301호', 50);
INSERT INTO teach VALUES('14017', '006001', 2, 2020, 1, '화목 4교시', '명신관 301호', 50);
INSERT INTO teach VALUES('14016', '006002', 1, 2020, 1, '월수 5교시', '명신관 302호', 50);
INSERT INTO teach VALUES('14017', '006002', 2, 2020, 1, '월수 6교시', '명신관 302호', 50);
INSERT INTO teach VALUES('14016', '006003', 1, 2019, 2, '화목 6교시', '명신관 303호', 50);
INSERT INTO teach VALUES('14018', '006004', 1, 2019, 2, '월수 7교시', '명신관 304호', 50);
INSERT INTO teach VALUES('14018', '006005', 1, 2019, 2, '화목 7교시', '명신관 305호', 50);
INSERT INTO teach VALUES('14016', '006006', 1, 2019, 2, '금 3교시', '명신관 306호', 50);
INSERT INTO teach VALUES('14017', '006007', 1, 2019, 2, '금 4교시', '명신관 306호', 50);