-- ���� �ڷ����� ��
CREATE TABLE ex1(
    column1 CHAR(10),      -- �������� �ڷ���
    column2 VARCHAR2(10)   -- �������� �ڷ���
);

-- �ڷ� �߰�
insert into ex1(column1, column2) VALUES ('abc','abc');
insert into ex1 VALUES ('������','����');


-- �ڷ� ��ȸ
select column1, length(column1) len1,column2, length(column2) len2 from ex1;
commit;

