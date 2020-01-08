CREATE TABLE webcam ( uuid STRING,  `end` STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, te STRING, 
host STRING,
macaddress STRING, diskusage STRING, memory DOUBLE, ipaddress STRING, host_name STRING,
node_id_0 INT, label_0 STRING, result_0 DOUBLE,
node_id_1 INT, label_1 STRING, result_1 DOUBLE,
node_id_2 INT, label_2 STRING, result_2 DOUBLE,
node_id_3 INT, label_3 STRING, result_3 DOUBLE,
node_id_4 INT, label_4 STRING, result_4 DOUBLE,
PRIMARY KEY (uuid, `end`)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1')
