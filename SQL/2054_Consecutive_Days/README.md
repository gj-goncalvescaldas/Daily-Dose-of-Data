# 2054_Consecutive_Days

## Problem Description

You are given a table called `sf_events` that logs user activity. The table contains information about which users were active on which days. Your task is to find all users who have been active for **three or more consecutive days**.

## Table

### sf_events

- `account_id`: *text* — Identifier of the account.
- `record_date`: *date* — Date when the activity was recorded.
- `user_id`: *text* — Identifier of the user.

## Objective

Identify and return the list of user IDs who have activity records spanning at least three **consecutive** days.
