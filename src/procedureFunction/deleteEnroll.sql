CREATE OR REPLACE PROCEDURE deleteEnroll(sStudentId IN VARCHAR2, sCourseId IN VARCHAR2, nCourseIdNo IN NUMBER, result OUT VARCHAR2)

IS

   nYear NUMBER;

     nSemester NUMBER;

BEGIN

   result := '';



DBMS_OUTPUT.put_line('#');

DBMS_OUTPUT.put_line(sStudentId || '님이 과목번호 ' || sCourseId || ', 분반 ' || TO_CHAR(nCourseIdNo) || '의 수강취소를 요청하였습니다.');



/* 년도, 학기 알아내기 */

   nYear := Date2EnrollYear(SYSDATE);

   nSemester := Date2EnrollSemester(SYSDATE);

  

   DELETE enroll

   WHERE s_id = sStudentId AND c_id = sCourseId AND c_id_no = nCourseIdNo AND e_year = nYear AND e_semester = nSemester;  

   COMMIT;

   result := '수강신청 변경이 완료되었습니다.';



END;

/