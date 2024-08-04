SELECT *
FROM `1. weather data`;

-- all records where the weather was exactly clear.
SELECT *
 FROM  `1. weather data` 
 WHERE Weather = 'Clear';
 
 -- the number of times the wind speed was exactly 4 km/hr:
 SELECT COUNT(*)
 AS WindSpeed4Count
 FROM `1. weather data`
 WHERE `Wind Speed_km/h` = 4;

-- Rename the column "Weather" to "Weather_Condition"

ALTER TABLE `1. weather data` 
CHANGE COLUMN `Weather` `Weather_Condition` VARCHAR(255);
SELECT *
FROM `1. weather data`;

-- any NULL values present in the dataset

SELECT 
    SUM(CASE WHEN `Date/Time` IS NULL THEN 1 ELSE 0 END) AS DateTimeNulls,
    SUM(CASE WHEN `Temp_C` IS NULL THEN 1 ELSE 0 END) AS TempNulls,
    SUM(CASE WHEN `Dew Point Temp_C` IS NULL THEN 1 ELSE 0 END) AS DewPointTempNulls,
    SUM(CASE WHEN `Rel Hum_%` IS NULL THEN 1 ELSE 0 END) AS RelHumNulls,
    SUM(CASE WHEN `Wind Speed_km/h` IS NULL THEN 1 ELSE 0 END) AS WindSpeedNulls,
    SUM(CASE WHEN `Visibility_km` IS NULL THEN 1 ELSE 0 END) AS VisibilityNulls,
    SUM(CASE WHEN `Press_kPa` IS NULL THEN 1 ELSE 0 END) AS PressNulls,
    SUM(CASE WHEN `Weather_Condition` IS NULL THEN 1 ELSE 0 END) AS WeatherNulls
FROM `1. weather data`;

