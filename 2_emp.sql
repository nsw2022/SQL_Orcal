-- ��� ���̺�
CREATE TABLE emp(
    -- Į�� �̸� �ڷ���
    empno     NUMBER(3) PRIMARY key,       -- �����ȣ
    ename   VARCHAR2(20) not null,       -- ����̸�
    sal     NUMBER(10),                  -- �޿�
    createdate  DATE DEFAULT SYSDATE     -- �����
);

-- ����� ���� Į�� �߰� ( ALTER ~ ADD Į���̸� �ڷ��� )
ALTER TABLE emp ADD gender VARCHAR2 (4);
desc emp; -- ���̺� �߰� Ȯ�ο뵵

-- ����� ���� �ڷ����� ����(MODIFY) VARCHAR2(30)
ALTER TABLE emp MODIFY gender VARCHAR2(10);


-- ��� �߰�
insert into emp VALUES (100,'�̰�',2500000, SYSDATE ,null);
insert into emp VALUES (101,'���',3000000, SYSDATE ,null);
insert into emp VALUES (102,'�����',5000000, SYSDATE ,null);
insert into emp VALUES (103,'�ڽ���',null, SYSDATE ,null);
insert into emp values (104,'�����',1500000,SYSDATE , '��');
-- ��� ��ȸ
select * FROM emp;

-- �����ȣ, ����̸�, �޿�
SELECT emp as ���, ename �����, sal as �޿� from emp;
-- as �����ص� �Ǳ���!!

-- ���� �Ϸ� ; Ʈ������� �� �κ� �̰��ؾ� �Ϻ��� ����Ȱ� ����ŰF11�̶����

-- �޿��� ���� ����� �˻��Ͻÿ�
select * from emp where sal is null; --null �� �ƴ� ������ isnotnull

-- �޿��� 300 �����λ��
select * from emp where sal <= 3000000;

-- �޿��� ���� ������ ����
select * from emp where sal <= 3000000 order by sal desc;

-- ������ '��'�� ����� '���ڷ�'�� �����Ͻÿ�
UPDATE emp SET gender = '����' where empno='104';

-- ����� ���� ���Ͻÿ�
select count(*) as ����� from emp;

-- ��� �޿��� �հ�� ����� ���Ͻÿ�
select SUM(sal) as �޿��հ�, AVG(sal) �޿����
from emp;

-- ��� �̸��� ������� ��� ����
DELETE from emp
where ename = '�����';

rollback; -- commit �����·� ������ �̹��ߴٸ� ������� ����

COMMIT;


