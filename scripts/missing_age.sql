--This script retrieves the information about any patients missing their age value
SELECT *
FROM patients
WHERE age IS NULL;