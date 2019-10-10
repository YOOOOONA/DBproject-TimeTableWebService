create or replace procedure selectTimeTable2

(pProfessorId IN VARCHAR2, nYear IN NUMBER, nSemester IN NUMBER, cList OUT SYS_REFCURSOR)

  



AS

  





BEGIN  




   OPEN cList FOR

   SELECT c.c_id, c.c_id_no, c_name, c_unit, t_where, t_time

   FROM course c, teach t

   WHERE t.c_id = c.c_id and t.c_id_no = c.c_id_no and (t.c_id, t.c_id_no) IN

      (SELECT t.c_id, t.c_id_no

      FROM teach t--enroll�ƴϰ� teach ���̺��� �����;� ��� ���� ���� ��������

      WHERE p_id = pProfessorId and t_year = nYear and t_semester = nSemester);



  

END;

/