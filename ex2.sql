-- ��¥ �ڷ���
create table ex2(
    col_date DATE,
    col_timestamp TIMESTAMP
);

-- �ڷ� ����
INSERT INTO ex2 VALUES (sysdate, systimestamp);
INSERT INTO ex2 VALUES (sysdate, systimestamp);

-- �ڷ� �˻�
select * from ex2;