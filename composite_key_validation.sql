SELECT
    log_id,
    candidate_id,
    COUNT(*)
FROM candidate_log
GROUP BY log_id, candidate_id
HAVING COUNT(*) > 1;