SELECT
candidate_id,
MIN(logged_at) AS start_time,
MAX(logged_at) AS end_time,
MAX(logged_at)-MIN(logged_at) AS duration
FROM candidate_log
GROUP BY candidate_id;