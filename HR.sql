SELECT * FROM tab;

-- 변환 함수
------------------------
--TO_NUMBER(s,frm):문자열->수치형
--TO DATA(s,frm):문자열->날짜형
--TO_CHAR(o,frm):숫자,날짜->문자형

--TO CHAR
SELECT first_name, hire_date, TO_CHAR(hire_date,'YYYY-MM-DD HH24:MI:SS')
FROM employees;

--현재 날짜의 포맷
SELECT sysdate, To_CHAR(sysdate, 'YYYY-MM-DD HH24:MI:SS')
FROM dual;

SELECT TO_CHAR(123456789.0123,'999,999.99')
FROM dual;

--연봉 정보 문자열로 포매팅
SELECT first_name, TO_CHAR(salary * 12,'$999,999.99')SAL
FROM employees;

--case함수
--연습문제
--department_id<=30 ->A group
--department_id<=50 ->B group
--departmetn_id<=100->C group
--나머지:REMAINDER
SELECT first_name, department_id,
CASE WHEN department_id<=30 THEN 'A-GROUP'
    WHEN department_id<=50 THEN 'A-GROUP'
    WHEN department_id<=100 THEN 'B-GROUP'
    ELSE 'REMAINDER'
    END as team
FROM employees
ORDER BY team;
