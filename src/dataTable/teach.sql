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


INSERT INTO teach VALUES('10000', '001001', 1, 2020, 1, 'ȭ�� 1����', '��Ű�501ȣ', 50);
INSERT INTO teach VALUES('10001', '001001', 2, 2020, 1, '���� 1����', '��Ű�501ȣ', 50);
INSERT INTO teach VALUES('10000', '001002', 1, 2019, 1, 'ȭ�� 2����', '��Ű�502ȣ', 50);
INSERT INTO teach VALUES('10001', '001003', 1, 2019, 2, '���� 2����', '��Ű�502ȣ', 50);
INSERT INTO teach VALUES('10001', '001004', 1, 2019, 2, 'ȭ�� 3����', '��Ű�503ȣ', 50);
INSERT INTO teach VALUES('10002', '001004', 2, 2019, 2, '���� 3����', '��Ű�503ȣ', 50);
INSERT INTO teach VALUES('10000', '001005', 1, 2019, 2, 'ȭ�� 4����', '��Ű�503ȣ', 50);
INSERT INTO teach VALUES('10002', '001005', 2, 2019, 2, '���� 4����', '��Ű�504ȣ', 50);
INSERT INTO teach VALUES('10002', '001006', 1, 2019, 2, 'ȭ�� 5����', '��Ű�504ȣ', 50);
INSERT INTO teach VALUES('10000', '001006', 2, 2019, 2, '���� 5����', '��Ű�505ȣ', 50);
INSERT INTO teach VALUES('10002', '001007', 1, 2019, 2, '���� 3����', '��Ű�505ȣ', 50);
INSERT INTO teach VALUES('10001', '001007', 2, 2019, 2, 'ȭ�� 3����', '��Ű�506ȣ', 50);

INSERT INTO teach VALUES('09000', '002001', 1, 2019, 2, 'ȭ�� 1����', '������ 101ȣ', 50);
INSERT INTO teach VALUES('09001', '002001', 2, 2019, 2, '���� 1����', '������ 101ȣ', 50);
INSERT INTO teach VALUES('09002', '002001', 3, 2019, 2, 'ȭ�� 2����', '������ 101ȣ', 50);
INSERT INTO teach VALUES('09000', '002002', 1, 2019, 2, '���� 3����', '������ 102ȣ', 50);
INSERT INTO teach VALUES('09001', '002002', 2, 2019, 2, 'ȭ�� 3����', '������ 102ȣ', 50);
INSERT INTO teach VALUES('09002', '002002', 3, 2019, 2, 'ȭ�� 4����', '������ 102ȣ', 50);
INSERT INTO teach VALUES('09000', '002003', 1, 2020, 1, '���� 5����', '������ 103ȣ', 50);
INSERT INTO teach VALUES('09001', '002003', 2, 2020, 1, 'ȭ�� 5����', '������ 103ȣ', 50);
INSERT INTO teach VALUES('09000', '002004', 1, 2019, 2, '���� 2����', '������ 104ȣ', 50);
INSERT INTO teach VALUES('09001', '002005', 1, 2020, 1, '���� 6����', '������ 105ȣ', 50);
INSERT INTO teach VALUES('09000', '002006', 1, 2019, 2, 'ȭ�� 6����', '������ 106ȣ', 50);
INSERT INTO teach VALUES('09001', '002007', 1, 2020, 1, 'ȭ�� 2����', '������ 107ȣ', 50);
INSERT INTO teach VALUES('09000', '002008', 1, 2019, 2, '���� 1����', '������ 108ȣ', 50);
INSERT INTO teach VALUES('09002', '002009', 1, 2019, 2, 'ȭ�� 5����', '������ 109ȣ', 50);

INSERT INTO teach VALUES('08030', '003001', 1, 2019, 2, 'ȭ�� 1����', '���� 202ȣ', 50);
INSERT INTO teach VALUES('08010', '003001', 2, 2019, 2, '���� 1����', '���� 202ȣ', 50);
INSERT INTO teach VALUES('08030', '003002', 1, 2019, 2, '���� 2����', '���� 203ȣ', 50);
INSERT INTO teach VALUES('08010', '003002', 2, 2019, 2, 'ȭ�� 2����', '���� 203ȣ', 50);
INSERT INTO teach VALUES('08030', '003003', 1, 2019, 2, '���� 3����', '���� 204ȣ', 50);
INSERT INTO teach VALUES('08010', '003004', 1, 2019, 2, 'ȭ�� 3����', '���� 205ȣ', 50);
INSERT INTO teach VALUES('08030', '003005', 1, 2019, 2, 'ȭ�� 4����', '���� 206ȣ', 50);
INSERT INTO teach VALUES('08010', '003005', 2, 2019, 2, '���� 4����', '���� 206ȣ', 50);
INSERT INTO teach VALUES('08030', '003006', 1, 2019, 2, 'ȭ�� 5����', '���� 207ȣ', 50);
INSERT INTO teach VALUES('08020', '003007', 1, 2020, 1, '���� 5����', '���� 208ȣ', 50);
INSERT INTO teach VALUES('08020', '003008', 1, 2020, 1, '���� 6����', '���� 209ȣ', 50);
INSERT INTO teach VALUES('08030', '003009', 1, 2019, 2, 'ȭ�� 6����', '���� 210ȣ', 50);
INSERT INTO teach VALUES('08020', '003010', 1, 2019, 2, '���� 7����', '���� 211ȣ', 50);

INSERT INTO teach VALUES('11011', '004001', 1, 2019, 2, '���� 2����', '��Ű� 401ȣ', 50);
INSERT INTO teach VALUES('11012', '004001', 2, 2019, 2, 'ȭ�� 2����', '��Ű� 401ȣ', 50);
INSERT INTO teach VALUES('11011', '004002', 1, 2019, 2, '���� 3����', '��Ű� 402ȣ', 50);
INSERT INTO teach VALUES('11012', '004002', 2, 2019, 2, 'ȭ�� 3����', '��Ű� 402ȣ', 50);
INSERT INTO teach VALUES('11012', '004003', 1, 2019, 2, '���� 4����', '��Ű� 403ȣ', 50);
INSERT INTO teach VALUES('11013', '004003', 2, 2019, 2, 'ȭ�� 4����', '��Ű� 403ȣ', 50);
INSERT INTO teach VALUES('11012', '004004', 1, 2019, 2, '���� 5����', '��Ű� 404ȣ', 50);
INSERT INTO teach VALUES('11011', '004005', 1, 2019, 2, 'ȭ�� 5����', '��Ű� 405ȣ', 50);
INSERT INTO teach VALUES('11013', '004006', 1, 2019, 2, '���� 6����', '��Ű� 406ȣ', 50);
INSERT INTO teach VALUES('11013', '004006', 2, 2020, 1, 'ȭ�� 6����', '��Ű� 406ȣ', 50);
INSERT INTO teach VALUES('11011', '004007', 1, 2020, 1, '���� 7����', '��Ű� 407ȣ', 50);

INSERT INTO teach VALUES('12001', '005001', 1, 2020, 1, '���� 3����', '��Ű� 310ȣ', 50);
INSERT INTO teach VALUES('12002', '005001', 2, 2020, 1, 'ȭ�� 3����', '��Ű� 310ȣ', 50);
INSERT INTO teach VALUES('12001', '005002', 1, 2019, 2, '���� 4����', '��Ű� 311ȣ', 50);
INSERT INTO teach VALUES('12001', '005003', 1, 2019, 2, 'ȭ�� 4����', '��Ű� 312ȣ', 50);
INSERT INTO teach VALUES('12002', '005004', 1, 2019, 2, '���� 5����', '��Ű� 313ȣ', 50);
INSERT INTO teach VALUES('12003', '005004', 2, 2019, 2, 'ȭ�� 5����', '��Ű� 313ȣ', 50);
INSERT INTO teach VALUES('12001', '005005', 1, 2019, 2, '���� 6����', '��Ű� 314ȣ', 50);
INSERT INTO teach VALUES('12002', '005006', 1, 2019, 2, 'ȭ�� 6����', '��Ű� 315ȣ', 50);
INSERT INTO teach VALUES('12003', '005006', 2, 2019, 2, '���� 7����', '��Ű� 315ȣ', 50);
INSERT INTO teach VALUES('12003', '005006', 3, 2019, 2, 'ȭ�� 7����', '��Ű� 315ȣ', 50);
INSERT INTO teach VALUES('12001', '005007', 1, 2019, 2, '���� 8����', '��Ű� 316ȣ', 50);
INSERT INTO teach VALUES('12002', '005007', 2, 2019, 2, 'ȭ�� 8����', '��Ű� 316ȣ', 50);

INSERT INTO teach VALUES('14016', '006001', 1, 2020, 1, '���� 4����', '��Ű� 301ȣ', 50);
INSERT INTO teach VALUES('14017', '006001', 2, 2020, 1, 'ȭ�� 4����', '��Ű� 301ȣ', 50);
INSERT INTO teach VALUES('14016', '006002', 1, 2020, 1, '���� 5����', '��Ű� 302ȣ', 50);
INSERT INTO teach VALUES('14017', '006002', 2, 2020, 1, '���� 6����', '��Ű� 302ȣ', 50);
INSERT INTO teach VALUES('14016', '006003', 1, 2019, 2, 'ȭ�� 6����', '��Ű� 303ȣ', 50);
INSERT INTO teach VALUES('14018', '006004', 1, 2019, 2, '���� 7����', '��Ű� 304ȣ', 50);
INSERT INTO teach VALUES('14018', '006005', 1, 2019, 2, 'ȭ�� 7����', '��Ű� 305ȣ', 50);
INSERT INTO teach VALUES('14016', '006006', 1, 2019, 2, '�� 3����', '��Ű� 306ȣ', 50);
INSERT INTO teach VALUES('14017', '006007', 1, 2019, 2, '�� 4����', '��Ű� 306ȣ', 50);