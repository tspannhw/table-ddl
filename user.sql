CREATE TABLE nifipeople (
   loginuuid                      STRING 
  , gender                         STRING  
  ,nametitle                      STRING
  ,namefirst                      STRING 
  ,namelast                       STRING 
  ,locationstreetnumber           INT  
  ,locationstreetname             STRING  
  ,locationcity                   STRING  
  ,locationstate                  STRING  
  ,locationcountry                STRING  
  ,locationpostcode               INT  
  ,locationcoordinateslatitude    DOUBLE
  ,locationcoordinateslongitude   DOUBLE
  ,locationtimezoneoffset         STRING 
  ,locationtimezonedescription    STRING
  ,email                          STRING 
  ,loginusername                  STRING 
  ,loginpassword                  STRING 
  ,loginsalt                      STRING 
  ,loginmd5                       STRING 
  ,loginsha1                      STRING 
  ,loginsha256                    STRING 
  ,dobdate                        STRING 
  ,dobage                         INT  
  ,registereddate                 STRING 
  ,registeredage                  INT  
  ,phone                          STRING 
  ,cell                           STRING 
  ,idname                         STRING 
  ,idvalue                        STRING  
  ,picturelarge                   STRING 
  ,picturemedium                  STRING 
  ,picturethumbnail               STRING 
  ,nat                            STRING 
  ,PRIMARY KEY (loginuuid)
)
PARTITION BY HASH PARTITIONS 4
STORED AS KUDU
TBLPROPERTIES ('kudu.num_tablet_replicas' = '1');
