/* 테이블생성 */

create table students(
  sno char(6) not null primary key, /*학번*/
  sname varchar(20) not null, /*이름*/
  dept varchar(20) not null, /*학과*/
  birthday date, /*생년월일*/
  year int default 1 /*학년*/
);

-- 테이블구조
desc students;

--테이블삭제
drop table students; 

insert into students(sno, sname, dept)
values('202301', '홍길동', '컴정');
insert into students(sno, sname, dept, birthday)
values('202302', '심청이', '컴정', '2000-10-04');
insert into students(sno, sname, dept, birthday)
values('202303', '이순신', '컴정', '2000-12-17');

select * from students;
select * from students where sno='202302';
select * from students where sname like '%이%';
select * from students where sname like '%이%' order by birthday desc;

select max(sno)+1 newno 
from students;

update students 
set birthday='2000-01-01' 
where sno='202301';

delete from students
where sno='202301';

commit;
