WITH complaint_types AS
  (SELECT DISTINCT complaint_description, Count(complaint_description) AS occurence_value
  FROM bigquery-public-data.austin_311.311_service_requests
  GROUP BY complaint_description
  ORDER BY occurence_value DESC)

SELECT *
FROM complaint_types