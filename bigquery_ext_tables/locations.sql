CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.locations`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/locations.csv']
  );