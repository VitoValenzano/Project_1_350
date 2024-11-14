--This script retireves the most common symptoms reported
SELECT s.meddra_term, COUNT(*) AS occurrence
FROM symptoms s
GROUP BY s.meddra_term
ORDER BY occurrence DESC
LIMIT 10;