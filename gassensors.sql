CREATE TABLE gassensors ( uuid STRING,  `end` STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, te STRING, 
host STRING, equivalentco2ppm STRING,  totalvocppb STRING,
macaddress STRING,  diskusage STRING, memory DOUBLE, ipaddress STRING, host_name STRING,
PRIMARY KEY (uuid, `end`)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1')
