
SQL> create table student
  2  (
  3  rno number(2)
  4  constraint pk_rno_student primary key,
  5  sname varchar2(10)
  6  constraint nn_sname_student not null,
  7  course varchar2(10)
  8  constraint nn_course_student not null,
  9  fee number(5)
 10  constraint nn_fee_student not null,
 11  phno number(10)
 12  constraint nn_phno_student unique
 13  );

Table created.

SQL> insert into student values(11,'piyush','java',5000,798712524);

1 row created.

SQL> insert into student values(11,'piyush','java',5000,798712);
insert into student values(11,'piyush','java',5000,798712)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.PK_RNO_STUDENT) violated


SQL> insert into student values(11,'piyush','java',5000,7987125247);
insert into student values(11,'piyush','java',5000,7987125247)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.PK_RNO_STUDENT) violated


SQL> insert into student values(12,'piyush','java',5000,7987125247);

1 row created.

SQL> insert into student values(12,'ram','python',4000,7987125247);
insert into student values(12,'ram','python',4000,7987125247)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.PK_RNO_STUDENT) violated


SQL> insert into student values(13,'ram','python',4000,7987125247);
insert into student values(13,'ram','python',4000,7987125247)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.NN_PHNO_STUDENT) violated


SQL> insert into student values(13,'ram','python',4000,7987125288);

1 row created.

SQL> select * from student;

       RNO SNAME      COURSE            FEE       PHNO
---------- ---------- ---------- ---------- ----------
        11 piyush     java             5000  798712524
        12 piyush     java             5000 7987125247
        13 ram        python           4000 7987125288

SQL> select CONSTRAINT_NAME, CONSTRAINT_TYPE
  2  from USER_CONSTRAINTS
  3  WHERE TABLE_NAME='STUDENT';

CONSTRAINT_NAME                C
------------------------------ -
NN_SNAME_STUDENT               C
NN_COURSE_STUDENT              C
NN_FEE_STUDENT                 C
PK_RNO_STUDENT                 P
NN_PHNO_STUDENT                U
