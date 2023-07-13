
SQL> create table emps
  2  (
  3  empid number(5),
  4  ename varchar2(15),
  5  salary number(6),
  6  desg varchar2(15),
  7  joindt date
  8  );

Table created.

SQL> insert into emps values(1901,'harsha',55000,'developer','22-jun-2022');

1 row created.

SQL> insert into emps values(1923,'architha',50000,'developer','10-jun-2022');

1 row created.

SQL> insert into emps values(1900,'raj',30000,'developer','10-aug-2022');

1 row created.

SQL> insert into emps values(1920,'swathi',35000,'developer','14-feb-2023');

1 row created.

SQL> insert into emps values(1905,'wazid',32000,'developer','20-mar-2023');

1 row created.

SQL> insert into emps values(1904,'ananya',40000,'developer','25-aug-2022');

1 row created.

SQL> insert into emps values(1906,'raji',45000,'manager','11-jun-2022');

1 row created.

SQL> insert into emps values(null,'bhavya',20000,'clerk','27-aug-2022');

1 row created.

SQL> insert into emps values(1933,'jahnavi',25000,'manager',null);

1 row created.

SQL> insert into emps values(1942,'deva',40000,'manager','30-dec-2022');

1 row created.

SQL> insert into emps values(1908,'varsha',32000,'clerk','29-oct-2022');

1 row created.

SQL> insert into emps values(1910,'sahasra',50000,'admin','14-sep-2022');

1 row created.

SQL> set linesize 150;
SQL> set pagesize 100;
SQL> select * from emps;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1901 harsha               55000 developer       22-JUN-22
      1923 architha             50000 developer       10-JUN-22
      1900 raj                  30000 developer       10-AUG-22
      1920 swathi               35000 developer       14-FEB-23
      1905 wazid                32000 developer       20-MAR-23
      1904 ananya               40000 developer       25-AUG-22
      1906 raji                 45000 manager         11-JUN-22
           bhavya               20000 clerk           27-AUG-22
      1933 jahnavi              25000 manager
      1942 deva                 40000 manager         30-DEC-22
      1908 varsha               32000 clerk           29-OCT-22
      1910 sahasra              50000 admin           14-SEP-22

12 rows selected.


SQL> select ename from emps;

ENAME
---------------
harsha
architha
raj
swathi
wazid
ananya
raji
bhavya
jahnavi
deva
varsha
sahasra

12 rows selected.

SQL> select empid,salary from emps;

     EMPID     SALARY
---------- ----------
      1901      55000
      1923      50000
      1900      30000
      1920      35000
      1905      32000
      1904      40000
      1906      45000
                20000
      1933      25000
      1942      40000
      1908      32000
      1910      50000

12 rows selected.

SQL> select desg, ename,salary from emps;

DESG            ENAME               SALARY
--------------- --------------- ----------
developer       harsha               55000
developer       architha             50000
developer       raj                  30000
developer       swathi               35000
developer       wazid                32000
developer       ananya               40000
manager         raji                 45000
clerk           bhavya               20000
manager         jahnavi              25000
manager         deva                 40000
clerk           varsha               32000
admin           sahasra              50000

12 rows selected.

SQL> select distinct desg from emps;

DESG
---------------
developer
clerk
manager
admin

SQL> select ename from emps order by ename;

ENAME
---------------
ananya
architha
bhavya
deva
harsha
jahnavi
raj
raji
sahasra
swathi
varsha
wazid

12 rows selected.

SQL> select salary from emps order by salary desc;

    SALARY
----------
     55000
     50000
     50000
     45000
     40000
     40000
     35000
     32000
     32000
     30000
     25000
     20000

12 rows selected.

SQL> select ename from emps order by desg;

ENAME
---------------
sahasra
bhavya
varsha
swathi
wazid
raj
architha
harsha
ananya
deva
raji
jahnavi

12 rows selected.

SQL> select * from emps order by salary;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
           bhavya               20000 clerk           27-AUG-22
      1933 jahnavi              25000 manager
      1900 raj                  30000 developer       10-AUG-22
      1908 varsha               32000 clerk           29-OCT-22
      1905 wazid                32000 developer       20-MAR-23
      1920 swathi               35000 developer       14-FEB-23
      1904 ananya               40000 developer       25-AUG-22
      1942 deva                 40000 manager         30-DEC-22
      1906 raji                 45000 manager         11-JUN-22
      1923 architha             50000 developer       10-JUN-22
      1910 sahasra              50000 admin           14-SEP-22
      1901 harsha               55000 developer       22-JUN-22

12 rows selected.

SQL> select * from emps order by joindt;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1923 architha             50000 developer       10-JUN-22
      1906 raji                 45000 manager         11-JUN-22
      1901 harsha               55000 developer       22-JUN-22
      1900 raj                  30000 developer       10-AUG-22
      1904 ananya               40000 developer       25-AUG-22
           bhavya               20000 clerk           27-AUG-22
      1910 sahasra              50000 admin           14-SEP-22
      1908 varsha               32000 clerk           29-OCT-22
      1942 deva                 40000 manager         30-DEC-22
      1920 swathi               35000 developer       14-FEB-23
      1905 wazid                32000 developer       20-MAR-23
      1933 jahnavi              25000 manager

12 rows selected.

SQL> select * from emps order by salary desc,desg;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1901 harsha               55000 developer       22-JUN-22
      1910 sahasra              50000 admin           14-SEP-22
      1923 architha             50000 developer       10-JUN-22
      1906 raji                 45000 manager         11-JUN-22
      1904 ananya               40000 developer       25-AUG-22
      1942 deva                 40000 manager         30-DEC-22
      1920 swathi               35000 developer       14-FEB-23
      1908 varsha               32000 clerk           29-OCT-22
      1905 wazid                32000 developer       20-MAR-23
      1900 raj                  30000 developer       10-AUG-22
      1933 jahnavi              25000 manager
           bhavya               20000 clerk           27-AUG-22

12 rows selected.

SQL> select * from emps order by desg, salary desc;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1910 sahasra              50000 admin           14-SEP-22
      1908 varsha               32000 clerk           29-OCT-22
           bhavya               20000 clerk           27-AUG-22
      1901 harsha               55000 developer       22-JUN-22
      1923 architha             50000 developer       10-JUN-22
      1904 ananya               40000 developer       25-AUG-22
      1920 swathi               35000 developer       14-FEB-23
      1905 wazid                32000 developer       20-MAR-23
      1900 raj                  30000 developer       10-AUG-22
      1906 raji                 45000 manager         11-JUN-22
      1942 deva                 40000 manager         30-DEC-22
      1933 jahnavi              25000 manager

12 rows selected.


SQL>  select empid, ename, salary, desg, joindt ,(salary*12) as total from emps;     
     EMPID ENAME               SALARY DESG            JOINDT         TOTAL
---------- --------------- ---------- --------------- --------- ----------
      1901 harsha               55000 developer       22-JUN-22     660000
      1923 architha             50000 developer       10-JUN-22     600000
      1900 raj                  30000 developer       10-AUG-22     360000
      1920 swathi               35000 developer       14-FEB-23     420000
      1905 wazid                32000 developer       20-MAR-23     384000
      1904 ananya               40000 developer       25-AUG-22     480000
      1906 raji                 45000 manager         11-JUN-22     540000
           bhavya               20000 clerk           27-AUG-22     240000
      1933 jahnavi              25000 manager                       300000
      1942 deva                 40000 manager         30-DEC-22     480000
      1908 varsha               32000 clerk           29-OCT-22     384000
      1910 sahasra              50000 admin           14-SEP-22     600000

12 rows selected.

SQL>  select empid, ename, salary, desg, joindt ,(salary*12) as total from emps
  2  order by salary;

     EMPID ENAME               SALARY DESG            JOINDT         TOTAL
---------- --------------- ---------- --------------- --------- ----------
           bhavya               20000 clerk           27-AUG-22     240000
      1933 jahnavi              25000 manager                       300000
      1900 raj                  30000 developer       10-AUG-22     360000
      1908 varsha               32000 clerk           29-OCT-22     384000
      1905 wazid                32000 developer       20-MAR-23     384000
      1920 swathi               35000 developer       14-FEB-23     420000
      1904 ananya               40000 developer       25-AUG-22     480000
      1942 deva                 40000 manager         30-DEC-22     480000
      1906 raji                 45000 manager         11-JUN-22     540000
      1923 architha             50000 developer       10-JUN-22     600000
      1910 sahasra              50000 admin           14-SEP-22     600000
      1901 harsha               55000 developer       22-JUN-22     660000

12 rows selected.

SQL>  select empid, ename, salary,(salary*12) as bonus, salary+(salary*0.2) as total from emps;

     EMPID ENAME               SALARY      BONUS      TOTAL
---------- --------------- ---------- ---------- ----------
      1901 harsha               55000     660000      66000
      1923 architha             50000     600000      60000
      1900 raj                  30000     360000      36000
      1920 swathi               35000     420000      42000
      1905 wazid                32000     384000      38400
      1904 ananya               40000     480000      48000
      1906 raji                 45000     540000      54000
           bhavya               20000     240000      24000
      1933 jahnavi              25000     300000      30000
      1942 deva                 40000     480000      48000
      1908 varsha               32000     384000      38400
      1910 sahasra              50000     600000      60000

12 rows selected.


SQL> select * from emps where empid='1933';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1933 jahnavi              25000 manager

SQL> select empid, salary from emps where desg='clerk';

     EMPID     SALARY
---------- ----------
                20000
      1908      32000

SQL> select ename from emps where desg='manager';

ENAME
---------------
raji
jahnavi
deva

SQL> select ename, salary from emps where desg='developer';

ENAME               SALARY
--------------- ----------
harsha               55000
architha             50000
raj                  30000
swathi               35000
wazid                32000
ananya               40000

6 rows selected.

SQL> select ename,salary from emps where salary<40000;

ENAME               SALARY
--------------- ----------
raj                  30000
swathi               35000
wazid                32000
bhavya               20000
jahnavi              25000
varsha               32000

6 rows selected.

SQL> select ename from emps where salary<40000;

ENAME
---------------
raj
swathi
wazid
bhavya
jahnavi
varsha

6 rows selected.

SQL> select * from emps where salary>50000;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1901 harsha               55000 developer       22-JUN-22

SQL> select ename,salary from emps where salary<50000;

ENAME               SALARY
--------------- ----------
raj                  30000
swathi               35000
wazid                32000
ananya               40000
raji                 45000
bhavya               20000
jahnavi              25000
deva                 40000
varsha               32000

9 rows selected.
