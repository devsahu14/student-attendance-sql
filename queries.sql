--view all Students--
SELECT * FROM students;



--Daily Attendance Report--
SELECT s.name, c.course_name, a.attendance_date, a.status
FROM attendance a
JOIN students s ON a.student_id = s.student_id
JOIN courses c ON a.course_id = c.course_id;



--Attendance Percentage Per Student--
SELECT s.name,
       COUNT(CASE WHEN a.status = 'Present' THEN 1 END) * 100.0 / COUNT(*) AS attendance_percentage
FROM students s
JOIN attendance a ON s.student_id = a.student_id
GROUP BY s.name;




--Students With Less Than 75% Attendance (Defaulters)--
SELECT s.name,
       COUNT(CASE WHEN a.status = 'Present' THEN 1 END) * 100.0 / COUNT(*) AS attendance_percentage
FROM students s
JOIN attendance a ON s.student_id = a.student_id
GROUP BY s.name
HAVING attendance_percentage < 75;
