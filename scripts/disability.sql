--This script will query the outcomes that mention "Disability"
SELECT case_outcome
FROM reports
WHERE case_outcome ILIKE '%disability%';