#!/bin/bash

# Clean landing directory and get data
rm /home/hadoop/landing/*

wget -P /home/hadoop/landing "https://dataengineerpublic.blob.core.windows.net/data-engineer/2021-informe-ministerio.csv"
wget -P /home/hadoop/landing "https://dataengineerpublic.blob.core.windows.net/data-engineer/202206-informe-ministerio.csv"
wget -P /home/hadoop/landing "https://dataengineerpublic.blob.core.windows.net/data-engineer/aeropuertos_detalle.csv"

# Clean HDFS directory and put the data from landing into Hadoop
/home/hadoop/hadoop/bin/hdfs dfs -rm /ingest/*
/home/hadoop/hadoop/bin/hdfs dfs -put /home/hadoop/landing/* /ingest