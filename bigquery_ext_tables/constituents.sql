CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.constituents`
  (
  constituentid INT64,
  ulanid STRING,
  preferreddisplayname STRING,
  forwarddisplayname STRING,
  lastname STRING,
  displaydate STRING,
  artistofngaobject INT64,
  beginyear INT64,
  endyear INT64,
  visualbrowsertimespan STRING,
  nationality STRING,
  visualbrowsernationality STRING,
  constituenttype STRING,
  wikidataid STRING
)
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',           -- Explicit delimiter
  quote = '"',                     -- Quoting character
  allow_quoted_newlines = TRUE,   -- Support multiline fields
  skip_leading_rows = 1,          -- Skip header
  uris = ['gs://national-gallery-art-analytics-data-bucket/constituents.csv']
);

CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.constituents_altnames`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/constituents_altnames.csv']
);

CREATE OR REPLACE EXTERNAL TABLE `art_analytics_bigquery.constituents_text_entries`
OPTIONS (
  format = 'CSV',
  field_delimiter = ',',  -- Specify the delimiter explicitly
  quote = '"',            -- Specify the quote character
  allow_quoted_newlines = true,  -- Allow newlines within quoted fields
  skip_leading_rows = 1,  -- Skip header row if present
  uris = ['gs://national-gallery-art-analytics-data-bucket/constituents_text_entries.csv']
);
