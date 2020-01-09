CREATE TABLE bme680sensors ( uuid STRING,  `end` STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, te STRING,  host STRING,
macaddress STRING,  diskusage STRING, memory DOUBLE, ipaddress STRING, 
host_name STRING, lsm303d_magnetometer STRING, BH1745_red STRING,
BH1745_blue STRING, lsm303d_accelerometer STRING, ltr559_prox STRING,
ltr559_lux STRING, VL53L1X_distance_in_mm STRING, BH1745_clear STRING,
BH1745_green STRING, bme680_tempc STRING, bme680_humidity STRING,
bme680_tempf STRING, bme680_pressure STRING,
starttime STRING, cputemp DOUBLE, imgnamep STRING, imgname STRING,
PRIMARY KEY (uuid, `end`)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1')
