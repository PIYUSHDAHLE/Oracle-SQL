
SQL> create table student
  2  (
  3  rno number(3),
  4  sname varchar2(10) constraint nn_sname_student not null,
  5  course varchar2(10) constraint nn_course_student not null,
  6  fee number(5) constraint nn_fee_student not null,
  7  phno number(3),
  8  constraint pk_rno_student primary key(rno),
  9  constraint uk_phno_student unique(phno)
 10  );

Table created.

SQL> select * from student;

no rows selected

SQL> insert into student values(1,'piyush','oracle',5000,7987125247)
  2  insert into student values(1,'piyush','oracle',5000,7987125247);
insert into student values(1,'piyush','oracle',5000,7987125247)
*
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> insert into student values(1,'piyush','oracle',5000,7987125247);
insert into student values(1,'piyush','oracle',5000,7987125247)
                                                    *
ERROR at line 1:
ORA-01438: value larger than specified precision allowed for this column


SQL> alter table student
  2  modify phno number(10);

Table altered.

SQL> insert into student values(1,'piyush','oracle',5000,7987125247);

1 row created.

SQL> insert into student values(1,'chunts','java',4000,7788554247);
insert into student values(1,'chunts','java',4000,7788554247)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.PK_RNO_STUDENT) violated


SQL> insert into student values(2,'chunts','java',4000,7788554247);

1 row created.

SQL> insert into student values(,'rahul','python',3000,6633554252);
insert into student values(,'rahul','python',3000,6633554252)
                           *
ERROR at line 1:
ORA-00936: missing expression


SQL> insert into student values(3,'rahul','python',3000,6633554252);

1 row created.

SQL> select * from student;

       RNO SNAME      COURSE            FEE       PHNO
---------- ---------- ---------- ---------- ----------
         1 piyush     oracle           5000 7987125247
         2 chunts     java             4000 7788554247
         3 rahul      python           3000 6633554252
