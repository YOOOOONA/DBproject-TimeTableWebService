create table professor(
p_id VARCHAR2(10),
p_pwd VARCHAR2(30),
p_name VARCHAR2(30),
p_major VARCHAR2(30),
p_email VARCHAR2(30),
CONSTRAINT prof_pk PRIMARY KEY(p_id));


INSERT INTO professor VALUES ('10000', 'abcde', '����', 'it��', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('10001', 'bcdef', '������', 'it��', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('10002', 'cdefg', '����', 'it��', 'wonzzang2@naver.com');

INSERT INTO professor VALUES ('09000', 'defgh', '�����', '�����', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('09001', 'efghi', '������', '�����', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('09002', 'fghij', '�θ���', '�����', 'yoonakim0808@gmail.com');

INSERT INTO professor VALUES ('08030', 'ghijk', '�����', '�۰��', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('08010', 'hijkl', '������', '�۰��', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('08020', 'hijklm', '���̹�', '�۰��', 'wonzzang2@naver.com');

INSERT INTO professor VALUES ('11011', 'jklmn', '�͹ٹ�', '��ǻ�Ͱ��а�', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('11012', 'klmno', '�ι��', '��ǻ�Ͱ��а�', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('11013', 'lmnop', '�κκ�', '��ǻ�Ͱ��а�', 'yoonakim0808@gmail.com');

INSERT INTO professor VALUES ('12001', 'mnopq', '�ڼҼ�', '�����а�', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('12002', 'opqrs', '����', '�����а�', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('12003', 'pqrst', '�����', '�����а�', 'wonzzang2@naver.com');

INSERT INTO professor VALUES ('14016', 'qrstu', '������', '�ѱ���к�', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('14017', 'rstuv', '������', '�ѱ���к�', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('14018', 'stuvw', '�۾��', '�ѱ���к�', 'yoonakim0808@gmail.com');