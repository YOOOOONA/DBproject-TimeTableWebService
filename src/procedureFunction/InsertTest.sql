Set ServerOutput On;
/

DECLARE
result VARCHAR2(50) := '';

BEGIN
DBMS_OUTPUT.enable;

DBMS_OUTPUT.put_line('**************** Insert �� ���� ó�� �׽�Ʈ ********************');

/* ���� ó�� 2 : ������ ���� ��û ���� :�����ͺ��̽� ���� ��û */
InsertEnroll('20011234', 'C400', 3, result);
DBMS_OUTPUT.put_line('��� : ' || result);

/* ���� ó�� 3 : ������û �ο� �ʰ� ���� : ��ü���� �������� ���α׷��� ��û*/
	InsertEnroll('20011234', 'C900', 3, result);
	DBMS_OUTPUT.put_line('��� : ' || result);

/* ���� ó�� 4 : ��û�� ����� �ð� �ߺ� ���� : ��Ƽ�̵�� ���� ��û */
	InsertEnroll('20011234', 'M100', 3, result);
	DBMS_OUTPUT.put_line('��� : ' || result);

/* ������ ���� ��� */
	InsertEnroll('20011234', 'C800', 3, result);
	DBMS_OUTPUT.put_line('��� : ' || result);

/* ���� ó�� 1 : �ִ� ���� �ʰ� ���� �˻� : ���� ���α׷��� ��û */
	InsertEnroll('20011234', 'M700', 3, result);
	DBMS_OUTPUT.put_line('��� : ' || result);
	DBMS_OUTPUT.put_line('***************** CURSOR�� �̿��� SELECT �׽�Ʈ ****************');

/* ���� ��� Ȯ�� */
	SelectTimeTable('20011234', 2004, 1);
	delete from enroll where s_id='20011234' and c_id='C800' and c_id_no=3;

END;
/