-- 사원 테이블 (부서와 관계를 맺은)
CREATE TABLE employee(
    -- 칼럼 이름 자료형
    empno     NUMBER(3) PRIMARY key,       -- 사원번호
    ename   VARCHAR2(20) not null,       -- 사원이름
    sal     NUMBER(10),                  -- 급여
    createdate  DATE DEFAULT SYSDATE,     -- 등록일
    gender VARCHAR2(10),
    deptno  VARCHAR2(4),                -- 외래키                 
    -- 외래키 (FOREIGN KEY) 제약조건
    CONSTRAINT emp_fk FOREIGN KEY(deptno) 
    REFERENCES dept(deptno)
    -- on delete cascade (부서를 삭제하면 참조하고 있는 사원도 삭제)
);

insert into employee VALUES (100,'이강',2500000, SYSDATE ,'남자','1000');
insert into employee VALUES (101, '이산', 2000000, SYSDATE , '여자','1001');
insert into employee VALUES (102, '박달', 1500000, SYSDATE , '남자','1002');
insert into employee VALUES (103, '강하늘', 3500000, SYSDATE , '','1003');
insert into employee VALUES (104, '양우주', 4500000, SYSDATE , '','1000');
insert into employee VALUES (105, '강남', 2600000, SYSDATE , '남자','1000');

-- 참조 무경성 제약 위배.
-- 1. 사원이 소속된 부서를 삭제할때 '자식 레코드가 있다'는 오류 발생
-- 2. 부서번호가 없는 사원 자료를 추가할 때 '부모키가 없다는 오류 발생'

-- 사원자료 검색
select * from employee;
--drop TABLE employee;
desc employee;

-- 성별이 남자이면서 급여가 250만원 이상인 사원을 검색하시오
select * from employee 
where gender = '남자' and sal >=2500000;

-- 급여가 200만원 이상 300만원 이하인 사원을 검색하시오
select * from employee
where sal >= 2000000 and sal <=3000000 ;

-- between ~ and 
select * from employee
where sal
BETWEEN 2000000 and 3000000;

-- 문자열 검색 : 일부 문자 포함 LICK %문자%
-- 성이 '이'인 사원을 검색하시오.
select * from employee WHERE employee.ename like '이%';

-- 사원 총인원수를 구하시오
select count(*) as 인원수 from employee;

-- 중복없이 부서번호를 검색하시오 (DISTINCT 키워드)
select DISTINCT employee.deptno from employee; 

-- GROUP BY 절 (소속등 그룹화) - 그룹바이일땐 조건절로 Having 을 사용
-- 부서별 급여 총액을 구하시고
select deptno 부서, sum(sal) 급여총액, AVG(sal) 급여평균
from employee 
GROUP BY deptno
HAVING AVG(sal) >= 3000000
order by AVG(sal) desc;

