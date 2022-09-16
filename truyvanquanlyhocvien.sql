use quanlyhocvien;
select count(id) from student;
select count(student.id),address from student inner join address on student.address_id = address.id and address.id = 1;
select count(student.id),address from student inner join address on student.address_id = address.id and address.id = 2;
select count(student.id),address from student inner join address on student.address_id = address.id and address.id = 3;
select count(student.id),address from student inner join address on student.address_id = address.id and address.id = 4;
select count(student.id),address from student inner join address on student.address_id = address.id and address.id = 5;
select avg(thepoint),name from points inner join course on course.id = points.course_id and course.id = 2;
select avg(thepoint),name from points inner join course on course.id = points.course_id and course.id = 1;
select C.id, C.name, avg(thepoint)
from course C join points P on c.id = P.course_id
group by c.id, c.name
having avg(thepoint) >= all (select avg(thepoint) from points group by points.course_id);
