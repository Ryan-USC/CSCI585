-- livesql

CREATE TABLE Project(
PID CHAR(5) NOT NULL,
Step INTEGER NOT NULL,
Status CHAR(1) NOT NULL,
PRIMARY KEY(PID, Step));


INSERT INTO Project VALUES('P100', 0, 'C');
INSERT INTO Project VALUES('P100', 1, 'W');
INSERT INTO Project VALUES('P100', 2, 'W');
INSERT INTO Project VALUES('P201', 0, 'C');
INSERT INTO Project VALUES('P201', 1, 'C');
INSERT INTO Project VALUES('P333', 0, 'W');
INSERT INTO Project VALUES('P333', 1, 'W');
INSERT INTO Project VALUES('P333', 2, 'W');
INSERT INTO Project VALUES('P333', 3, 'W');

SELECT PID
FROM Project
WHERE (Step = 0 and Status = 'C') and PID not in
    (SELECT PID
    FROM Project
    WHERE Step = 1 and Status = 'C');