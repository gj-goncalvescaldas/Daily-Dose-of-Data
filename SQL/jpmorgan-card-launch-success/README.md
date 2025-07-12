\# jpmorgan-card-launch-success



\*\*DataLemur: JPMorgan — Card Launch Success\*\*



Your team at JPMorgan Chase is soon launching a new credit card. You are asked to estimate how many cards you'll issue in the first month.



Before answering this question, you want to get some perspective on how well new credit card launches typically perform in their first month.



\*\*Task:\*\*  

Write a query that outputs the name of the credit card and how many cards were issued in its launch month. The launch month is defined as the earliest record in the `monthly\_cards\_issued` table for each card.  



Order the results starting from the biggest issued amount.



\*\*Table:\*\*



`monthly\_cards\_issued`  

\- `issue\_month` (integer)  

\- `issue\_year` (integer)  

\- `card\_name` (string)  

\- `issued\_amount` (integer)  



\*\*Output:\*\*  

\- Two columns:  

&nbsp; - `card\_name`  

&nbsp; - `issued\_amount`



