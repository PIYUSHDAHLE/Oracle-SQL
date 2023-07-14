SQL> create table student
  2  (
  3  rno number(2) primary key,
  4  sname varchar2(10) not null,
  5  course varchar(10) not null,
  6  fee number(5) not null,
  7  phno number(10) unique
  8  );

Table created.

SQL> insert into student values(1,'swati','python',5000,7987521466);

1 row created.

SQL> insert into student values(1,'swati','python',5000,798752146);
insert into student values(1,'swati','python',5000,798752146)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.SYS_C007026) violated


SQL> insert into student values(2,'ram','oracle',2000,7987125247);

1 row created.

SQL> insert into student values(3,'krishna','java',6000,9897125255);

1 row created.


SQL> select CONSTRAINT_NAME, CONSTRAINT_TYPE
  2  from USER_CONSTRAINTS
  3  where TABLE_NAME='STUDENT';

CONSTRAINT_NAME                C
------------------------------ -
SYS_C007023                    C
SYS_C007024                    C
SYS_C007025                    C
SYS_C007026                    P
SYS_C007027                    U
