CREATE TABLE envirosensors ( uuid STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, 
te STRING, host STRING,macaddress STRING,  diskusage STRING, memory DOUBLE, ipaddress STRING,  host_name STRING, 
temperature STRING,
pressure STRING,
humidity STRING,
lux STRING,
proximity STRING,
gas STRING,
PRIMARY KEY (uuid)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1')
