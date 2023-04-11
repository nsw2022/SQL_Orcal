-- �μ� ���̺�(dept)
CREATE TABLE dept(
    -- ?????? ?????
    deptno  VARCHAR2(4) PRIMARY KEY,
    deptname  VARCHAR2(20) NOT NULL,
    office  VARCHAR2(10)    
);
-- �̻� ���� �ذ�
-- �μ��ڵ� : �ĺ���(Identifier) - �⺻Ű(Primary Key)�Ӽ� �߰�
-- �μ� �� : �ʼ� �Է� ���� (not null �Ӽ� �߰�)
DESC dept;
 
-- �μ� �߰�
INSERT INTO dept(deptno, deptname, office) VALUES ('1000', '�λ���', '����');
INSERT INTO dept(deptno, deptname, office) VALUES ('1001', '������', '����');
INSERT INTO dept VALUES ('1002', '������', '����');
INSERT INTO dept(deptno, deptname) VALUES ('1003', '������');

-- ���� �Ϸ� ; Ʈ������� �� �κ�
COMMIT;

-- ���� �Ϸ� : Ʈ������� �� �κ�
SELECT * FROM dept;
SELECT deptno as �μ��ڵ�, deptname as �μ��� FROM dept;

SELECT * FROM dept;
--WHERE deptno = '1002';

-- �μ���ȣ�� 1002�� �μ��� ȸ�������� ����
UPDATE dept 
SET deptname='ȸ����' where deptno='1002';

/* �μ� ���̺� ���� */
DROP TABLE dept;

delete dept where dept.deptno = '1003';


