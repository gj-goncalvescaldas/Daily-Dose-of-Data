# 9781_Processed_Ticket_Rate_By_Type

## Problem Description

You are provided with a table named `facebook_complaints` containing information about customer complaints, including the type of complaint and whether it has been processed.

Your task is to calculate the **processed rate** for each complaint type. The processed rate is defined as the **number of processed tickets divided by the total number of tickets** for that type. 

The final result should display each type and its corresponding processed rate, **rounded to two decimal places**.

## Table

### facebook_complaints

- `complaint_id` (bigint): Unique identifier for each complaint.
- `type` (bigint): Category/type of the complaint.
- `processed` (tinyint): Flag indicating whether the ticket was processed (1 for processed, 0 for not processed).

## Output

- `type` (bigint): Complaint type.
- `processed_rate` (float): The processed rate for each type, rounded to two decimal places.
