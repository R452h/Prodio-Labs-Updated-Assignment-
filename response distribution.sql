SELECT
question_response,
COUNT(*) AS responses
FROM candidate_log
WHERE question_response IS NOT NULL
GROUP BY question_response
ORDER BY responses DESC;