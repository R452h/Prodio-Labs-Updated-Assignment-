SELECT
    activity,
    COUNT(*) AS total_events
FROM candidate_log
WHERE activity IN (
    'Mark for Review & Next',
    'UnMark for Review & Next'
)
GROUP BY activity
ORDER BY total_events DESC;