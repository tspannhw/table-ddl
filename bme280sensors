CREATE TABLE bme280sensors ( uuid STRING,  `end` STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, 
te STRING, 
host STRING,
macaddress STRING,  diskusage STRING, memory DOUBLE, ipaddress STRING, 
host_name STRING, bme280_altitude STRING, bme280_tempf STRING, max30105timestamp STRING, 
max30105_detected STRING, max30105_delta STRING, max30105_temp STRING, bme280_tempc STRING,
max30105_mean STRING, max30105_value STRING, bme280_altitude_feet STRING, bme280_pressure STRING, 
starttime STRING, cputemp DOUBLE, imgnamep STRING, imgname STRING,
PRIMARY KEY (uuid, `end`)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1')
