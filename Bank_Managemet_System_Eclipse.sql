CREATE DATABASE bankSystem;

USE bankSystem;

create table signup(
	formno varchar(20), 
    name varchar(20), 
    fname varchar (20), 
    dob varchar(30), 
    gender varchar(20),
    email varchar(30), 
    marital varchar(20), 
    address varchar(40), 
    city varchar(25), 
    pincode varchar(20), 
    state varchar(25)
);
DROP TABLE signup;

create table signuptwo(
	formno varchar(20), 
    rel varchar(20), 
    cate varchar(20), 
    inc varchar(20), 
    edu varchar(20), 
    occ varchar(20), 
    pan varchar(20), 
    addhar varchar(20), 
    scitizen varchar(20), 
    eAccount varchar(20)
);

create table signupthree(
	formno varchar(20), 
    atype varchar(40), 
    cardno varchar(25), 
    pin varchar(10), 
    fac varchar(100)
);
DROP TABLE signupthree;

create table login(
	formno varchar(20), 
    cardno varchar(25), 
    pin varchar(10)
);

create table bank(
	pin varchar(10), 
    date varchar(30),
    type varchar(20),
    amount varchar(20)
);
drop table bank;


/* View Data in Tables*/

SELECT * FROM signup;
SELECT * FROM signuptwo;
SELECT * FROM signupthree;
SELECT * FROM login;
SELECT * FROM bank;

SELECT * FROM signup as a
LEFT JOIN signuptwo as b
ON a.formno = b.formno
UNION
SELECT * FROM signup as a
RIGHT JOIN signuptwo as b
ON a.formno = b.formno;


SELECT *
FROM signup AS s
LEFT JOIN signuptwo AS s2 ON s.formno = s2.formno
LEFT JOIN signupthree AS s3 ON s.formno = s3.formno
LEFT JOIN login AS l ON s.formno = l.formno
LEFT JOIN bank AS b ON l.pin = b.pin;

