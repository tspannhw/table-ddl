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
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

CREATE TABLE sensors ( sensor_id INT, sensor_ts TIMESTAMP, sensor_0 DOUBLE, sensor_1 DOUBLE, sensor_2 DOUBLE, sensor_3 DOUBLE, sensor_4 DOUBLE, sensor_5 DOUBLE, sensor_6 DOUBLE, sensor_7 DOUBLE, sensor_8 DOUBLE, sensor_9 DOUBLE, sensor_10 DOUBLE, sensor_11 DOUBLE, is_healthy INT, PRIMARY KEY (sensor_ID, sensor_ts) ) PARTITION BY HASH PARTITIONS 16 STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1') ;

CREATE TABLE gassensors ( uuid STRING, `end` STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, te STRING,  host STRING, equivalentco2ppm STRING, totalvocppb STRING, macaddress STRING, diskusage STRING, memory DOUBLE, ipaddress STRING, host_name STRING, PRIMARY KEY (uuid, `end`) ) PARTITION BY HASH PARTITIONS 4 STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

CREATE TABLE envirosensors ( uuid STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING,  te STRING, host STRING,macaddress STRING, diskusage STRING, memory DOUBLE, ipaddress STRING, host_name STRING,  temperature STRING, pressure STRING, humidity STRING, lux STRING, proximity STRING, gas STRING, PRIMARY KEY (uuid) ) PARTITION BY HASH PARTITIONS 4 STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

CREATE TABLE bme680sensors ( uuid STRING, `end` STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, te STRING, host STRING, macaddress STRING, diskusage STRING, memory DOUBLE, ipaddress STRING,  host_name STRING, lsm303d_magnetometer STRING, BH1745_red STRING, BH1745_blue STRING, lsm303d_accelerometer STRING, ltr559_prox STRING, ltr559_lux STRING, VL53L1X_distance_in_mm STRING, BH1745_clear STRING, BH1745_green STRING, bme680_tempc STRING, bme680_humidity STRING, bme680_tempf STRING, bme680_pressure STRING, starttime STRING, cputemp DOUBLE, imgnamep STRING, imgname STRING, PRIMARY KEY (uuid, `end`) ) PARTITION BY HASH PARTITIONS 4 STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

CREATE TABLE bme280sensors ( uuid STRING, `end` STRING, systemtime STRING, runtime STRING, cpu DOUBLE, id STRING, 
                            te STRING,  host STRING, macaddress STRING, diskusage STRING, memory DOUBLE,
 ipaddress STRING,  host_name STRING, bme280_altitude STRING, bme280_tempf STRING, max30105timestamp STRING, 
 max30105_detected STRING, max30105_delta STRING, max30105_temp STRING, bme280_tempc STRING, max30105_mean STRING, max30105_value STRING, bme280_altitude_feet STRING, bme280_pressure STRING,  starttime STRING, cputemp DOUBLE, imgnamep STRING, imgname STRING, PRIMARY KEY (uuid, `end`) ) PARTITION BY HASH PARTITIONS 4 STORED AS KUDU TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');

CREATE TABLE movidius ( uuid STRING,  endtime STRING, systemtime STRING, runtime STRING, cputemp STRING, id STRING, te STRING, 
host STRING,starttime STRING,image_filename STRING, 
macaddress STRING, diskfree STRING, memory STRING, ipaddress STRING, host_name STRING,
PRIMARY KEY (uuid, endtime)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1')
;
CREATE TABLE nano
(
 uuid STRING,
   systemtime STRING,
  top1pct DOUBLE,
  top1 STRING,
  `end` STRING, 
 runtime STRING, cputemp DOUBLE, id STRING, 
                            te STRING,  host STRING, macaddress STRING, diskusage STRING, memory DOUBLE,
 ipaddress STRING,  host_name STRING, filename STRING, 
  gputemp STRING, 
  gputempf STRING,
  cputempf STRING,
  cpu DOUBLE,
  imageinput STRING, 
PRIMARY KEY (uuid, systemtime)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');


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
