{{
  config(
    materialized = 'view'
  )
}}

WITH src_hosts AS (
    SELECT *
    FROM {{ ref('raw_hosts1') }}
)
SELECT
    host_id,
    ISNULL(host_name, 'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM src_hosts
