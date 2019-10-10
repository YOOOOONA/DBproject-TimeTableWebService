create or replace procedure InsertBasket (bS_id IN basket.s_id%type, bC_id IN basket.c_id%type, bC_id_no IN basket.c_id_no%type)
IS
	nYear NUMBER;
	nSemester NUMBER;

BEGIN

	nYear := Date2EnrollYear(SYSDATE);
	nSemester := Date2EnrollSemester(SYSDATE);

	insert into basket values(bS_id, bC_id, bC_id_no, nYear, nSemester);

	commit;


end;
/