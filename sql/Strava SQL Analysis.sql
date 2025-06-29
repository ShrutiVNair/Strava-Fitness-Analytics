-- ===============================
-- STRAVA FITNESS DATA: TABLE SETUP
-- ===============================
-- This script creates tables for all imported CSVs.
-- Column names exactly match original files (quoted).
-- Using quoted identifiers avoids case mismatch and eases CSV import.
-- Running this in pgAdmin (or psql) after creating our 'Strava' database.
-- -------------------------------

-- 1. DAILY ACTIVITY: Overall daily summary for each user.
CREATE TABLE "daily_activity" (
    "Id" BIGINT,  -- Unique user ID
    "ActivityDate" DATE,  -- Date of the activity
    "TotalSteps" INT,
    "TotalDistance" FLOAT,
    "TrackerDistance" FLOAT,
    "LoggedActivitiesDistance" FLOAT,
    "VeryActiveDistance" FLOAT,
    "ModeratelyActiveDistance" FLOAT,
    "LightActiveDistance" FLOAT,
    "SedentaryActiveDistance" FLOAT,
    "VeryActiveMinutes" INT,
    "FairlyActiveMinutes" INT,
    "LightlyActiveMinutes" INT,
    "SedentaryMinutes" INT,
    "Calories" INT
);

-- 2. DAILY CALORIES: Total calories burned per day.
CREATE TABLE "daily_calories" (
    "Id" BIGINT,
    "ActivityDay" DATE,
    "Calories" INT
);

-- 3. DAILY INTENSITIES: Minutes spent at each activity intensity level per day.
-- DAILY INTENSITIES: Minutes and distances at each activity intensity per day
CREATE TABLE "daily_intensities" (
    "Id" BIGINT,
    "ActivityDay" DATE,
    "SedentaryMinutes" INT,
    "LightlyActiveMinutes" INT,
    "FairlyActiveMinutes" INT,
    "VeryActiveMinutes" INT,
    "SedentaryActiveDistance" FLOAT,
    "LightActiveDistance" FLOAT,
    "ModeratelyActiveDistance" FLOAT,
    "VeryActiveDistance" FLOAT
);

-- 4. DAILY STEPS: Total steps per user per day.
CREATE TABLE "daily_steps" (
    "Id" BIGINT,
    "ActivityDay" DATE,
    "StepTotal" INT
);

-- 5. HOURLY CALORIES: Calories burned each hour.
CREATE TABLE "hourly_calories" (
    "Id" BIGINT,
    "ActivityHour" TIMESTAMP,
    "Calories" FLOAT
);

-- 6. HOURLY INTENSITIES: Intensity values each hour.
CREATE TABLE "hourly_intensities" (
    "Id" BIGINT,
    "ActivityHour" TIMESTAMP,
    "TotalIntensity" INT,
    "AverageIntensity" FLOAT
);

-- 7. HOURLY STEPS: Steps per hour.
CREATE TABLE "hourly_steps" (
    "Id" BIGINT,
    "ActivityHour" TIMESTAMP,
    "StepTotal" INT
);

-- 8. MINUTE CALORIES WIDE: Calories per minute (wide format, 60 columns for each minute of an hour).
CREATE TABLE "minute_calories_wide" (
    "Id" BIGINT,
    "ActivityHour" TIMESTAMP,
    "Calories00" FLOAT, "Calories01" FLOAT, "Calories02" FLOAT, "Calories03" FLOAT, "Calories04" FLOAT, "Calories05" FLOAT,
    "Calories06" FLOAT, "Calories07" FLOAT, "Calories08" FLOAT, "Calories09" FLOAT, "Calories10" FLOAT, "Calories11" FLOAT,
    "Calories12" FLOAT, "Calories13" FLOAT, "Calories14" FLOAT, "Calories15" FLOAT, "Calories16" FLOAT, "Calories17" FLOAT,
    "Calories18" FLOAT, "Calories19" FLOAT, "Calories20" FLOAT, "Calories21" FLOAT, "Calories22" FLOAT, "Calories23" FLOAT,
    "Calories24" FLOAT, "Calories25" FLOAT, "Calories26" FLOAT, "Calories27" FLOAT, "Calories28" FLOAT, "Calories29" FLOAT,
    "Calories30" FLOAT, "Calories31" FLOAT, "Calories32" FLOAT, "Calories33" FLOAT, "Calories34" FLOAT, "Calories35" FLOAT,
    "Calories36" FLOAT, "Calories37" FLOAT, "Calories38" FLOAT, "Calories39" FLOAT, "Calories40" FLOAT, "Calories41" FLOAT,
    "Calories42" FLOAT, "Calories43" FLOAT, "Calories44" FLOAT, "Calories45" FLOAT, "Calories46" FLOAT, "Calories47" FLOAT,
    "Calories48" FLOAT, "Calories49" FLOAT, "Calories50" FLOAT, "Calories51" FLOAT, "Calories52" FLOAT, "Calories53" FLOAT,
    "Calories54" FLOAT, "Calories55" FLOAT, "Calories56" FLOAT, "Calories57" FLOAT, "Calories58" FLOAT, "Calories59" FLOAT
);

-- 9. MINUTE CALORIES NARROW: Calories per minute (one row per minute).
CREATE TABLE "minute_calories_narrow" (
    "Id" BIGINT,
    "ActivityMinute" TIMESTAMP,
    "Calories" FLOAT
);


-- 10. MINUTE INTENSITIES WIDE: Intensity per minute (wide format).
CREATE TABLE "minute_intensities_wide" (
    "Id" BIGINT,
    "ActivityHour" TIMESTAMP,
    "Intensities00" INT, "Intensities01" INT, "Intensities02" INT, "Intensities03" INT, "Intensities04" INT, "Intensities05" INT,
    "Intensities06" INT, "Intensities07" INT, "Intensities08" INT, "Intensities09" INT, "Intensities10" INT, "Intensities11" INT,
    "Intensities12" INT, "Intensities13" INT, "Intensities14" INT, "Intensities15" INT, "Intensities16" INT, "Intensities17" INT,
    "Intensities18" INT, "Intensities19" INT, "Intensities20" INT, "Intensities21" INT, "Intensities22" INT, "Intensities23" INT,
    "Intensities24" INT, "Intensities25" INT, "Intensities26" INT, "Intensities27" INT, "Intensities28" INT, "Intensities29" INT,
    "Intensities30" INT, "Intensities31" INT, "Intensities32" INT, "Intensities33" INT, "Intensities34" INT, "Intensities35" INT,
    "Intensities36" INT, "Intensities37" INT, "Intensities38" INT, "Intensities39" INT, "Intensities40" INT, "Intensities41" INT,
    "Intensities42" INT, "Intensities43" INT, "Intensities44" INT, "Intensities45" INT, "Intensities46" INT, "Intensities47" INT,
    "Intensities48" INT, "Intensities49" INT, "Intensities50" INT, "Intensities51" INT, "Intensities52" INT, "Intensities53" INT,
    "Intensities54" INT, "Intensities55" INT, "Intensities56" INT, "Intensities57" INT, "Intensities58" INT, "Intensities59" INT
);

-- 11. MINUTE INTENSITIES NARROW: Intensity per minute (one row per minute).
CREATE TABLE "minute_intensities_narrow" (
    "Id" BIGINT,
    "ActivityMinute" TIMESTAMP,
    "Intensity" INT
);

-- 12. MINUTE METs NARROW: METs per minute (narrow format).
CREATE TABLE "minute_mets_narrow" (
    "Id" BIGINT,
    "ActivityMinute" TIMESTAMP,
    "METs" FLOAT
);

-- 13. MINUTE SLEEP: Sleep data per minute.
CREATE TABLE "minute_sleep" (
    "Id" BIGINT,
    "date" TIMESTAMP,
    "value" INT,
    "logId" BIGINT
);


-- 14. MINUTE STEPS WIDE: Steps per minute (wide format).
CREATE TABLE "minute_steps_wide" (
    "Id" BIGINT,
    "ActivityHour" TIMESTAMP,
    "Steps00" INT, "Steps01" INT, "Steps02" INT, "Steps03" INT, "Steps04" INT, "Steps05" INT,
    "Steps06" INT, "Steps07" INT, "Steps08" INT, "Steps09" INT, "Steps10" INT, "Steps11" INT,
    "Steps12" INT, "Steps13" INT, "Steps14" INT, "Steps15" INT, "Steps16" INT, "Steps17" INT,
    "Steps18" INT, "Steps19" INT, "Steps20" INT, "Steps21" INT, "Steps22" INT, "Steps23" INT,
    "Steps24" INT, "Steps25" INT, "Steps26" INT, "Steps27" INT, "Steps28" INT, "Steps29" INT,
    "Steps30" INT, "Steps31" INT, "Steps32" INT, "Steps33" INT, "Steps34" INT, "Steps35" INT,
    "Steps36" INT, "Steps37" INT, "Steps38" INT, "Steps39" INT, "Steps40" INT, "Steps41" INT,
    "Steps42" INT, "Steps43" INT, "Steps44" INT, "Steps45" INT, "Steps46" INT, "Steps47" INT,
    "Steps48" INT, "Steps49" INT, "Steps50" INT, "Steps51" INT, "Steps52" INT, "Steps53" INT,
    "Steps54" INT, "Steps55" INT, "Steps56" INT, "Steps57" INT, "Steps58" INT, "Steps59" INT
);

-- 15. MINUTE STEPS NARROW: Steps per minute (one row per minute).
CREATE TABLE "minute_steps_narrow" (
    "Id" BIGINT,
    "ActivityMinute" TIMESTAMP,
    "Steps" INT
);

-- 16. SLEEP DAY: Daily sleep summary.
CREATE TABLE "sleep_day" (
    "Id" BIGINT,
    "SleepDay" TIMESTAMP,
    "TotalSleepRecords" INT,
    "TotalMinutesAsleep" INT,
    "TotalTimeInBed" INT
);

-- 17. WEIGHT LOG: Weight log (per user).
CREATE TABLE "weight_log" (
    "Id" BIGINT,
    "Date" TIMESTAMP,
    "WeightKg" FLOAT,
    "WeightPounds" FLOAT,
    "Fat" FLOAT,
    "BMI" FLOAT,
    "IsManualReport" BOOLEAN,
    "LogId" BIGINT
);

-- 18. HEARTRATE SECONDS: Heart rate value per second.
CREATE TABLE "heartrate_seconds" (
    "Id" BIGINT,
    "Time" TIMESTAMP,
    "Value" INT
);

-- ===========================
-- END OF TABLE CREATION SCRIPT
-- ===========================

-- Now onn right-clicking each table, we can choose "Import/Export Data", and upload the corresponding CSV.


==============================
-- DATA CLEANING STEPS
==============================

-- A. Check for Missing Values in All Columns

-- daily_activity
SELECT 
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (WHERE "TotalSteps" IS NULL) AS null_totalsteps,
    COUNT(*) FILTER (WHERE "TotalDistance" IS NULL) AS null_totaldistance,
    COUNT(*) FILTER (WHERE "Calories" IS NULL) AS null_calories,
    COUNT(*) FILTER (WHERE "ActivityDate" IS NULL) AS null_activitydate
FROM "daily_activity";

-- daily_intensities
SELECT 
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (WHERE "SedentaryMinutes" IS NULL) AS null_sedentary,
    COUNT(*) FILTER (WHERE "LightlyActiveMinutes" IS NULL) AS null_light,
    COUNT(*) FILTER (WHERE "FairlyActiveMinutes" IS NULL) AS null_fairly,
    COUNT(*) FILTER (WHERE "VeryActiveMinutes" IS NULL) AS null_very,
    COUNT(*) FILTER (WHERE "ActivityDay" IS NULL) AS null_activityday
FROM "daily_intensities";

-- weight_log
SELECT 
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (WHERE "WeightKg" IS NULL) AS null_weightkg,
    COUNT(*) FILTER (WHERE "WeightPounds" IS NULL) AS null_weightpounds,
    COUNT(*) FILTER (WHERE "BMI" IS NULL) AS null_bmi,
    COUNT(*) FILTER (WHERE "Date" IS NULL) AS null_date
FROM "weight_log";

-- sleep_day
SELECT 
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (WHERE "TotalMinutesAsleep" IS NULL) AS null_asleep,
    COUNT(*) FILTER (WHERE "TotalTimeInBed" IS NULL) AS null_inbed,
    COUNT(*) FILTER (WHERE "SleepDay" IS NULL) AS null_sleepday
FROM "sleep_day";

-- hourly_steps
SELECT 
	COUNT(*) FILTER (WHERE "StepTotal" IS NULL) AS null_steptotal 
FROM "hourly_steps";

-- hourly_calories
SELECT 
	COUNT(*) FILTER (WHERE "Calories" IS NULL) AS null_calories 
FROM "hourly_calories";

-- hourly_intensities
SELECT 
	COUNT(*) FILTER (WHERE "TotalIntensity" IS NULL) AS null_totalint, 
    COUNT(*) FILTER (WHERE "AverageIntensity" IS NULL) AS null_avgint
FROM "hourly_intensities";

-- minute_steps_narrow
SELECT 
	COUNT(*) FILTER (WHERE "Steps" IS NULL) AS null_steps 
FROM "minute_steps_narrow";

-- minute_calories_narrow
SELECT 
	COUNT(*) FILTER (WHERE "Calories" IS NULL) AS null_calories 
FROM "minute_calories_narrow";

-- minute_intensities_narrow
SELECT 
	COUNT(*) FILTER (WHERE "Intensity" IS NULL) AS null_intensity 
FROM "minute_intensities_narrow";

-- heartrate_seconds
SELECT 
	COUNT(*) FILTER (WHERE "Value" IS NULL) AS null_hr 
FROM "heartrate_seconds";

-- minute_steps_wide
SELECT COUNT(*) FILTER (WHERE "Steps00" IS NULL) AS null_steps00,
       COUNT(*) FILTER (WHERE "Steps30" IS NULL) AS null_steps30
FROM "minute_steps_wide";


-- Data Quality Note:
-- No NULL values were detected in any of the numeric columns during the initial data quality checks.
-- Therefore, no missing value imputation or removal was necessary for these fields.

-- B. Check for Duplicates (All Main Tables)

-- 1) daily_activity
-- Find duplicate daily records (should be unique by Id + ActivityDate)
SELECT "Id", "ActivityDate", COUNT(*)
FROM "daily_activity"
GROUP BY "Id", "ActivityDate"
HAVING COUNT(*) > 1;

-- 2) daily_intensities
-- Check duplicates for intensity logs
SELECT "Id", "ActivityDay", COUNT(*)
FROM "daily_intensities"
GROUP BY "Id", "ActivityDay"
HAVING COUNT(*) > 1;

-- 3) daily_steps
-- Check duplicates for step logs
SELECT "Id", "ActivityDay", COUNT(*)
FROM "daily_steps"
GROUP BY "Id", "ActivityDay"
HAVING COUNT(*) > 1;

-- 4) sleep_day
-- Duplicates in sleep logs
SELECT "Id", "SleepDay", COUNT(*)
FROM "sleep_day"
GROUP BY "Id", "SleepDay"
HAVING COUNT(*) > 1;
-- Duplicate check result:
-- A review of the 'sleep_day' table revealed 3 instances where the same user (Id) has multiple records for the same SleepDay.
-- Since there are only 3 duplicates, we don't need to keep multiple records per night:
DELETE FROM "sleep_day"
WHERE ctid NOT IN (
  SELECT MIN(ctid)
  FROM "sleep_day"
  GROUP BY "Id", "SleepDay"
);
-- Duplicates in 'sleep_day' were resolved by retaining only the first occurrence per (Id, SleepDay).

-- 5) weight_log
-- Duplicates in weight logs
SELECT "Id", "Date", COUNT(*)
FROM "weight_log"
GROUP BY "Id", "Date"
HAVING COUNT(*) > 1;

-- 6) hourly_steps
SELECT "Id", "ActivityHour", COUNT(*) 
FROM "hourly_steps"
GROUP BY "Id", "ActivityHour" 
HAVING COUNT(*) > 1;

-- 7) hourly_calories
SELECT "Id", "ActivityHour", COUNT(*) 
FROM "hourly_calories"
GROUP BY "Id", "ActivityHour" 
HAVING COUNT(*) > 1;

-- 8) hourly_intensities
SELECT "Id", "ActivityHour", COUNT(*) FROM "hourly_intensities"
GROUP BY "Id", "ActivityHour" HAVING COUNT(*) > 1;

-- 9) minute_steps_narrow
SELECT "Id", "ActivityMinute", COUNT(*) 
FROM "minute_steps_narrow"
GROUP BY "Id", "ActivityMinute" 
HAVING COUNT(*) > 1;

-- 10) minute_calories_narrow
SELECT "Id", "ActivityMinute", COUNT(*) 
FROM "minute_calories_narrow"
GROUP BY "Id", "ActivityMinute" 
HAVING COUNT(*) > 1;

-- 11) minute_intensities_narrow
SELECT "Id", "ActivityMinute", COUNT(*) 
FROM "minute_intensities_narrow"
GROUP BY "Id", "ActivityMinute" 
HAVING COUNT(*) > 1;

-- 12) heartrate_seconds
SELECT "Id", "Time", COUNT(*) 
FROM "heartrate_seconds"
GROUP BY "Id", "Time" 
HAVING COUNT(*) > 1;


-- C. Outlier/Extreme Value Checks (All Main Tables)

-- 1) Steps and Calories (daily_activity)
-- Check for negative or unrealistically high values
SELECT * FROM "daily_activity"
WHERE "TotalSteps" < 0 OR "Calories" < 0
   OR "TotalSteps" > 100000 OR "Calories" > 10000;

-- 2) Weight (weight_log)
SELECT * FROM "weight_log"
WHERE "WeightKg" < 30 OR "WeightKg" > 200 OR "BMI" < 10 OR "BMI" > 60;

-- 3) Heart Rate (heartrate_seconds)
SELECT * FROM "heartrate_seconds"
WHERE "Value" < 30 OR "Value" > 220;

-- 4) hourly_steps
SELECT * 
FROM "hourly_steps" 
WHERE "StepTotal" < 0 OR "StepTotal" > 50000;

-- 5) hourly_calories
SELECT * 
FROM "hourly_calories" 
WHERE "Calories" < 0 OR "Calories" > 5000;

-- 6) hourly_intensities
SELECT * 
FROM "hourly_intensities" 
WHERE "TotalIntensity" < 0 OR "AverageIntensity" < 0;

-- 7) minute_steps_narrow
SELECT * 
FROM "minute_steps_narrow" 
WHERE "Steps" < 0 OR "Steps" > 1000;

-- 8) minute_calories_narrow
SELECT * 
FROM "minute_calories_narrow" 
WHERE "Calories" < 0 OR "Calories" > 50;

-- 9) minute_intensities_narrow
SELECT * 
FROM "minute_intensities_narrow" 
WHERE "Intensity" < 0 OR "Intensity" > 10;

-- 10) heartrate_seconds
SELECT * 
FROM "heartrate_seconds" 
WHERE "Value" < 30 OR "Value" > 220;

-- No extreme or impossible values detected in daily_activity, weight_log, or heartrate_seconds tables, data is clean.


-- ANALYSIS
-- Basic Activity and Health Insights

--- Top 10 Most Active Users
SELECT "Id", SUM("TotalSteps") AS total_steps, SUM("Calories") AS total_calories
FROM "daily_activity"
GROUP BY "Id"
ORDER BY total_steps DESC
LIMIT 10;

--- Average Daily Metrics
SELECT
    AVG("TotalSteps") AS avg_steps,
    AVG("TotalDistance") AS avg_distance,
    AVG("Calories") AS avg_calories
FROM "daily_activity";

--- Activity Frequency Segmentation
SELECT "Id",
       COUNT(DISTINCT "ActivityDate") AS active_days,
       CASE
           WHEN COUNT(DISTINCT "ActivityDate") < 10 THEN 'Low'
           WHEN COUNT(DISTINCT "ActivityDate") < 30 THEN 'Medium'
           ELSE 'High'
       END AS frequency_segment
FROM "daily_activity"
GROUP BY "Id";

--- Intensity and Sleep Analysis

-- a) Minutes per intensity type
SELECT
    AVG("VeryActiveMinutes") AS avg_very_active,
    AVG("FairlyActiveMinutes") AS avg_fairly_active,
    AVG("LightlyActiveMinutes") AS avg_lightly_active,
    AVG("SedentaryMinutes") AS avg_sedentary
FROM "daily_intensities"; 

-- b) Distances per intensity type
SELECT
    AVG("VeryActiveDistance") AS avg_very_active_distance,
    AVG("ModeratelyActiveDistance") AS avg_moderate_distance,
    AVG("LightActiveDistance") AS avg_light_distance,
    AVG("SedentaryActiveDistance") AS avg_sedentary_distance
FROM "daily_intensities";

-- c) -- Sleep summary
SELECT
    AVG("TotalMinutesAsleep") AS avg_sleep,
    AVG("TotalTimeInBed") AS avg_time_in_bed
FROM "sleep_day";

--- Weight and BMI
SELECT
    AVG("WeightKg") AS avg_weight_kg,
    AVG("BMI") AS avg_bmi
FROM "weight_log";

--- Heart Rate
SELECT
    AVG("Value") AS avg_hr,
    MIN("Value") AS min_hr,
    MAX("Value") AS max_hr
FROM "heartrate_seconds";

--- Steps by Month (Trend/Seasonality)
SELECT DATE_TRUNC('month', "ActivityDate") AS month, SUM("TotalSteps") AS total_steps
FROM "daily_activity"
GROUP BY month
ORDER BY month;

--- Users With Declining Monthly Steps
WITH monthly_steps AS (
    SELECT "Id", DATE_TRUNC('month', "ActivityDate") AS month, SUM("TotalSteps") AS steps
    FROM "daily_activity"
    GROUP BY "Id", month
)
SELECT ms1."Id", ms1.month, ms1.steps, ms2.steps AS prev_steps
FROM monthly_steps ms1
JOIN monthly_steps ms2
    ON ms1."Id" = ms2."Id" AND ms1.month = ms2.month + interval '1 month'
WHERE ms1.steps < ms2.steps
ORDER BY ms1."Id", ms1.month;


-- Outlier check: No negative or extreme values found in daily_activity.
-- User coverage: 33 unique users in daily_activity, 24 in weight_log, etc.
-- Top 10 users average over 300,000 steps during the period.


--- Peak Activity Hours (from hourly tables)
SELECT EXTRACT(hour FROM "ActivityHour") AS hour, AVG("StepTotal") AS avg_steps
FROM "hourly_steps"
GROUP BY hour
ORDER BY avg_steps DESC;

--- Peak Hours for Calories
SELECT EXTRACT(hour FROM "ActivityHour") AS hour, AVG("Calories") AS avg_calories
FROM "hourly_calories"
GROUP BY hour
ORDER BY avg_calories DESC;

--- Peak Hours for Intensities
SELECT EXTRACT(hour FROM "ActivityHour") AS hour, AVG("TotalIntensity") AS avg_intensity
FROM "hourly_intensities"
GROUP BY hour
ORDER BY avg_intensity DESC;

--- Daily Patterns: Steps by Day of Week
SELECT EXTRACT(dow FROM "ActivityDate") AS day_of_week, AVG("TotalSteps") AS avg_steps
FROM "daily_activity"
GROUP BY day_of_week
ORDER BY day_of_week;

--- Sleep Patterns by Day of Week
SELECT EXTRACT(dow FROM "SleepDay") AS day_of_week, AVG("TotalMinutesAsleep") AS avg_sleep
FROM "sleep_day"
GROUP BY day_of_week
ORDER BY day_of_week;

--- Correlation Between Steps and Calories
SELECT CORR("TotalSteps", "Calories") AS corr_steps_cal
FROM "daily_activity";

--- Correlation Between Activity and Sleep
SELECT CORR(a."TotalSteps", s."TotalMinutesAsleep") AS corr_steps_sleep
FROM "daily_activity" a
JOIN "sleep_day" s
  ON a."Id" = s."Id" AND a."ActivityDate" = DATE(s."SleepDay");

--- BMI vs Activity: Are heavier users less active?
SELECT CORR(w."BMI", a."TotalSteps") AS corr_bmi_steps
FROM "weight_log" w
JOIN "daily_activity" a
  ON w."Id" = a."Id" AND w."Date"::date = a."ActivityDate";

--- User Retention Rate
WITH first_date AS (
  SELECT "Id", MIN("ActivityDate") AS first_activity
  FROM "daily_activity"
  GROUP BY "Id"
), activity_weeks AS (
  SELECT d."Id",
         FLOOR(EXTRACT(epoch FROM (DATE_TRUNC('week', d."ActivityDate") - DATE_TRUNC('week', f.first_activity))) / (7*24*60*60)) AS week_since_start
  FROM "daily_activity" d
  JOIN first_date f ON d."Id" = f."Id"
)
SELECT week_since_start, COUNT(DISTINCT "Id") AS retained_users
FROM activity_weeks
GROUP BY week_since_start
ORDER BY week_since_start;

--- Sleep Efficiency: Minutes Asleep vs Time in Bed
SELECT
  AVG("TotalMinutesAsleep") AS avg_asleep,
  AVG("TotalTimeInBed") AS avg_inbed,
  (AVG("TotalMinutesAsleep")::float / NULLIF(AVG("TotalTimeInBed"),0)) AS avg_efficiency
FROM "sleep_day";

--- Weight Change Over Time (per user)
SELECT "Id", MIN("Date") AS first_entry, MAX("Date") AS last_entry,
       MIN("WeightKg") AS min_weight, MAX("WeightKg") AS max_weight,
       (MAX("WeightKg") - MIN("WeightKg")) AS weight_change
FROM "weight_log"
GROUP BY "Id"
ORDER BY weight_change DESC;

--- Heart Rate: Distribution and Outliers
SELECT
  PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Value") AS hr_25th,
  PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Value") AS hr_median,
  PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Value") AS hr_75th
FROM "heartrate_seconds";

--- Active vs. Inactive Users
WITH first_last AS (
  SELECT "Id", MIN("ActivityDate") AS first_date, MAX("ActivityDate") AS last_date,
         COUNT(DISTINCT "ActivityDate") AS active_days
  FROM "daily_activity"
  GROUP BY "Id"
)
SELECT *, 
  (last_date - first_date) AS engagement_span,
  CASE WHEN last_date >= (SELECT MAX("ActivityDate") FROM "daily_activity") - INTERVAL '7 days' THEN 'Active'
       ELSE 'Inactive'
  END AS status
FROM first_last
ORDER BY engagement_span DESC;

--- Days Until Dropoff (Churn Analysis)
WITH activity_days AS (
  SELECT "Id", "ActivityDate", 
         ROW_NUMBER() OVER (PARTITION BY "Id" ORDER BY "ActivityDate") AS day_num
  FROM "daily_activity"
)
SELECT "Id", MAX(day_num) AS days_active
FROM activity_days
GROUP BY "Id"
ORDER BY days_active DESC;

--- Percentage of Users Hitting WHO/CDC Recommended Activity (10,000+ steps/day)
SELECT 100.0 * COUNT(DISTINCT "Id") 
	FILTER (WHERE "TotalSteps" >= 10000) / COUNT(DISTINCT "Id") AS percent_10k
FROM "daily_activity";


--- Average Sleep Duration by Activity Level
WITH user_activity AS (
  SELECT "Id", AVG("TotalSteps") AS avg_steps
  FROM "daily_activity"
  GROUP BY "Id"
), user_sleep AS (
  SELECT "Id", AVG("TotalMinutesAsleep") AS avg_sleep
  FROM "sleep_day"
  GROUP BY "Id"
)
SELECT 
  CASE WHEN a.avg_steps >= 10000 THEN 'Highly Active'
       WHEN a.avg_steps >= 5000 THEN 'Moderately Active'
       ELSE 'Low Active'
  END AS activity_group,
  AVG(s.avg_sleep) AS avg_sleep_mins
FROM user_activity a
JOIN user_sleep s ON a."Id" = s."Id"
GROUP BY activity_group;






