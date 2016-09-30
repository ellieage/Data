#!/usr/bin/env bash

spark-submit \
  --class "Beowulf" \
  --master local \
  --jars jars/aws-java-sdk-1.7.4.jar,jars/hadoop-aws-2.7.2.jar \
  target/scala-2.11/simple-spark-project_2.11-0.1.0.jar
