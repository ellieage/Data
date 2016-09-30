export PYSPARK_DRIVER_PYTHON=ipython
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --no-browser --port=7777"

pyspark \
  --packages com.databricks:spark-csv_2.10:1.1.0 \
  --master local
