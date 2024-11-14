--This script breaks down several age ranges and then queries to see how patients there are of each age group.
SELECT 
    CASE 
        WHEN age < 18 THEN 'Child'
        WHEN age BETWEEN 18 AND 65 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group, COUNT(*) AS patient_count
FROM patients
GROUP BY age_group;