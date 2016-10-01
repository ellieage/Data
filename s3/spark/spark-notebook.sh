#!/usr/bin/env bash

export PYSPARK_DRIVER_PYTHON=ipython
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --no-browser --port=7777"
export AWS_ACCESS_KEY_ID=my_aws_access_key_id
export AWS_SECRET_ACCESS_KEY=my_aws_secret_access_key

pyspark \
  --packages com.databricks:spark-csv_2.10:1.1.0 \
  --jars jars/aws-java-sdk-1.7.4.jar,jars/hadoop-aws-2.7.2.jar \
  --master local
