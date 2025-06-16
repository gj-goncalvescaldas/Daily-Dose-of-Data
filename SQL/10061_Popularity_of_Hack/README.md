# 10061_Popularity_of_Hack

Meta/Facebook has developed a new programming language called Hack. To evaluate its adoption, they conducted a survey among their employees. This survey captured data such as prior programming experience, years of experience, age, gender, and most importantly, satisfaction with Hack. However, due to a data collection error, the office location information was not included in the survey results. 

Fortunately, employee user IDs from the survey match those in the employee database, which does contain location information. Your task is to produce a report that shows the average popularity of Hack grouped by office location.

**Tables Involved:**
- `facebook_employees`: Contains employee demographic information including `id` (unique identifier), `location`, `age`, `gender`, and seniority status.
- `facebook_hack_survey`: Contains survey results including `employee_id`, `age`, `gender`, and `popularity` score of Hack.

**Expected Output:**
- `location`
- `average_popularity`
