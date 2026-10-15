CREATE DATABASE learning_db;

CREATE EXTERNAL TABLE learning_db.titanic (
    passengerid INT,
    survived INT,
    pclass INT,
    name STRING,
    sex STRING,
    age DOUBLE,
    sibsp INT,
    parch INT,
    ticket STRING,
    fare DOUBLE,
    cabin STRING,
    embarked STRING
)
ROW FORMAT SERDE
    'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
    'separatorChar' = ',',
    'quoteChar' = '"',
    'escapeChar' = '\\'
)
STORED AS TEXTFILE
LOCATION 's3://storagefordeprojects/data_for_adhoc_queries/'
TBLPROPERTIES (
    'skip.header.line.count' = '1'
);

ALTER TABLE learning_db.titanic
SET TBLPROPERTIES (
    'use.null.for.invalid.data' = 'true'
);

select * from learning_db.titanic;