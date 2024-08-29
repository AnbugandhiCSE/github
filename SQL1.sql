-- set autocommit=0; (when autocommit not worked properly;

create database sql2;
use sql2;

drop table tab; 
drop table tab2;
drop table tab3;
drop table tab4;
select *from tab3;

insert into tab (namee,dept,sal) values ("Anbu","CSE",80000),("Vijay","EEE",100000),("Arjun","ECE",150000);
create table tab ( slno  bigint , namee varchar(20) primary key, dept varchar(20), sal int, foreign key (namee) references tab2(name1));



insert into tab2 values ("Anbu","TKP",29),("Vijay","APK",25),("Arjun","CHENNAI",30),("Sakthi","annanagar",100000);
create table tab2 (name1 varchar (25)primary key,native varchar(18),age int);

insert into tab3 (namee,dept,sal) values ("Anbu","CSE",80000),("Vijay","EEE",100000),("Arjun","ECE",150000),("Sakthi","EEE",100000);
create table tab3 ( slno  bigint auto_increment unique, namee varchar(20) primary key, dept varchar(20), sal int);
select *from tab4;


insert into tab4 values ("Anbu","TKP",29,"cse"),("Vijay","APK",25,"EEE"),("Arjun","CHENNAI",30,"ECE"),("Dino","mallan",23,"MBBS");
create table tab4 (namee varchar (25)primary key,native varchar(18),age int,dept varchar (25));

select slno,tab3.namee,age,sal,tab3.dept from tab3 join tab4;
select slno,tab3.namee,age,sal,tab3.dept from tab3 right outer join tab4 on tab3.namee=tab4.namee where tab4.namee="dino";
select slno,tab4.namee,age,sal,tab4.dept from tab3 right outer join tab4 on tab3.namee=tab4.namee;
select slno,tab4.namee,age,sal,tab4.dept from tab3 left outer join tab4 on tab3.namee=tab4.namee;
select slno,tab4.namee,age,sal,tab4.dept from tab3 full  join tab4 on tab3.namee=tab4.namee;
select slno,tab3.namee,age,sal,tab3.dept from tab3 left join tab4 on tab3.namee=tab4.namee;
select slno,tab3.namee,age,sal,tab3.dept from tab3 inner join tab4 on tab3.namee=tab4.namee;
select slno,namee,age,sal from tab3 inner join tab2 on name1=namee;
select slno,namee,age,sal from tab3 inner join tab2 on namee=name1;
select slno,namee,age,sal from tab2 inner join tab3 on namee=name1;
select slno,namee,age,sal from tab2 inner join tab3 on name1=namee;

select *from tab;
alter table tab add column phno bigint first;
alter table tab modify column phno bigint after dept;
update tab set phno=8508428784 where slno=10;
update tab set phno=9894635285 where slno=11;
update tab set phno=9028153881 where slno=12;
update tab set phno=7928153881 where slno=13;

insert into tab5 values ("Anbu","TKP",29),("Vijay","APK",25),("Arjun","CHENNAI",30),("Dino","mallan",23);
create table tab5 (namee varchar (25)primary key,native varchar(18),age int);

insert into tab6 values ("Anbu","cse",2900),("Vijay","EEE",2500),("Arjun","ECE",30),("Dino","MBBS",23);
create table tab6 (name1 varchar (25)primary key,dept varchar (27),sal int);

select tab3.namee,age,sal,tab3.dept from tab3 join tab4;

select *from tab4;
insert into tab4 values (101,103,"Anbu","TKP",29,"cse"),(102,108,"Vijay","APK",25,"EEE"),(103,104,"Arjun","CHENNAI",30,"ECE"),(104,103,"Dino","mallan",23,"MBBS");
create table tab4 (id int,mid int,ename varchar (25)primary key,native varchar(18),age int,dept varchar (25));
drop table tab4;
select e1.native,e1.age,e1.ename as empl,e2.ename as manager from tab4 as e1, tab4 as e2 where e1.mid=e2.id;
select e1.ename as empl,e2.ename as manager from tab4 as e1, tab4 as e2 where e2.id=e1.mid;
select e2.ename as empl,e1.ename as manager from tab4 as e1, tab4 as e2 where e1.id=e2.mid;

create or replace view view1 as select id, mid, ename, age,dept from tab4;
select ename,dept from view1;










create table tab1 ( slno  bigint , namee varchar(20) primary key, dept varchar(20), sal int , aano bigint default (uuid()));
insert into tab1 (namee,dept,sal,aano) values ("Anbu","CSE",80000,200),("Vijay","EEE",100000,302),("Arjun","ECE",150000,1937),("Sakthi","EEE",100000,1928);
select *from tab1;