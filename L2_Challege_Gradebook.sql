/* We've created a database to track student grades, with their name, number grade, and what percent of activities they've completed. */

CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (1, "Winston", 90, 0.805);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (2, "Winnefer", 95, 0.901);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (3, "Winsteen", 85, 0.906);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (4, "Wincifer", 66, 0.7054);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (5, "Winster", 76, 0.5013);
INSERT INTO student_grades (id, name, number_grade, fraction_completed)
    VALUES (6, "Winstonia", 82, 0.9045);
    
/* In this first step, select all of the rows, and display the name, number_grade, and percent_completed, 
 which you can compute by multiplying and rounding the fraction_completed column. */

select name, number_grade, round(fraction_completed * 100) AS percent_completed from student_grades;

/* The goal is a table that shows how many students have earned which letter_grade. 
You can output the letter_grade by using CASE with the number_grade column, outputting 'A' for grades > 90, 'B' for grades > 80, 
'C' for grades > 70, and 'F' otherwise. 
Then you can use COUNT with GROUP BY to show the number of students with each of those grades. */

SELECT COUNT(*),
    CASE
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
    END AS letter_grade
FROM student_grades
GROUP BY letter_grade