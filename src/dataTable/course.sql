create table course(
c_id VARCHAR2(20),
c_id_no NUMBER,
c_name VARCHAR2(30),
c_unit NUMBER,
CONSTRAINT course_pk PRIMARY KEY(c_id, c_id_no));



INSERT INTO course VALUES('001001', 1, 'IT기기구조', 3);
INSERT INTO course VALUES('001001', 2, 'IT기기구조', 3);
INSERT INTO course VALUES('001002', 1, '스마트서비스', 3);
INSERT INTO course VALUES('001003', 1, '영상처리및응용', 3);
INSERT INTO course VALUES('001004', 1, 'IT기술의이해', 3);
INSERT INTO course VALUES('001004', 2, 'IT기술의이해', 3);
INSERT INTO course VALUES('001005', 1, '웹프로그래밍기초', 3);
INSERT INTO course VALUES('001005', 2, '웹프로그래밍기초', 3);
INSERT INTO course VALUES('001006', 1, '지능형소프트웨어', 3);
INSERT INTO course VALUES('001006', 2, '지능형소프트웨어', 3);
INSERT INTO course VALUES('001007', 1, '프로그래밍입문', 3);
INSERT INTO course VALUES('001007', 2, '프로그래밍입문', 3);

INSERT INTO course VALUES('002001', 1, '발레', 2);
INSERT INTO course VALUES('002001', 2, '발레', 2);
INSERT INTO course VALUES('002001', 3, '발레', 2);
INSERT INTO course VALUES('002002', 1, '한국무용', 2);
INSERT INTO course VALUES('002002', 2, '한국무용', 2);
INSERT INTO course VALUES('002002', 3, '한국무용', 2);
INSERT INTO course VALUES('002003', 1, '현대무용', 2);
INSERT INTO course VALUES('002003', 2, '현대무용', 2);
INSERT INTO course VALUES('002004', 1, '한국무용사', 3);
INSERT INTO course VALUES('002005', 1, '레퍼토리', 1);
INSERT INTO course VALUES('002006', 1, '무용행정학', 3);
INSERT INTO course VALUES('002007', 1, '무용작품분석', 1);
INSERT INTO course VALUES('002008', 1, '인체기능학', 2);
INSERT INTO course VALUES('002009', 1, '무대공연실습', 2);

INSERT INTO course VALUES('003001', 1, '국악기실습', 2);
INSERT INTO course VALUES('003001', 2, '국악기실습', 2);
INSERT INTO course VALUES('003002', 1, '서양음악사', 2);
INSERT INTO course VALUES('003002', 2, '서양음악사', 2);
INSERT INTO course VALUES('003003', 1, '관현악법', 2);
INSERT INTO course VALUES('003004', 1, '반주법1', 2);
INSERT INTO course VALUES('003005', 1, '컴퓨터음악', 2);
INSERT INTO course VALUES('003005', 2, '컴퓨터음악', 2);
INSERT INTO course VALUES('003006', 1, '합창', 2);
INSERT INTO course VALUES('003007', 1, '작곡양식1', 2);
INSERT INTO course VALUES('003008', 1, '작곡양식2', 2);
INSERT INTO course VALUES('003009', 1, '한국전통음악연구', 3);
INSERT INTO course VALUES('003010', 1, '음악교육론', 3);

INSERT INTO course VALUES('004001', 1, '데이터베이스프로그래밍', 3);
INSERT INTO course VALUES('004001', 2, '데이터베이스프로그래밍', 3);
INSERT INTO course VALUES('004002', 1, '데이터사이언스개론', 3);
INSERT INTO course VALUES('004002', 2, '데이터사이언스개론', 3);
INSERT INTO course VALUES('004003', 1, '소프트웨어의이해', 3);
INSERT INTO course VALUES('004003', 2, '소프트웨어의이해', 3);
INSERT INTO course VALUES('004004', 1, '인공지능', 3);
INSERT INTO course VALUES('004005', 1, '임베디드시스템', 3);
INSERT INTO course VALUES('004006', 1, '자료구조', 3);
INSERT INTO course VALUES('004006', 2, '자료구조', 3);
INSERT INTO course VALUES('004007', 1, '웹시스템설계', 3);

INSERT INTO course VALUES('005001', 1, '경제학원론', 3);
INSERT INTO course VALUES('005001', 2, '경제학원론', 3);
INSERT INTO course VALUES('005002', 1, '거시경제학', 3);
INSERT INTO course VALUES('005003', 1, '경제성장론', 3);
INSERT INTO course VALUES('005004', 1, '경제수학', 3);
INSERT INTO course VALUES('005004', 2, '경제수학', 3);
INSERT INTO course VALUES('005005', 1, '국제수지론', 3);
INSERT INTO course VALUES('005006', 1, '후생경제학', 3);
INSERT INTO course VALUES('005006', 2, '후생경제학', 3);
INSERT INTO course VALUES('005006', 3, '후생경제학', 3);
INSERT INTO course VALUES('005007', 1, '미시경제학', 3);
INSERT INTO course VALUES('005007', 2, '미시경제학', 3);

INSERT INTO course VALUES('006001', 1, '글로벌시대의한국문학', 3);
INSERT INTO course VALUES('006001', 2, '글로벌시대의한국문학', 3);
INSERT INTO course VALUES('006002', 1, '고전문학사', 3);
INSERT INTO course VALUES('006002', 2, '고전문학사', 3);
INSERT INTO course VALUES('006003', 1, '고전시가의이해', 3);
INSERT INTO course VALUES('006004', 1, '창작세미나', 3);
INSERT INTO course VALUES('006005', 1, '전통서사론', 3);
INSERT INTO course VALUES('006006', 1, '현대소설강독', 3);
INSERT INTO course VALUES('006007', 1, '여성문학론', 3);