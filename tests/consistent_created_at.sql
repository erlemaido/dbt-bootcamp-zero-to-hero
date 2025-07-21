SELECT * FROM {{ ref('fct_reviews') }} r
INNER JOIN {{ ref('dim_listings_cleansed') }} l
USING (listing_id)
WHERE l.created_at >= r.review_date