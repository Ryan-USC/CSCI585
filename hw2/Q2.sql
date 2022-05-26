-- livesql

CREATE TABLE enrollment
(SID INTEGER NOT NULL,
ClassName CHAR(12) NOT NULL,
Grade CHAR(1) NOT NULL,
PRIMARY KEY (SID, ClassName));

INSERT INTO enrollment VALUES(123, 'Processing', 'A');
INSERT INTO enrollment VALUES(123, 'Python', 'B');
INSERT INTO enrollment VALUES(123, 'Scratch', 'B');
INSERT INTO enrollment VALUES(662, 'Java', 'B');
INSERT INTO enrollment VALUES(662, 'Python', 'A');
INSERT INTO enrollment VALUES(662, 'JavaScript', 'A');
INSERT INTO enrollment VALUES(662, 'Scratch', 'B');
INSERT INTO enrollment VALUES(345, 'Scratch', 'A');
INSERT INTO enrollment VALUES(345, 'JavaScript', 'B');
INSERT INTO enrollment VALUES(345, 'Python', 'A');
INSERT INTO enrollment VALUES(555, 'Python', 'B');
INSERT INTO enrollment VALUES(555, 'JavaScript', 'B');
INSERT INTO enrollment VALUES(213, 'JavaScript', 'A');

SELECT ClassName, COUNT(ClassName) AS Total
FROM enrollment
GROUP BY ClassName
ORDER BY Total DESC;

INSERT INTO accounts VALUES(1234, 10000);
INSERT INTO accounts VALUES(1111, 1000);
INSERT INTO accounts VALUES(2222, 100);
INSERT INTO accounts VALUES(3333, 5000);