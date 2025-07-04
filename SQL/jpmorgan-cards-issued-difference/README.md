# jpmorgan-cards-issued-difference

**DataLemur: JPMorgan — Cards Issued Difference**

You are analyzing monthly credit card issuance data to gain insights before launching a new product. The data is stored in the `monthly_cards_issued` table.

This table contains:
- `card_name` (string): Name of the credit card
- `issued_amount` (integer): Number of cards issued that month
- `issue_month` (integer): Month of issuance (1-12)
- `issue_year` (integer): Year of issuance

Your task is to write a query that returns:
- The name of each credit card (`card_name`)
- The **difference** between the maximum and minimum number of cards issued in any month for that card (`difference`)

The results should be sorted by the largest difference in descending order. This will help identify which cards had the greatest variance in monthly issuance.
