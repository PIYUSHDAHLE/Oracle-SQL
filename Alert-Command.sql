CREATE TABLE "EMP" ("EMPNO" NUMBER(4,0), "ENAME" VARCHAR2(10), "JOB" VARCHAR2(9), "MGR" NUMBER(4,0), "HIREDATE" DATE, "SAL" NUMBER(7,2), "COMM" NUMBER(7,2), "DEPTNO" NUMBER(2,0));

Insert into EMP values (7369,'SMITH','CLERK',7902,to_date('17-DEC-80','DD-MON-RR'),800,null,20);
Insert into EMP values (7499,'ALLEN','SALESMAN',7698,to_date('20-FEB-81','DD-MON-RR'),1600,300,30);
Insert into EMP values (7521,'WARD','SALESMAN',7698,to_date('22-FEB-81','DD-MON-RR'),1250,500,30);
Insert into EMP values (7566,'JONES','MANAGER',7839,to_date('02-APR-81','DD-MON-RR'),2975,null,20);
Insert into EMP values (7654,'MARTIN','SALESMAN',7698,to_date('28-SEP-81','DD-MON-RR'),1250,1400,30);
Insert into EMP values (7698,'BLAKE','MANAGER',7839,to_date('01-MAY-81','DD-MON-RR'),2850,null,30);
Insert into EMP values (7782,'CLARK','MANAGER',7839,to_date('09-JUN-81','DD-MON-RR'),2450,null,10);
Insert into EMP values (7788,'SCOTT','ANALYST',7566,to_date('19-APR-87','DD-MON-RR'),3000,null,20);
Insert into EMP values (7839,'KING','PRESIDENT',null,to_date('17-NOV-81','DD-MON-RR'),5000,null,10);
Insert into EMP values (7844,'TURNER','SALESMAN',7698,to_date('08-SEP-81','DD-MON-RR'),1500,0,30);
Insert into EMP values (7876,'ADAMS','CLERK',7788,to_date('23-MAY-87','DD-MON-RR'),1100,null,20);
Insert into EMP values (7900,'JAMES','CLERK',7698,to_date('03-DEC-81','DD-MON-RR'),950,null,30);
Insert into EMP values (7902,'FORD','ANALYST',7566,to_date('03-DEC-81','DD-MON-RR'),3000,null,20);
Insert into EMP values (7934,'MILLER','CLERK',7782,to_date('23-JAN-82','DD-MON-RR'),1300,null,10);

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

SQL> ALTER TABLE EMP
  2  ADD
  3  (
  4  GENDER VARCHAR(6)
  5  );

Table altered.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO GENDER
---------- ---------- --------- ---------- --------- ---------- ---------- ---------- ------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

SQL> ALTER TABLE EMP
  2  DROP COLUMN GENDER;

Table altered.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB              MGR HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- ---------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK           7902 17-DEC-80        800                    20
      7499 ALLEN      SALESMAN        7698 20-FEB-81       1600        300         30
      7521 WARD       SALESMAN        7698 22-FEB-81       1250        500         30
      7566 JONES      MANAGER         7839 02-APR-81       2975                    20
      7654 MARTIN     SALESMAN        7698 28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER         7839 01-MAY-81       2850                    30
      7782 CLARK      MANAGER         7839 09-JUN-81       2450                    10
      7788 SCOTT      ANALYST         7566 19-APR-87       3000                    20
      7839 KING       PRESIDENT            17-NOV-81       5000                    10
      7844 TURNER     SALESMAN        7698 08-SEP-81       1500          0         30
      7876 ADAMS      CLERK           7788 23-MAY-87       1100                    20
      7900 JAMES      CLERK           7698 03-DEC-81        950                    30
      7902 FORD       ANALYST         7566 03-DEC-81       3000                    20
      7934 MILLER     CLERK           7782 23-JAN-82       1300                    10

14 rows selected.

SQL> ALTER TABLE EMP
  2  DROP COLUMN MGR;

Table altered.

SQL> SELECT * FROM EMP;

     EMPNO ENAME      JOB       HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK     17-DEC-80        800                    20
      7499 ALLEN      SALESMAN  20-FEB-81       1600        300         30
      7521 WARD       SALESMAN  22-FEB-81       1250        500         30
      7566 JONES      MANAGER   02-APR-81       2975                    20
      7654 MARTIN     SALESMAN  28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER   01-MAY-81       2850                    30
      7782 CLARK      MANAGER   09-JUN-81       2450                    10
      7788 SCOTT      ANALYST   19-APR-87       3000                    20
      7839 KING       PRESIDENT 17-NOV-81       5000                    10
      7844 TURNER     SALESMAN  08-SEP-81       1500          0         30
      7876 ADAMS      CLERK     23-MAY-87       1100                    20
      7900 JAMES      CLERK     03-DEC-81        950                    30
      7902 FORD       ANALYST   03-DEC-81       3000                    20
      7934 MILLER     CLERK     23-JAN-82       1300                    10

14 rows selected.

SQL> ALTER TABLE EMP
  2  RENAME TO EMPSS;

Table altered.

SQL> SELECT * FROM EMPSS;

     EMPNO ENAME      JOB       HIREDATE         SAL       COMM     DEPTNO
---------- ---------- --------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK     17-DEC-80        800                    20
      7499 ALLEN      SALESMAN  20-FEB-81       1600        300         30
      7521 WARD       SALESMAN  22-FEB-81       1250        500         30
      7566 JONES      MANAGER   02-APR-81       2975                    20
      7654 MARTIN     SALESMAN  28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER   01-MAY-81       2850                    30
      7782 CLARK      MANAGER   09-JUN-81       2450                    10
      7788 SCOTT      ANALYST   19-APR-87       3000                    20
      7839 KING       PRESIDENT 17-NOV-81       5000                    10
      7844 TURNER     SALESMAN  08-SEP-81       1500          0         30
      7876 ADAMS      CLERK     23-MAY-87       1100                    20
      7900 JAMES      CLERK     03-DEC-81        950                    30
      7902 FORD       ANALYST   03-DEC-81       3000                    20
      7934 MILLER     CLERK     23-JAN-82       1300                    10

14 rows selected.

SQL> ALTER TABLE EMPSS
  2  RENAME COLUMN SAL TO SALARY;

Table altered.

SQL> SELECT * FROM EMPSS;

     EMPNO ENAME      JOB       HIREDATE      SALARY       COMM     DEPTNO
---------- ---------- --------- --------- ---------- ---------- ----------
      7369 SMITH      CLERK     17-DEC-80        800                    20
      7499 ALLEN      SALESMAN  20-FEB-81       1600        300         30
      7521 WARD       SALESMAN  22-FEB-81       1250        500         30
      7566 JONES      MANAGER   02-APR-81       2975                    20
      7654 MARTIN     SALESMAN  28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER   01-MAY-81       2850                    30
      7782 CLARK      MANAGER   09-JUN-81       2450                    10
      7788 SCOTT      ANALYST   19-APR-87       3000                    20
      7839 KING       PRESIDENT 17-NOV-81       5000                    10
      7844 TURNER     SALESMAN  08-SEP-81       1500          0         30
      7876 ADAMS      CLERK     23-MAY-87       1100                    20
      7900 JAMES      CLERK     03-DEC-81        950                    30
      7902 FORD       ANALYST   03-DEC-81       3000                    20
      7934 MILLER     CLERK     23-JAN-82       1300                    10

14 rows selected.

SQL> UPDATE EMPSS
  2  SET
  3  SALARY=25000, JOB='DEVELOPER' WHERE ENAME='SMITH';

1 row updated.

SQL> SELECT * FROM EMPSS;

     EMPNO ENAME      JOB       HIREDATE      SALARY       COMM     DEPTNO
---------- ---------- --------- --------- ---------- ---------- ----------
      7369 SMITH      DEVELOPER 17-DEC-80      25000                    20
      7499 ALLEN      SALESMAN  20-FEB-81       1600        300         30
      7521 WARD       SALESMAN  22-FEB-81       1250        500         30
      7566 JONES      MANAGER   02-APR-81       2975                    20
      7654 MARTIN     SALESMAN  28-SEP-81       1250       1400         30
      7698 BLAKE      MANAGER   01-MAY-81       2850                    30
      7782 CLARK      MANAGER   09-JUN-81       2450                    10
      7788 SCOTT      ANALYST   19-APR-87       3000                    20
      7839 KING       PRESIDENT 17-NOV-81       5000                    10
      7844 TURNER     SALESMAN  08-SEP-81       1500          0         30
      7876 ADAMS      CLERK     23-MAY-87       1100                    20
      7900 JAMES      CLERK     03-DEC-81        950                    30
      7902 FORD       ANALYST   03-DEC-81       3000                    20
      7934 MILLER     CLERK     23-JAN-82       1300                    10

14 rows selected.

SQL> ALTER TABLE EMPSS
  2  MODIFY ENAME VARCHAR2(15);

Table altered.

SQL> SELECT * FROM EMPSS;

     EMPNO ENAME           JOB       HIREDATE      SALARY       COMM     DEPTNO
---------- --------------- --------- --------- ---------- ---------- ----------
      7369 SMITH           DEVELOPER 17-DEC-80      25000                    20
      7499 ALLEN           SALESMAN  20-FEB-81       1600        300         30
      7521 WARD            SALESMAN  22-FEB-81       1250        500         30
      7566 JONES           MANAGER   02-APR-81       2975                    20
      7654 MARTIN          SALESMAN  28-SEP-81       1250       1400         30
      7698 BLAKE           MANAGER   01-MAY-81       2850                    30
      7782 CLARK           MANAGER   09-JUN-81       2450                    10
      7788 SCOTT           ANALYST   19-APR-87       3000                    20
      7839 KING            PRESIDENT 17-NOV-81       5000                    10
      7844 TURNER          SALESMAN  08-SEP-81       1500          0         30
      7876 ADAMS           CLERK     23-MAY-87       1100                    20
      7900 JAMES           CLERK     03-DEC-81        950                    30
      7902 FORD            ANALYST   03-DEC-81       3000                    20
      7934 MILLER          CLERK     23-JAN-82       1300                    10

14 rows selected.
