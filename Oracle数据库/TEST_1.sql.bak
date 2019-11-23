
//格式化
SET LINESIZE 300;

SET PAGESIZE 30;

//<-------------分割线----------------->

//获取时间
SELECT SYSDATE
FROM dual
；

//观察下列日期的区别
SELECT SYSDATE FROM DUAL;
SELECT SYSTIMESTAMP FROM dual;

//增加指定的月份
SELECT ADD_MONTHS(SYSDATE,4),
	ADD_MONTHS(SYSDATE,20),
	ADD_MONTHS(SYSDATE,300)
FROM dual;

//计算所有雇员到今天为止雇佣的月数
SELECT empno,ename,hiredate,MONTHS_BETWEEN(SYSDATE,hiredate)
FROM emp;

//计算当前时间所在月的最后一天日期；
SELECT LAST_DAY(SYSDATE)
FROM dual;

//要求查询所有在雇用所在月倒数第三天雇佣的雇员信息
SELECT empno,ename,hiredate,LAST_DAY(hiredate)-2
FROM emp
WHERE hiredate=LAST_DAY(hiredate)-2
;

//NEXT_DAY函数
SELECT NEXT_DAY(SYSDATE,'星期二')
FROM dual
;

//将日期显示格式化
SELECT TO_CHAR(SYSDATE,'yyyy-mm-dd') FROM dual;

SELECT TO_CHAR(SYSDATE,'yyyy-mm-dd hh24:mi:ss') FROM dual;

//要求查询每个雇员的编号、姓名、基本工资、佣金、年薪
SELECT empno,ename,sal,comm,(sal+comm)*12,NVL(comm,0) FROM emp;


//观察下列日期的区别
SELECT SYSDATE FROM DUAL;
SELECT SYSTIMESTAMP FROM dual;

//增加指定的月份
SELECT ADD_MONTHS(SYSDATE,4),
	ADD_MONTHS(SYSDATE,20),
	ADD_MONTHS(SYSDATE,300)
FROM dual;

//计算所有雇员到今天为止雇佣的月数
SELECT empno,ename,hiredate,MONTHS_BETWEEN(SYSDATE,hiredate)
FROM emp;

//计算当前时间所在月的最后一天日期；
SELECT LAST_DAY(SYSDATE)
FROM dual;

//要求查询所有在雇用所在月倒数第三天雇佣的雇员信息
SELECT empno,ename,hiredate,LAST_DAY(hiredate)-2
FROM emp
WHERE hiredate=LAST_DAY(hiredate)-2
;

//NEXT_DAY函数
SELECT NEXT_DAY(SYSDATE,'星期二')
FROM dual
;

//将日期显示格式化
SELECT TO_CHAR(SYSDATE,'yyyy-mm-dd') FROM dual;

SELECT TO_CHAR(SYSDATE,'yyyy-mm-dd hh24:mi:ss') FROM dual;

//要求查询每个雇员的编号、姓名、基本工资、佣金、年薪
SELECT empno,ename,sal,comm,(sal+comm)*12,NVL(comm,0) FROM emp;

//DECODE函数
SELECT ename,job,DECODE(job,'CLERK','办事员','SALEMAN','销售','经理','MANGER','经理','---') 
FROM emp；