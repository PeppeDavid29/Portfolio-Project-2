Select *
From ['Youtube Views$']


DELETE FROM ['Youtube Views$']
WHERE TRY_CAST(Views AS INT) = 0;




DELETE FROM ['Youtube Views$']
WHERE [Channel Description] IS NULL;


SELECT AVG(CASE
             WHEN TRY_CAST(Views AS INT) IS NOT NULL THEN CAST(Views AS INT)
             ELSE NULL
           END) AS average_view_count
FROM ['Youtube Views$']
WHERE TRY_CAST(Views AS INT) IS NOT NULL;


SELECT MAX(CASE
             WHEN ISNUMERIC(Views) = 1 THEN CAST(Views AS BIGINT)
             ELSE NULL
           END) AS maximum_view_count
FROM ['Youtube Views$'];


SELECT *
FROM ['Youtube Views$']
ORDER BY Subscribers ASC;

--most popular videos  based on view count

SELECT *
FROM ['Youtube Views$']
ORDER BY Views DESC;