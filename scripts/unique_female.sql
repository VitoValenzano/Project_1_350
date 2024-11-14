--This will query the database for the symptoms that were experienced uniquely by females
SELECT DISTINCT s.meddra_term
FROM symptoms s
JOIN reports r ON s.report_id = r.report_id  
JOIN patients p ON r.patient_id = p.patient_id  
WHERE p.sex = 'Female'
AND s.meddra_term NOT IN (
    SELECT s2.meddra_term
    FROM symptoms s2
    JOIN reports r2 ON s2.report_id = r2.report_id
    JOIN patients p2 ON r2.patient_id = p2.patient_id
    WHERE p2.sex = 'Male'
);
