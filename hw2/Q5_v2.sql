-- livesql

create table Candidates(
Instructor    char(12) not null,
Subject      char(12) not null,
primary key(Instructor,Subject));

create table Subjects(
Subject char(12) not null,
primary key(Subject));

insert into Candidates (Instructor, Subject) values ('Aleph','Scratch');
insert into Candidates (Instructor, Subject) values ('Aleph','Java');
insert into Candidates (Instructor, Subject) values ('Aleph','Processing');
insert into Candidates (Instructor, Subject) values ('Bit','Python');
insert into Candidates (Instructor, Subject) values ('Bit','JavaScript');
insert into Candidates (Instructor, Subject) values ('Bit','Java');
insert into Candidates (Instructor, Subject) values ('CRC','Python');
insert into Candidates (Instructor, Subject) values ('CRC','JavaScript');
insert into Candidates (Instructor, Subject) values ('Dat','Scratch');
insert into Candidates (Instructor, Subject) values ('Dat','Python');
insert into Candidates (Instructor, Subject) values ('Dat','JavaScript');
insert into Candidates (Instructor, Subject) values ('Emscr','Scratch');
insert into Candidates (Instructor, Subject) values ('Emscr','Processing');
insert into Candidates (Instructor, Subject) values ('Emscr','JavaScript');
insert into Candidates (Instructor, Subject) values ('Emscr','Python');

insert into Subjects (Subject) values ('JavaScript');
insert into Subjects (Subject) values ('Scratch');
insert into Subjects (Subject) values ('Python');

SELECT Instructor
FROM Candidates
WHERE Subject IN (SELECT Subject FROM Subjects)
GROUP BY Instructor
HAVING COUNT(*) = (SELECT COUNT(*) FROM Subjects)

-- 1.WHERE clause enable us to get instructors who teach what we need
-- it has a similar effect to join two table on subjects
-- the subquery in WHERE return subjects we need
-- 2.HAVING clause filter instructor who teach three subjects
-- the subquery in HAVING return the number of subject of what of need

