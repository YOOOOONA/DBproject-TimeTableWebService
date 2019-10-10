create or replace procedure ShowBasket
(bStudentId IN student.s_id%TYPE, b_list OUT sys_refcursor) 

as
	nYear NUMBER;
	nSemester NUMBER;

begin

	nYear := Date2EnrollYear(SYSDATE);
	nSemester := Date2EnrollSemester(SYSDATE);

	open b_list for
	select t.c_id, t.c_id_no, c_name, t_time, t_where, c_unit
	from course c, teach t
	where t.c_id = c.c_id and t.c_id_no = c.c_id_no and (t.c_id, t.c_id_no) in(
		select b.c_id, b.c_id_no
		from basket b
		where b.s_id = bStudentId and b.e_year = nYear and b.e_semester = nSemester);


end;
/
