create or replace procedure DeleteBasket(bS_id IN basket.s_id%type, bC_id IN basket.c_id%type, bC_id_no IN basket.c_id_no%type)
IS
	nYear NUMBER;
	nSemester NUMBER;

BEGIN

	nYear := Date2EnrollYear(SYSDATE);
	nSemester := Date2EnrollSemester(SYSDATE);

	delete from basket where s_id = bS_id and c_id = bC_id and c_id_no = bC_id_no and e_year = nYear and e_semester = nSemester;

	commit;


end;
/