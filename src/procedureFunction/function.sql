create or replace function Date2EnrollYear(today IN DATE)
Return NUMBER

IS
	thisM char(2);
	nYear NUMBER;

BEGIN

	SELECT to_char(today, 'mm'), to_number(to_char(today, 'yyyy'))
	INTO thisM, nYear
	FROM dual;
	
	IF (thisM = '11' or thisM = '12') THEN
		nYear := nYear + 1;
	END IF;

	RETURN nYear;
END;
/


create or replace function Date2EnrollSemester(today IN DATE)
Return NUMBER

IS
	thisM char(2);
	nSem NUMBER := 0;
BEGIN
	SELECT to_char(today, 'mm')
	INTO thisM
	FROM dual;
	
	IF (thisM = '11' or thisM = '12' or (thisM >= '01' and thisM <= '04')) THEN
		nSem := 1;
	ELSE
		nSem :=2;

	END IF;

	RETURN nSem;
END;
/