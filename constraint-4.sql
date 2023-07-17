
SQL> create table stud2
  2  (
  3  rno number(2),
  4  sname varchar2(10) constraint nn_sname_stud2 not null,
  5  course varchar2(10) constraint nn_course_stud2 not null,
  6  fee number(5) constraint nn_fee_stud3 not null,
  7  phno number(10),
  8  constraint pk_rno_stud3 primary key(rno),
  9  constraint uk_phno_stud3 unique(phno),
 10  constraint ck_rno_stud3 check(rno between 1 and 99),
 11  constraint ck_fee_stud3 check(fee between 5000 and 30000),
 12  constraint ck_phno_length_stud3 check(length(phno)=10),
 13  constraint ck_phno_stud3 check(phno like '6%' or phno like '7%' or phno like '8%' or phno like '9%')
 14  );

Table created.

SQL> insert into stud2 values(1,'rahul','python',5000,4523695544)
  2  insert into stud2 values(1,'rahul','python',5000,4523695544);
insert into stud2 values(1,'rahul','python',5000,4523695544)
*
ERROR at line 2:
ORA-00933: SQL command not properly ended


SQL> insert into stud2 values(1,'rahul','python',5000,4523695544);
insert into stud2 values(1,'rahul','python',5000,4523695544)
*
ERROR at line 1:
ORA-02290: check constraint (PIYUSH.CK_PHNO_STUD3) violated


SQL> insert into stud2 values(1,'rahul','python',5000,7523695544);

1 row created.

SQL> insert into stud2 values(1,'rahul','python full stack',25000,7523695544);
insert into stud2 values(1,'rahul','python full stack',25000,7523695544)
                                   *
ERROR at line 1:
ORA-12899: value too large for column "PIYUSH"."STUD2"."COURSE" (actual: 17,
maximum: 10)


SQL> insert into stud2 values(1,'rahul','python fs',25000,7523695544);
insert into stud2 values(1,'rahul','python fs',25000,7523695544)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.PK_RNO_STUD3) violated


SQL> insert into stud2 values(2,'rahul','python fs',25000,7523695544);
insert into stud2 values(2,'rahul','python fs',25000,7523695544)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.UK_PHNO_STUD3) violated


SQL> insert into stud2 values(2,'rahul','python fs',25000,6623695544);

1 row created.

SQL> insert into stud2 values(3,'ram','java',10000,6623695544);
insert into stud2 values(3,'ram','java',10000,6623695544)
*
ERROR at line 1:
ORA-00001: unique constraint (PIYUSH.UK_PHNO_STUD3) violated


SQL> insert into stud2 values(3,'ram','java',10000,9955695544);

1 row created.
