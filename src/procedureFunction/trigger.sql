CREATE OR REPLACE TRIGGER BeforeUpdateStudent 
BEFORE
UPDATE ON student
FOR EACH ROW

DECLARE
	underflow_length EXCEPTION;
	invalid_value EXCEPTION;
	nLength NUMBER;
	nBlank NUMBER;

BEGIN
	SELECT length(:new.s_pwd)
	INTO nLength
	FROM dual;

	SELECT instr(:new.s_pwd, ' ')
	INTO nBlank
	FROM dual;

	IF (nLength < 4) THEN
		RAISE underflow_length;
	ELSIF (nBlank >= 1) THEN
		RAISE invalid_value;
	END IF;
	
	
EXCEPTION
	WHEN underflow_length THEN
		RAISE_APPLICATION_ERROR(-20002, '��ȣ�� 4�ڸ� �̻��̾�� �մϴ�');
	WHEN invalid_value THEN
		RAISE_APPLICATION_ERROR(-20003, '��ȣ�� ������ �Էµ��� �ʽ��ϴ�');


END;
/



CREATE OR REPLACE TRIGGER BeforeUpdateProfessor
BEFORE
UPDATE ON professor
FOR EACH ROW

DECLARE
	underflow_length EXCEPTION;
	invalid_value EXCEPTION;
	nLength NUMBER;
	nBlank NUMBER;

BEGIN
	SELECT length(:new.p_pwd)
	INTO nLength
	FROM dual;

	SELECT instr(:new.p_pwd, ' ')
	INTO nBlank
	FROM dual;

	IF (nLength < 4) THEN
		RAISE underflow_length;
	ELSIF (nBlank >= 1) THEN
		RAISE invalid_value;
	END IF;
	
	
EXCEPTION
	WHEN underflow_length THEN
		RAISE_APPLICATION_ERROR(-20004, '��ȣ�� 4�ڸ� �̻��̾�� �մϴ�');
	WHEN invalid_value THEN
		RAISE_APPLICATION_ERROR(-20005, '��ȣ�� ������ �Էµ��� �ʽ��ϴ�');


END;
/