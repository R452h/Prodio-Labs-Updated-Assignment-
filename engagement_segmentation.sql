WITH candidate_events AS
(
SELECT
candidate_id,
COUNT(*) AS total_events
FROM candidate_log
GROUP BY candidate_id
)

SELECT

CASE

WHEN total_events < 20
THEN 'Light'

WHEN total_events < 50
THEN 'Medium'

ELSE 'Heavy'

END AS segment,

COUNT(*) AS candidates

FROM candidate_events

GROUP BY segment;