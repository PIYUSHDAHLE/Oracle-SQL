
SQL> select * from emps where joindt between '01-jan-2022' and '31-dec-2022';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1901 harsha               55000 developer       22-JUN-22
      1923 architha             50000 developer       10-JUN-22
      1900 raj                  30000 developer       10-AUG-22
      1904 ananya               40000 developer       25-AUG-22
      1906 raji                 45000 manager         11-JUN-22
           bhavya               20000 clerk           27-AUG-22
      1942 deva                 40000 manager         30-DEC-22
      1908 varsha               32000 clerk           29-OCT-22
      1910 sahasra              50000 admin           14-SEP-22

9 rows selected.

SQL> select * from emps where joindt between '01-jan-2022' and '31-dec-2022' order by joindt;

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

9 rows selected.

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

SQL> select * from emps where salary between 30000 and 50000;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1923 architha             50000 developer       10-JUN-22
      1900 raj                  30000 developer       10-AUG-22
      1920 swathi               35000 developer       14-FEB-23
      1905 wazid                32000 developer       20-MAR-23
      1904 ananya               40000 developer       25-AUG-22
      1906 raji                 45000 manager         11-JUN-22
      1942 deva                 40000 manager         30-DEC-22
      1908 varsha               32000 clerk           29-OCT-22
      1910 sahasra              50000 admin           14-SEP-22

9 rows selected.

SQL> select * from emps where salary between 30000 and 50000 order by salary;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1900 raj                  30000 developer       10-AUG-22
      1908 varsha               32000 clerk           29-OCT-22
      1905 wazid                32000 developer       20-MAR-23
      1920 swathi               35000 developer       14-FEB-23
      1904 ananya               40000 developer       25-AUG-22
      1942 deva                 40000 manager         30-DEC-22
      1906 raji                 45000 manager         11-JUN-22
      1923 architha             50000 developer       10-JUN-22
      1910 sahasra              50000 admin           14-SEP-22

9 rows selected.

SQL> select * from emps where empid in(1900,1904,1920);

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1900 raj                  30000 developer       10-AUG-22
      1920 swathi               35000 developer       14-FEB-23
      1904 ananya               40000 developer       25-AUG-22




SQL> select * from emps where ename in('deva','raj');

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1900 raj                  30000 developer       10-AUG-22
      1942 deva                 40000 manager         30-DEC-22



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

SQL> select * from emps where joindt is null;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1933 jahnavi              25000 manager

SQL> select * from emps where empid is null;

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
           bhavya               20000 clerk           27-AUG-22

SQL> select * from emps where ename like '____';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1906 raji                 45000 manager         11-JUN-22
      1942 deva                 40000 manager         30-DEC-22

SQL> select * from emps where ename like '___';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1900 raj                  30000 developer       10-AUG-22

SQL> select * from emps where ename like '______';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1901 harsha               55000 developer       22-JUN-22
      1920 swathi               35000 developer       14-FEB-23
      1904 ananya               40000 developer       25-AUG-22
           bhavya               20000 clerk           27-AUG-22
      1908 varsha               32000 clerk           29-OCT-22

SQL> select * from emps where ename like 'a%';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1923 architha             50000 developer       10-JUN-22
      1904 ananya               40000 developer       25-AUG-22

SQL> select * from emps where ename like 'r%';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1900 raj                  30000 developer       10-AUG-22
      1906 raji                 45000 manager         11-JUN-22

SQL> select * from emps where ename like '%i';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1920 swathi               35000 developer       14-FEB-23
      1906 raji                 45000 manager         11-JUN-22
      1933 jahnavi              25000 manager

SQL> select * from emps where ename like '%a';

     EMPID ENAME               SALARY DESG            JOINDT
---------- --------------- ---------- --------------- ---------
      1901 harsha               55000 developer       22-JUN-22
      1923 architha             50000 developer       10-JUN-22
      1904 ananya               40000 developer       25-AUG-22
           bhavya               20000 clerk           27-AUG-22
      1942 deva                 40000 manager         30-DEC-22
      1908 varsha               32000 clerk           29-OCT-22
      1910 sahasra              50000 admin           14-SEP-22

7 rows selected.

