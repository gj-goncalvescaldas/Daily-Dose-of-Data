WITH cleaned_adresses AS (
SELECT 
    LOWER(SUBSTRING_INDEX(business_address, ' ', 1)) AS first_word,
    LOWER(SUBSTRING_INDEX(SUBSTRING_INDEX(business_address, ' ', 2), ' ', -1)) AS second_word,
    business_postal_code as postal_code
FROM sf_restaurant_health_violations
WHERE business_postal_code IS NOT NULL AND business_address IS NOT NULL
),

normalized_streets AS (
SELECT
    postal_code,
    CASE
        WHEN first_word REGEXP '^[0-9]+$' THEN second_word
        ELSE first_word
    END as street_name
FROM cleaned_adresses
),

unique_streets AS (
SELECT
    DISTINCT postal_code, street_name
FROM normalized_streets
)

SELECT 
    postal_code,
    COUNT(*) as num
FROM unique_streets
GROUP BY postal_code
ORDER BY num DESC, postal_code ASC