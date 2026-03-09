-- Pennsylvania Hospital Ratings Analysis

CREATE DATABASE IF NOT EXISTS pa_hospital_ratings;
USE pa_hospital_ratings;

-- Confirm data loaded correctly
SELECT COUNT(*) AS hospital_count
FROM pa_hospitals_clean;

SELECT *
FROM pa_hospitals_clean
LIMIT 10;

-- Rating distribution
SELECT
    overall_rating,
    COUNT(*) AS hospital_count
FROM pa_hospitals_clean
GROUP BY overall_rating
ORDER BY overall_rating DESC;

-- Counties with at least 4 hospitals
SELECT
    county,
    COUNT(*) AS hospital_count,
    ROUND(AVG(overall_rating), 2) AS avg_rating
FROM pa_hospitals_clean
GROUP BY county
HAVING COUNT(*) >= 4
ORDER BY avg_rating DESC;

-- Ownership vs. rating
SELECT
    hospital_ownership,
    COUNT(*) AS hospital_count,
    ROUND(AVG(overall_rating), 2) AS avg_rating
FROM pa_hospitals_clean
GROUP BY hospital_ownership
HAVING COUNT(*) >= 5
ORDER BY avg_rating DESC;

-- Ranking hospitals within counties
SELECT
    county,
    facility_name,
    overall_rating,
    DENSE_RANK() OVER (
        PARTITION BY county
        ORDER BY overall_rating DESC
    ) AS county_rank
FROM pa_hospitals_clean
ORDER BY county, county_rank;