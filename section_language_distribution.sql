SELECT
    question_section,
    question_language,
    COUNT(*) AS interactions
FROM candidate_log
GROUP BY question_section, question_language
ORDER BY question_section, question_language;