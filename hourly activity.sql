SELECT
EXTRACT(HOUR FROM logged_at) AS hour,
COUNT(*) AS events
FROM candidate_log
GROUP BY 1
ORDER BY 1;