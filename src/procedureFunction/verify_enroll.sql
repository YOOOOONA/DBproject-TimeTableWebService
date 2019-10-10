create or replace procedure selectTimeTable
(sStudentId IN VARCHAR2, nYear IN NUMBER, nSemester IN NUMBER, sumNum OUT NUMBER, sumUnit OUT NUMBER, cList OUT SYS_REFCURSOR)
	

AS
	CURSOR c_cur(sId VARCHAR2, year NUMBER, semester NUMBER) IS
	SELECT count(*), sum(c_unit)
	FROM enroll e, course c
	WHERE s_id = sId and e_year = year and e_semester = semester and e.c_id = c.c_id and e.c_id_no = c.c_id_no;


BEGIN	
	sumNum := 0;
	sumUnit := 0;

	OPEN c_cur(sStudentId, nYear, nSemester);
	
	FETCH c_cur INTO sumNum, sumUnit;

	CLOSE c_cur;

	OPEN cList FOR
	SELECT c.c_id, c.c_id_no, c_name, c_unit, t_where, t_time
	FROM course c, teach t
	WHERE t.c_id = c.c_id and t.c_id_no = c.c_id_no and (t.c_id, t.c_id_no) IN 
		(SELECT e.c_id, e.c_id_no
		FROM enroll e
		WHERE s_id = sStudentId and e_year = nYear and e_semester = nSemester);

	

	
END;
/
	
		



