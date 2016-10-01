#!/usr/bin/env bash

export AWS_ACCESS_KEY_ID=my_aws_acces_key_id
export AWS_SECRET_ACCESS_KEY=my_aws_secret_access_key

# export SPARK_CLASSPATH='/path/xxx.jar:/path/xx2.jar'
# spark-defaults.conf : spark.driver.extraClassPath /path/to/my.jar
# spark-defaults.conf : spark.executor.extraClassPath /path/to/my.jar 

spark-submit \
  --jars jars/aws-java-sdk-1.7.4.jar,jars/hadoop-aws-2.7.2.jar \
  --master local \
  --class "Beowulf" \
  target/scala-2.11/simple-spark-project_2.11-0.1.0.jar
