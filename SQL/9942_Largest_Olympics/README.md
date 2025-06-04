# 9942_Largest_Olympics

Find the Olympics edition (a combination of year and season, as shown in the `games` column) that had the highest number of unique athletes. Each athlete is uniquely identified by the `id` column.

You need to return two columns:
- `games`: the specific Olympics (e.g., "1924 Summer")
- `athletes_count`: the number of unique athletes who participated in that Olympics

**Table:** `olympics_athletes_events`

### Table Schema:
- `id`: bigint – unique identifier for each athlete
- `name`: text – name of the athlete
- `sex`: text – gender of the athlete
- `age`: double – age of the athlete
- `height`: double – height of the athlete
- `weight`: double – weight of the athlete
- `team`: text – team the athlete competed for
- `noc`: text – National Olympic Committee code
- `games`: text – combination of year and season (e.g., "1992 Winter")
- `year`: bigint – year of the Olympics
- `season`: text – "Summer" or "Winter"
- `city`: text – host city
- `sport`: text – sport category
- `event`: text – specific event
- `medal`: text – medal won ("Gold", "Silver", "Bronze", or null)

Return the Olympics edition with the most distinct athletes.
