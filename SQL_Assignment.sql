CREATE TABLE Members (
	id INT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	age INT
);

CREATE TABLE WorkoutSessions (
	session_id INT PRIMARY KEY,
	member_id INT,
	session_date DATE,
	session_time VARCHAR(255),
	activity VARCHAR(255),
	FOREIGN KEY (member_id) references Members(id)
);

insert into members(id, name, age) VALUES
(1, 'Barney Stinson', 29),
(2, 'Lily Aldrin', 27),
(3, 'Marshall Erikson', 29),
(4, 'Ted Mosby', 28),
(5, 'Robin Scherbotsky', 27);

insert into WorkoutSessions(session_id, member_id, session_date, session_time, activity) VALUES
(101, 1, '2024-02-24', '10 AM', 'Cardio'),
(102, 2, '2024-05-06', '1 PM', 'Pilates'),
(103, 3, '2024-04-21', '5 PM', 'Basketball'),
(104, 4, '2024-02-14', '9 AM', 'Swimming'),
(105, 5, '2024-07-13', '7 PM', 'Strength Training');

SELECT id from Members WHERE name = 'Ted Mosby';
UPDATE WorkoutSessions
SET session_time = '3 PM'
WHERE member_id = 4 and session_time = '9 AM';

DELETE from WorkoutSessions
WHERE member_id = 1;

select * from workoutsessions;