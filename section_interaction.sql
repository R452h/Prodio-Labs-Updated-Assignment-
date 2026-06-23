SELECT
    question_section,
    COUNT(*) AS interactions
FROM candidate_log
GROUP BY question_section
ORDER BY question_section;