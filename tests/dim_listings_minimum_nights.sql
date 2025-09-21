SELECT TOP 10 *
from {{ ref('dim_listings_cleansed') }}
where minimum_nights<1
