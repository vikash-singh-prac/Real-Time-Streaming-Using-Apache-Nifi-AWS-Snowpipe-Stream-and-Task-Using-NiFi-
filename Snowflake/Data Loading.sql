// Creating external stage (create your own bucket)
CREATE OR REPLACE STAGE SCD_DEMO.SCD2.customer_ext_stage
    url='s3://real-time-data-stream/stream-data'
    credentials=(aws_key_id='AKIA3MSV6BKSLMGSG7FE' aws_secret_key='HKd6VqUt9gtsDJBuvtle285sp1QtGOEM3/XtMqpU');


// File format for incoming files in stage
CREATE OR REPLACE FILE FORMAT SCD_DEMO.SCD2.CSV
TYPE = CSV,
FIELD_DELIMITER = ","
SKIP_HEADER = 1;

show stages;


-- Show all the files in the staging area
LIST @CUSTOMER_EXT_STAGE;

-- Create Snowpipe to ingest data fromm stage to customer_raw table
CREATE OR REPLACE PIPE customer_s3_pipe
  auto_ingest = true
  AS
  COPY INTO customer_raw
  FROM @customer_ext_stage
  FILE_FORMAT = CSV
  ;


  show pipes;
select SYSTEM$PIPE_STATUS('customer_s3_pipe');

SELECT count(*) FROM customer_raw;

TRUNCATE  customer_raw;


select * from customer_raw;
