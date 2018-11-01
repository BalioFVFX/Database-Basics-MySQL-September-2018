SELECT tc.job_during_journey FROM travel_cards tc
JOIN (SELECT j.id FROM journeys j
ORDER BY datediff(journey_end, journey_start) DESC
LIMIT 1) j
ON j.id = tc.journey_id
GROUP BY job_during_journey
ORDER BY COUNT(job_during_journey)
LIMIT 1