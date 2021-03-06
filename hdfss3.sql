CREATE EXTERNAL TABLE IF NOT EXISTS `covid3` (
  `msg` STRING,
  `unixtime` STRING,
  `friends_count` STRING,
  `hashtags` STRING,
  `listed_count` STRING,
  `tweet_id` STRING,
  `user_name` STRING,
  `favourites_count` STRING,
  `source` STRING,
  `placename` STRING,
  `media_url` STRING,
  `retweet_count` STRING,
  `user_mentions_name` STRING,
  `geo` STRING,
  `urls` STRING,
  `countrycode` STRING,
  `user_url` STRING,
  `place` STRING,
  `coordinates` STRING,
  `handle` STRING,
  `profile_image_url` STRING,
  `time_zone` STRING,
  `ext_media` STRING,
  `statuses_count` STRING,
  `followers_count` STRING,
  `location` STRING,
  `user_mentions` STRING,
  `user_description` STRING
) STORED AS ORC LOCATION '/cdp-external-tables/covid3/'
