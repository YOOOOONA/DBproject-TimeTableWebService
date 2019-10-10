create table professor(
p_id VARCHAR2(10),
p_pwd VARCHAR2(30),
p_name VARCHAR2(30),
p_major VARCHAR2(30),
p_email VARCHAR2(30),
CONSTRAINT prof_pk PRIMARY KEY(p_id));


INSERT INTO professor VALUES ('10000', 'abcde', '고나나', 'it과', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('10001', 'bcdef', '구누누', 'it과', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('10002', 'cdefg', '김노노', 'it과', 'wonzzang2@naver.com');

INSERT INTO professor VALUES ('09000', 'defgh', '도라라', '무용과', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('09001', 'efghi', '도레레', '무용과', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('09002', 'fghij', '두리리', '무용과', 'yoonakim0808@gmail.com');

INSERT INTO professor VALUES ('08030', 'ghijk', '류모모', '작곡과', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('08010', 'hijkl', '류무무', '작곡과', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('08020', 'hijklm', '류미미', '작곡과', 'wonzzang2@naver.com');

INSERT INTO professor VALUES ('11011', 'jklmn', '맹바바', '컴퓨터과학과', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('11012', 'klmno', '민배배', '컴퓨터과학과', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('11013', 'lmnop', '민부부', '컴퓨터과학과', 'yoonakim0808@gmail.com');

INSERT INTO professor VALUES ('12001', 'mnopq', '박소소', '경제학과', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('12002', 'opqrs', '방사사', '경제학과', 'wonzzang2@naver.com');
INSERT INTO professor VALUES ('12003', 'pqrst', '배수수', '경제학과', 'wonzzang2@naver.com');

INSERT INTO professor VALUES ('14016', 'qrstu', '송이이', '한국어문학부', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('14017', 'rstuv', '송유유', '한국어문학부', 'yoonakim0808@gmail.com');
INSERT INTO professor VALUES ('14018', 'stuvw', '송어어', '한국어문학부', 'yoonakim0808@gmail.com');