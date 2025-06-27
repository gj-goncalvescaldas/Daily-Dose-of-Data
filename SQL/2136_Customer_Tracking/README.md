### 2136_Customer_Tracking

Given a table of user session logs for a specific day, determine the total number of hours each user was active.

A session is considered active when it starts with a state value of `1` and ends when the state value is `0`.

#### Table: cust_tracking

- **cust_id** (text): Identifier for the customer.
- **state** (bigint): Indicates the start (`1`) or end (`0`) of a session.
- **timestamp** (timestamp): Time at which the session state was recorded.

#### Objective

Calculate the total duration in hours that each user was active during the day.

#### Output

- **cust_id**: Customer identifier.
- **hour_diff**: Total active time in hours.
