-- ��� ���̺� (�μ��� ���踦 ����)
CREATE TABLE employee(
    -- Į�� �̸� �ڷ���
    empno     NUMBER(3) PRIMARY key,       -- �����ȣ
    ename   VARCHAR2(20) not null,       -- ����̸�
    sal     NUMBER(10),                  -- �޿�
    createdate  DATE DEFAULT SYSDATE,     -- �����
    gender VARCHAR2(10),
    deptno  VARCHAR2(4),                -- �ܷ�Ű                 
    -- �ܷ�Ű (FOREIGN KEY) ��������
    CONSTRAINT emp_fk FOREIGN KEY(deptno) 
    REFERENCES dept(deptno)
    -- on delete cascade (�μ��� �����ϸ� �����ϰ� �ִ� ����� ����)
);

insert into employee VALUES (100,'�̰�',2500000, SYSDATE ,'����','1000');
insert into employee VALUES (101, '�̻�', 2000000, SYSDATE , '����','1001');
insert into employee VALUES (102, '�ڴ�', 1500000, SYSDATE , '����','1002');
insert into employee VALUES (103, '���ϴ�', 3500000, SYSDATE , '','1003');
insert into employee VALUES (104, '�����', 4500000, SYSDATE , '','1000');
insert into employee VALUES (105, '����', 2600000, SYSDATE , '����','1000');

-- ���� ���漺 ���� ����.
-- 1. ����� �Ҽӵ� �μ��� �����Ҷ� '�ڽ� ���ڵ尡 �ִ�'�� ���� �߻�
-- 2. �μ���ȣ�� ���� ��� �ڷḦ �߰��� �� '�θ�Ű�� ���ٴ� ���� �߻�'

-- ����ڷ� �˻�
select * from employee;
--drop TABLE employee;
desc employee;

-- ������ �����̸鼭 �޿��� 250���� �̻��� ����� �˻��Ͻÿ�
select * from employee 
where gender = '����' and sal >=2500000;

-- �޿��� 200���� �̻� 300���� ������ ����� �˻��Ͻÿ�
select * from employee
where sal >= 2000000 and sal <=3000000 ;

-- between ~ and 
select * from employee
where sal
BETWEEN 2000000 and 3000000;

-- ���ڿ� �˻� : �Ϻ� ���� ���� LICK %����%
-- ���� '��'�� ����� �˻��Ͻÿ�.
select * from employee WHERE employee.ename like '��%';

-- ��� ���ο����� ���Ͻÿ�
select count(*) as �ο��� from employee;

-- �ߺ����� �μ���ȣ�� �˻��Ͻÿ� (DISTINCT Ű����)
select DISTINCT employee.deptno from employee; 

-- GROUP BY �� (�Ҽӵ� �׷�ȭ) - �׷�����϶� �������� Having �� ���
-- �μ��� �޿� �Ѿ��� ���Ͻð�
select deptno �μ�, sum(sal) �޿��Ѿ�, AVG(sal) �޿����
from employee 
GROUP BY deptno
HAVING AVG(sal) >= 3000000
order by AVG(sal) desc;


