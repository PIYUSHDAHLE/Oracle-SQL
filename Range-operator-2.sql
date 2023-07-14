SQL> select * from cust;

CUSTID CNAME           CITY            GENDER       PHNO
------ --------------- --------------- ------ ----------
c101   hari krishna    hyderabad       m      9800198001
c100   ravi teja       hyderabad       m      9877687667
c200   vikram raj      chennai         m      8790687906
c205   rama krishna    chennai         m      8765987659
c301   trisha          chennai         f
c201   kruthi          hyderabad       f      6789067890
c119   kajal           mumbai          f      7890178901
c115   arjun           chennai         m      9988770022
c345   vijay antony    chennai         m      7890278902
c245   samyuktha       kerala          f
c321   samantha        chennai         f      6566676869
c392   pooja           bangalore       f      8976689766
c004   ranvi kapoor    mumbai          f      7888981828

13 rows selected.

SQL> select * from cust where phno is not null;

CUSTID CNAME           CITY            GENDER       PHNO
------ --------------- --------------- ------ ----------
c101   hari krishna    hyderabad       m      9800198001
c100   ravi teja       hyderabad       m      9877687667
c200   vikram raj      chennai         m      8790687906
c205   rama krishna    chennai         m      8765987659
c201   kruthi          hyderabad       f      6789067890
c119   kajal           mumbai          f      7890178901
c115   arjun           chennai         m      9988770022
c345   vijay antony    chennai         m      7890278902
c321   samantha        chennai         f      6566676869
c392   pooja           bangalore       f      8976689766
c004   ranvi kapoor    mumbai          f      7888981828

11 rows selected.

SQL> select * from cust where city not in ('hyderabad','chennai');

CUSTID CNAME           CITY            GENDER       PHNO
------ --------------- --------------- ------ ----------
c119   kajal           mumbai          f      7890178901
c245   samyuktha       kerala          f
c392   pooja           bangalore       f      8976689766
c004   ranvi kapoor    mumbai          f      7888981828

SQL> select * from cust where gender not in ('f');

CUSTID CNAME           CITY            GENDER       PHNO
------ --------------- --------------- ------ ----------
c101   hari krishna    hyderabad       m      9800198001
c100   ravi teja       hyderabad       m      9877687667
c200   vikram raj      chennai         m      8790687906
c205   rama krishna    chennai         m      8765987659
c115   arjun           chennai         m      9988770022
c345   vijay antony    chennai         m      7890278902

6 rows selected.

SQL> select * from cust where custid not between 'c100' and 'c200';

CUSTID CNAME           CITY            GENDER       PHNO
------ --------------- --------------- ------ ----------
c205   rama krishna    chennai         m      8765987659
c301   trisha          chennai         f
c201   kruthi          hyderabad       f      6789067890
c345   vijay antony    chennai         m      7890278902
c245   samyuktha       kerala          f
c321   samantha        chennai         f      6566676869
c392   pooja           bangalore       f      8976689766
c004   ranvi kapoor    mumbai          f      7888981828

8 rows selected.
