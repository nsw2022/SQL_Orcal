-- �μ����̺�� ������̺� ����(join)
-- join - 2�� �̻��� ���̺��� �����Ͽ� ����ϴ� ���

select * from dept;
select * from employee;

-- �����ȣ, �����, �μ���ȣ, �μ����� ����Ͻÿ�
SELECT emp.empno, emp.ename, emp.deptno, dep.deptname
FROM employee emp, dept dep
where emp.deptno = dep.deptno;
