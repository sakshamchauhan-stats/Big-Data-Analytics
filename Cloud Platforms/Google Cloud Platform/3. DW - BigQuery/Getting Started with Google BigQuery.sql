-- Create a dataset (a folder like structure to hold external tables)
CREATE SCHEMA `refined-analogy-508413-i1.folder_for_bq_data`
OPTIONS(
  location = 'us-east1'
);


-- Direct query into a GCS object
CREATE OR REPLACE EXTERNAL TABLE `refined-analogy-508413-i1.folder_for_bq_data.bq_titanic_data`
OPTIONS (
  format = 'CSV',
  uris = ['gs://example_bucket_for_big_data_engineering/titanic dataset.csv']
);


select * from refined-analogy-508413-i1.folder_for_bq_data.bq_titanic_data;