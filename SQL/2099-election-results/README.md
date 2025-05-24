# 🗳️ Election Results – SQL Problem (StrataScratch ID: 2099)

## 📋 Problem Description

In a city-wide election, each voter is allowed to cast **one vote**. However, voters may choose to split their vote among **multiple candidates**. If a person votes for multiple candidates, the vote is equally divided among those candidates. Some individuals chose **not to vote**, which is reflected by blank entries in the dataset.

The goal is to determine **which candidate(s) received the most total votes**. In the case of a tie, output **all candidates** with the highest total vote count.

> **Note:** To account for floating-point precision issues, the number of votes each candidate receives should be **rounded to three decimal places**.

## 🧾 Table Structure

### `voting_results`

| Column     | Type     | Description                     |
|------------|----------|---------------------------------|
| candidate  | varchar  | Name of the candidate voted for |
| voter      | varchar  | ID of the voter                 |

- Each row in the table represents **one vote allocation** to a candidate.
- The same voter may appear in multiple rows if they voted for multiple candidates.
- Blank entries indicate a voter who chose **not to vote**.

## ✅ Expected Output

- A list of **candidate name(s)** who received the **highest number of votes**.
- Output should include **all tied candidates** in case of a tie.

## 💡 Example

If one voter voted for Candidate A and Candidate B, each would receive 0.5 vote. If another voter only voted for Candidate A, then Candidate A's total would be 1.5.

## 🏷️ Tags

- SQL
- Aggregation
- Grouping
- Window Functions
- Data Cleaning
- Floating Point Precision

## 🧠 Difficulty

**Medium**

## 🏢 Companies

This question has been asked in interviews by:

- Deloitte
- Google
