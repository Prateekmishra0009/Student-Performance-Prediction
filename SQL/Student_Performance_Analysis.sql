-- STUDENT PERFORMANCE PREDICTION & LEARNING ANALYTICS
-- SQL ANALYSIS

USE student_performance;


-- 1. Overall Average Final Grade
SELECT 
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data;


-- 2. Study Time vs Average Final Grade
SELECT 
    studytime,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY studytime
ORDER BY studytime;


-- 3. Previous Failures vs Average Final Grade
SELECT 
    failures,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY failures
ORDER BY failures;


-- 4. Absences vs Final Grade
SELECT 
    absences,
    G3 AS final_grade
FROM student_data
ORDER BY absences;


-- 5. Gender vs Average Final Grade
SELECT 
    sex,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY sex
ORDER BY sex;


-- 6. Internet Access vs Average Final Grade
SELECT 
    internet,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY internet
ORDER BY internet;


-- 7. Mother's Education vs Average Final Grade
SELECT 
    Medu,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY Medu
ORDER BY Medu;


-- 8. Father's Education vs Average Final Grade
SELECT 
    Fedu,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY Fedu
ORDER BY Fedu;


-- 9. Family Support vs Average Final Grade
SELECT 
    famsup,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY famsup
ORDER BY famsup;


-- 10. School Support vs Average Final Grade
SELECT 
    schoolsup,
    ROUND(AVG(G3), 2) AS average_final_grade
FROM student_data
GROUP BY schoolsup
ORDER BY schoolsup;


-- 11. At-Risk Students
SELECT 
    school,
    sex,
    age,
    studytime,
    failures,
    absences,
    G1,
    G2,
    G3
FROM student_data
WHERE G3 < 10
ORDER BY G3 ASC;


-- 12. Total At-Risk Students
SELECT 
    COUNT(*) AS at_risk_students
FROM student_data
WHERE G3 < 10;


-- 13. Top 10 Students by Final Grade
SELECT 
    school,
    sex,
    age,
    studytime,
    failures,
    absences,
    G1,
    G2,
    G3
FROM student_data
ORDER BY G3 DESC
LIMIT 10;


-- 14. Performance Summary by School
SELECT 
    school,
    COUNT(*) AS total_students,
    ROUND(AVG(G3), 2) AS average_final_grade,
    MIN(G3) AS minimum_grade,
    MAX(G3) AS maximum_grade
FROM student_data
GROUP BY school
ORDER BY school;


-- 15. Performance Category
SELECT
    G3,
    CASE
        WHEN G3 < 10 THEN 'Low'
        WHEN G3 BETWEEN 10 AND 14 THEN 'Medium'
        ELSE 'High'
    END AS performance_category
FROM student_data
ORDER BY G3;


-- 16. Students by Performance Category
SELECT
    CASE
        WHEN G3 < 10 THEN 'Low'
        WHEN G3 BETWEEN 10 AND 14 THEN 'Medium'
        ELSE 'High'
    END AS performance_category,
    COUNT(*) AS student_count
FROM student_data
GROUP BY performance_category
ORDER BY student_count DESC;