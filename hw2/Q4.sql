-- livesql

create table Instructor(
instructor_id    INTEGER not null,
hourly_rate      FLOAT not null,
primary key(instructor_id));

create table Class(
Class_name         CHAR(10) not null,
STU_ID             INTEGER not null,
instructor_id      INTEGER not null,
primary key(STU_ID, Class_name));

insert into Instructor (instructor_id, hourly_rate) values (123, 11);
insert into Instructor (instructor_id, hourly_rate) values (234, 9);
insert into Instructor (instructor_id, hourly_rate) values (345, 10);
insert into Instructor (instructor_id, hourly_rate) values (456, 12);
insert into Instructor (instructor_id, hourly_rate) values (567, 8);

insert into Class (Class_name, STU_ID, instructor_id) values('python', 1, 123);
insert into Class (Class_name, STU_ID, instructor_id) values('python', 3, 345);
insert into Class (Class_name, STU_ID, instructor_id) values('java', 2, 456);
insert into Class (Class_name, STU_ID, instructor_id) values('java', 2, 234);
insert into Class (Class_name, STU_ID, instructor_id) values('java', 3, 567);
insert into Class (Class_name, STU_ID, instructor_id) values('java', 3, 345);
insert into Class (Class_name, STU_ID, instructor_id) values('c++', 3, 345);
insert into Class (Class_name, STU_ID, instructor_id) values('c++', 3, 567);
insert into Class (Class_name, STU_ID, instructor_id) values('c++', 2, 234);
insert into Class (Class_name, STU_ID, instructor_id) values('html', 2, 234);
insert into Class (Class_name, STU_ID, instructor_id) values('html', 3, 567);
insert into Class (Class_name, STU_ID, instructor_id) values('sql', 3, 567);

SELECT MAX(hourly_rate * sum_of_class_counts * 0.1) as Highest_bonus_amount_paid
FROM Instructor a inner join (SELECT instructor_id, count(*) as sum_of_class_counts
                                FROM Class
                                GROUP BY instructor_id) b
ON a.instructor_id = b.instructor_id;