SELECT
    business_name,
    review_text

FROM yelp_reviews

WHERE cool = (SELECT max(cool) FROM yelp_reviews)