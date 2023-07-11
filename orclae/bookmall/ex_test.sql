SELECT * FROM dept;
SELECT * FROM employee;

insert into employee VALUES (100,'이강',2500000, SYSDATE ,'남자','1001');
insert into employee VALUES (104, '이달', 2000000, SYSDATE , '여자','1001');
insert into employee VALUES (105, '한달', 1500000, SYSDATE , '남자','1002');

-- 사원 이름과 급여, 성별, 부서이름을 검색하시오(join)
SELECT em.ename, em.sal, em.gender, de.deptname
from dept de, employee em
where de.deptno = em.deptno;

-- 사원이름, 급여, 성별, 부서이름을 검색한 내용을 뷰로 작성
-- create view 뷰이름 as select * from 테이블 이름
create view vw_dept_emp AS
SELECT em.ename, em.sal, em.gender, de.deptname
from dept de, employee em
where de.deptno = em.deptno;

select * from vw_dept_emp;

-- 모든 사원의 총 인원수를 구하시오
select count(*) total from vw_dept_emp;

-- 부서별 사원의 총 인원수를 구하시오
select deptname, count(*) total 
from vw_dept_emp
group by deptname;

-- 부서별 인원이 2명을 초과하는 자료를 검색하시오
select deptname, count(*) total 
from vw_dept_emp
group by deptname
HAVING count(*) > 2;
--HAVING total > 2;

-- 실행순서
-- 1. from 
-- 2. group 
-- 3. having 
-- 4. select 그래서 total>2를 못알아먹음
-- 5. order by 절