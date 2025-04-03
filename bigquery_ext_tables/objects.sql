CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.objects`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/objects.csv']
);

CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.objects_constituents`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/objects_constituents.csv']
);

CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.objects_dimensions`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/objects_dimensions.csv']
);

CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.objects_historical_data`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/objects_historical_data.csv']
);

CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.objects_terms`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/objects_terms.csv']
);

CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.objects_text_entries`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/objects_text_entries.csv']
);
