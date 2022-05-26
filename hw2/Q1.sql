-- livesql

CREATE TABLE ProjectRoomBookings
(roomNum INTEGER NOT NULL,
startTime INTEGER NOT NULL,
endTime INTEGER NOT NULL,
groupName CHAR(10) NOT NULL,
PRIMARY KEY (roomNum),
constraint start_time check (startTime >= 7),
constraint end_time check (endTime <= 18),
constraint time_check check (startTime < endTime))

-- issue 1
-- add constraint to starttime and endTime
-- issue 2
-- set primary key be roomNum, that is to say a room cannot be reserved twice in the same day