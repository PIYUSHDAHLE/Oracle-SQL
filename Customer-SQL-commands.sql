
SQL> create table cust
  2  (
  3  custid varchar2(4),
  4  cname varchar2(15),
  5  city varchar2(15),
  6  gender varchar2(1),
  7  phno number(10)
  8  );

Table created.

SQL> insert into cust values('c101','hari krishna','hyderabad','m',9800198001);

1 row created.

SQL> insert into cust values('c100','ravi teja','hyderabad','m',9877687667);

1 row created.

SQL> insert into cust values('c200','vikram raj','chennai','m',8790687906);

1 row created.

SQL> insert into cust values('c205','rama krishna','chennai','m',8765987659);

1 row created.

SQL> insert into cust values('c301','trisha','chennai','f',null);

1 row created.

SQL> insert into cust values('c201','kruthi','hyderabad','f',6789067890);

1 row created.

SQL> insert into cust values('c119','kajal','mumbai','f',7890178901);

1 row created.

SQL> insert into cust values('c115','arjun','chennai','m',9988770022);

1 row created.

SQL> insert into cust values('c345','vijay antony','chennai','m',7890278902);

1 row created.

SQL> insert into cust values('c245','samyuktha','kerala','f',null);

1 row created.

SQL> insert into cust values('c321','samantha','chennai','f',6566676869);

1 row created.

SQL> insert into cust values('c392','pooja','bangalore','f',8976689766);

1 row created.

SQL> insert into cust values('c004','ranvi kapoor','mumbai','f',7888981828);

1 row created.

SQL> insert into cust values('c005','ishan','mumbai','m',7788991122);

1 row created.

SQL> select * from cust;

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c101 hari krishna    hyderabad       m 9800198001
c100 ravi teja       hyderabad       m 9877687667
c200 vikram raj      chennai         m 8790687906
c205 rama krishna    chennai         m 8765987659
c301 trisha          chennai         f
c201 kruthi          hyderabad       f 6789067890
c119 kajal           mumbai          f 7890178901
c115 arjun           chennai         m 9988770022
c345 vijay antony    chennai         m 7890278902
c245 samyuktha       kerala          f
c321 samantha        chennai         f 6566676869
c392 pooja           bangalore       f 8976689766
c004 ranvi kapoor    mumbai          f 7888981828
c005 ishan           mumbai          m 7788991122

14 rows selected.

SQL> select cname from cust;

CNAME
---------------
hari krishna
ravi teja
vikram raj
rama krishna
trisha
kruthi
kajal
arjun
vijay antony
samyuktha
samantha
pooja
ranvi kapoor
ishan

14 rows selected.

SQL> select cname from cust order by cname;

CNAME
---------------
arjun
hari krishna
ishan
kajal
kruthi
pooja
rama krishna
ranvi kapoor
ravi teja
samantha
samyuktha
trisha
vijay antony
vikram raj

14 rows selected.

SQL> select * from cust where city='mumbai';

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c119 kajal           mumbai          f 7890178901
c004 ranvi kapoor    mumbai          f 7888981828
c005 ishan           mumbai          m 7788991122

SQL> select * from cust where gender='m';

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c101 hari krishna    hyderabad       m 9800198001
c100 ravi teja       hyderabad       m 9877687667
c200 vikram raj      chennai         m 8790687906
c205 rama krishna    chennai         m 8765987659
c115 arjun           chennai         m 9988770022
c345 vijay antony    chennai         m 7890278902
c005 ishan           mumbai          m 7788991122

7 rows selected.

SQL> select * from cust where gender='f';

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c301 trisha          chennai         f
c201 kruthi          hyderabad       f 6789067890
c119 kajal           mumbai          f 7890178901
c245 samyuktha       kerala          f
c321 samantha        chennai         f 6566676869
c392 pooja           bangalore       f 8976689766
c004 ranvi kapoor    mumbai          f 7888981828

7 rows selected.

SQL> select * from cust where city='chennai';

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c200 vikram raj      chennai         m 8790687906
c205 rama krishna    chennai         m 8765987659
c301 trisha          chennai         f
c115 arjun           chennai         m 9988770022
c345 vijay antony    chennai         m 7890278902
c321 samantha        chennai         f 6566676869

6 rows selected.

SQL> select phno from cust where cname='arjun';

      PHNO
----------
9988770022

SQL> select city from cust where cname='vikram raj';

CITY
---------------
chennai

SQL> select * from cust order by custid;

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c004 ranvi kapoor    mumbai          f 7888981828
c005 ishan           mumbai          m 7788991122
c100 ravi teja       hyderabad       m 9877687667
c101 hari krishna    hyderabad       m 9800198001
c115 arjun           chennai         m 9988770022
c119 kajal           mumbai          f 7890178901
c200 vikram raj      chennai         m 8790687906
c201 kruthi          hyderabad       f 6789067890
c205 rama krishna    chennai         m 8765987659
c245 samyuktha       kerala          f
c301 trisha          chennai         f
c321 samantha        chennai         f 6566676869
c345 vijay antony    chennai         m 7890278902
c392 pooja           bangalore       f 8976689766

14 rows selected.

SQL> select * from cust where phno='7888981828';

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c004 ranvi kapoor    mumbai          f 7888981828

SQL> select * from cust order by gender;

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c119 kajal           mumbai          f 7890178901
c004 ranvi kapoor    mumbai          f 7888981828
c392 pooja           bangalore       f 8976689766
c321 samantha        chennai         f 6566676869
c245 samyuktha       kerala          f
c201 kruthi          hyderabad       f 6789067890
c301 trisha          chennai         f
c005 ishan           mumbai          m 7788991122
c345 vijay antony    chennai         m 7890278902
c115 arjun           chennai         m 9988770022
c205 rama krishna    chennai         m 8765987659
c200 vikram raj      chennai         m 8790687906
c100 ravi teja       hyderabad       m 9877687667
c101 hari krishna    hyderabad       m 9800198001

14 rows selected.

SQL> select * from cust order by city;

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c392 pooja           bangalore       f 8976689766
c345 vijay antony    chennai         m 7890278902
c115 arjun           chennai         m 9988770022
c200 vikram raj      chennai         m 8790687906
c205 rama krishna    chennai         m 8765987659
c301 trisha          chennai         f
c321 samantha        chennai         f 6566676869
c101 hari krishna    hyderabad       m 9800198001
c100 ravi teja       hyderabad       m 9877687667
c201 kruthi          hyderabad       f 6789067890
c245 samyuktha       kerala          f
c004 ranvi kapoor    mumbai          f 7888981828
c005 ishan           mumbai          m 7788991122
c119 kajal           mumbai          f 7890178901

14 rows selected.

SQL> select * from cust order by gender='m';
select * from cust order by gender='m'
                                  *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select * from cust where gender='m';

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c101 hari krishna    hyderabad       m 9800198001
c100 ravi teja       hyderabad       m 9877687667
c200 vikram raj      chennai         m 8790687906
c205 rama krishna    chennai         m 8765987659
c115 arjun           chennai         m 9988770022
c345 vijay antony    chennai         m 7890278902
c005 ishan           mumbai          m 7788991122

7 rows selected.

SQL> select * from cust where gender='f';

CUST CNAME           CITY            G       PHNO
---- --------------- --------------- - ----------
c301 trisha          chennai         f
c201 kruthi          hyderabad       f 6789067890
c119 kajal           mumbai          f 7890178901
c245 samyuktha       kerala          f
c321 samantha        chennai         f 6566676869
c392 pooja           bangalore       f 8976689766
c004 ranvi kapoor    mumbai          f 7888981828

7 rows selected.

SQL> select cname from cust where city='hyderabad';

CNAME
---------------
hari krishna
ravi teja
kruthi

SQL> select phno from cust where custid='c345';

      PHNO
----------
7890278902

SQL> select distinct city from cust;

CITY
---------------
hyderabad
chennai
mumbai
bangalore
kerala

SQL> select distinct gender from cust;

G
-
m
f
