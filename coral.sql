CREATE TABLE coral 
( id STRING, systemtime STRING, humidity STRING,
pressure STRING,
ambient_light STRING, 
temperature STRING,
tempf STRING,
runtime STRING, 
score_1 STRING,
message STRING, 
cputemp DOUBLE,
starttime STRING,
cpu DOUBLE,
te STRING,  host STRING, macaddress STRING, diskusage STRING, 
memory DOUBLE,
ip STRING, host_name STRING, 
label_1 STRING, 
PRIMARY KEY (id, systemtime) ) 
PARTITION BY HASH PARTITIONS 4 
STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1'); 
