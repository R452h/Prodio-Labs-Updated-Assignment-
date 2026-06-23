SELECT
activity,
COUNT(*) AS total_events
FROM candidate_log
GROUP BY activity
ORDER BY total_events DESC;