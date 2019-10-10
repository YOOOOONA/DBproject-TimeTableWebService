CREATE OR REPLACE PROCEDURE deleteEnroll(sStudentId IN VARCHAR2, sCourseId IN VARCHAR2, nCourseIdNo IN NUMBER, result OUT VARCHAR2)

IS

   nYear NUMBER;

     nSemester NUMBER;

BEGIN

   result := '';



DBMS_OUTPUT.put_line('#');

DBMS_OUTPUT.put_line(sStudentId || '���� �����ȣ ' || sCourseId || ', �й� ' || TO_CHAR(nCourseIdNo) || '�� ������Ҹ� ��û�Ͽ����ϴ�.');



/* �⵵, �б� �˾Ƴ��� */

   nYear := Date2EnrollYear(SYSDATE);

   nSemester := Date2EnrollSemester(SYSDATE);

  

   DELETE enroll

   WHERE s_id = sStudentId AND c_id = sCourseId AND c_id_no = nCourseIdNo AND e_year = nYear AND e_semester = nSemester;  

   COMMIT;

   result := '������û ������ �Ϸ�Ǿ����ϴ�.';



END;

/