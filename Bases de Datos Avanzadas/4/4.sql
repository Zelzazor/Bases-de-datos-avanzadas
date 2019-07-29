CREATE TABLE my_employee (
id NUMBER(4) CONSTRAINT my_employee_id_nn NOT NULL, 
last_name VARCHAR2(25), 
first_name VARCHAR2(25), 
userid VARCHAR2(8), 
salary NUMBER(9,2));
INSERT INTO my_employee VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);






INSERT INTO my_employee (id, last_name, first_name, userid, salary) VALUES (2, 'Dancs', 'Betty', 'bdancs', 860);


INSERT INTO my_employee(id, last_name, first_name, userid, salary) 
VALUES (3, 'Biri', 'Ben', LOWER(SUBSTR('Ben', 0, 1)) || LOWER(SUBSTR('Biri', 0, 7)), 1100);
INSERT INTO my_employee (id, last_name, first_name, userid, salary) 
VALUES (4, 'Newman', 'Chad', LOWER(SUBSTR('Chad', 0, 1)) || LOWER(SUBSTR('Newman', 0, 7)), 750); 


SELECT * FROM my_employee;


COMMIT;

UPDATE my_employee SET last_name = 'Drexler' WHERE id = 3;

ROLLBACK;


UPDATE my_employee SET salary = 1000 WHERE salary < 900;

SELECT * FROM my_employee;
DELETE FROM my_employee WHERE id = 2;
COMMIT;

INSERT INTO my_employee VALUES (5,'Ropeburn','Audrey','aropebur',15500);

SELECT * FROM my_employee;

SAVEPOINT A;

DELETE FROM my_employee;

ROLLBACK TO A;

COMMIT;

CREATE TABLE DEPT (id NUMBER(7) CONSTRAINT DEPT_id_D_pk PRIMARY KEY, NAME VARCHAR2(25));
DESC DEPT;

INSERT INTO DEPT (id, name) 
SELECT department_id, department_name FROM departments;

CREATE TABLE EMP(
id NUMBER(7), 
last_name VARCHAR2(25), 
first_name VARCHAR2(25), 
dept_id NUMBER(7) CONSTRAINT emp_dept_id_fk REFERENCES DEPT (id));
DESC EMP;



CREATE TABLE EMPLOYEES2 AS
SELECT employee_id AS "ID", first_name, last_name, salary, department_id AS "DEPT_ID"
FROM employees;
DESC EMPLOYEES2;


DROP TABLE EMP;






CREATE VIEW EMPLOYEES_VU AS
SELECT employee_id, first_name AS "EMPLOYEE", department_id 
FROM employees;




SELECT * FROM EMPLOYEES_VU;


SELECT employee, department_id FROM EMPLOYEES_VU;


CREATE VIEW DEPT50 AS
SELECT employee_id AS "EMPNO", last_name AS "EMPLOYEE", department_id AS "DEPTNO"
FROM employees WHERE department_id = 50 WITH READ ONLY;

DESC DEPT50;

SELECT * FROM DEPT50;

UPDATE DEPT50 SET DEPTNO=80 WHERE EMPLOYEE = 'Matos';


CREATE SEQUENCE DEPT_ID_SEQ 
INCREMENT BY 10
START WITH 200
MAXVALUE 1000
NOCACHE
NOCYCLE;


INSERT INTO DEPT (ID, NAME) VALUES (DEPT_ID_SEQ.NEXTVAL, 'Education');
INSERT INTO DEPT (ID, NAME) VALUES (DEPT_ID_SEQ.NEXTVAL, 'Administration');

SELECT * FROM DEPT;

ALTER TABLE DEPT DROP CONSTRAINT DEPT_id_D_pk;
CREATE INDEX DEPT_ID_IDX ON DEPT(ID);


CREATE PUBLIC SYNONYM EMP FOR employees;













