--This script will query the databse to only show reports from within the last 5 years
SELECT *
FROM reports
WHERE date_received >= '2019-01-01';