--This script pulls reports that were received before 2010
SELECT *
FROM reports
WHERE date_received < '2010-01-01';