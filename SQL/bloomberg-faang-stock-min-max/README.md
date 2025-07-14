\# bloomberg-faang-stock-min-max



\*\*DataLemur: Bloomberg — FAANG Stock Min-Max (Part 1)\*\*



The Bloomberg terminal offers access to a wide range of financial datasets. As a Data Analyst at Bloomberg, you are analyzing the highest and lowest open prices for each FAANG stock by month over the years.



\*\*Task:\*\*  

For each FAANG stock, display the ticker symbol, the month and year (`'Mon-YYYY'`) with the corresponding highest and lowest open prices. Ensure the results are sorted by ticker symbol.



\*\*Table:\*\*



`stock\_prices`  

\- `date` (datetime): The specified date (mm/dd/yyyy) of the stock data  

\- `ticker` (varchar): The stock ticker symbol (e.g., AAPL)  

\- `open` (decimal): The opening price of the stock at the start of the trading day  

\- `high` (decimal): The highest price reached by the stock during the trading day  

\- `low` (decimal): The lowest price reached by the stock during the trading day  

\- `close` (decimal): The closing price of the stock at the end of the trading day  



\*\*Output:\*\*  

\- `ticker`  

\- `highest\_mth`  

\- `highest\_open`  

\- `lowest\_mth`  

\- `lowest\_open`



