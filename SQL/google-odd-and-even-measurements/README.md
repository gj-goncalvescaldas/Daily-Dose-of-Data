\# google-odd-and-even-measurements



\*\*DataLemur: Google — Odd and Even Measurements\*\*



Assume you're given a table with measurement values obtained from a Google sensor over multiple days, with measurements taken multiple times within each day.



\*\*Task:\*\*  

Write a query to calculate the sum of odd-numbered and even-numbered measurements separately for a particular day and display the results in two different columns.



\*\*Definition:\*\*  

\- Within a day, measurements taken at 1st, 3rd, and 5th times are considered \*\*odd-numbered measurements\*\*.  

\- Measurements taken at 2nd, 4th, and 6th times are considered \*\*even-numbered measurements\*\*.



\*\*Table:\*\*



`measurements`  

\- `measurement\_id` (integer)  

\- `measurement\_value` (decimal)  

\- `measurement\_time` (datetime)  



\*\*Output:\*\*  

\- `measurement\_day`  

\- `odd\_sum`  

\- `even\_sum`



