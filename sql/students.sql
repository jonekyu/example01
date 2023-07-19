/* ���̺���� */

create table students(
  sno char(6) not null primary key, /*�й�*/
  sname varchar(20) not null, /*�̸�*/
  dept varchar(20) not null, /*�а�*/
  birthday date, /*�������*/
  year int default 1 /*�г�*/
);

-- ���̺���
desc students;

--���̺����
drop table students; 

insert into students(sno, sname, dept)
values('202301', 'ȫ�浿', '����');
insert into students(sno, sname, dept, birthday)
values('202302', '��û��', '����', '2000-10-04');
insert into students(sno, sname, dept, birthday)
values('202303', '�̼���', '����', '2000-12-17');

select * from students;
select * from students where sno='202302';
select * from students where sname like '%��%';
select * from students where sname like '%��%' order by birthday desc;

select max(sno)+1 newno 
from students;

update students 
set birthday='2000-01-01' 
where sno='202301';

delete from students
where sno='202301';

commit;
