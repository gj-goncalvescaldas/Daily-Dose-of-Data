# 10176_Bikes_Last_Used

Find the last time each bike was used in the bike sharing system. You need to return the bike number and the exact timestamp of its most recent use, which corresponds to the time it was returned.

The results should be ordered with the most recently used bikes appearing first.

## Table: dc_bikeshare_q1_2012

### Columns:
- **bike_number**: identifier for the bike (text)
- **duration**: duration of the ride (text)
- **duration_seconds**: duration of the ride in seconds (bigint)
- **end_station**: name of the station where the ride ended (text)
- **end_terminal**: terminal ID where the ride ended (bigint)
- **end_time**: timestamp when the bike was returned (timestamp)
- **id**: ride ID (bigint)
- **rider_type**: type of rider (text)
- **start_station**: name of the station where the ride began (text)
- **start_terminal**: terminal ID where the ride began (bigint)
- **start_time**: timestamp when the bike was taken (timestamp)
