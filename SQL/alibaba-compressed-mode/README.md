\# alibaba-compressed-mode



\*\*DataLemur: Alibaba — Compressed Mode\*\*



You're given a table containing the item count for each order on Alibaba, along with the frequency of orders that have the same item count.



\*\*Task:\*\*  

Retrieve the mode of the order occurrences. If there are multiple item counts with the same mode, the results should be sorted in ascending order.



\*\*Clarifications:\*\*  

\- `item\_count`: Represents the number of items sold in each order.  

\- `order\_occurrences`: Represents the frequency of orders with the corresponding number of items sold per order.  

&nbsp; - For example, if there are 800 orders with 3 items sold in each order, the record would have an `item\_count` of 3 and an `order\_occurrences` of 800.



\*\*Table:\*\*



`items\_per\_order`  

\- `item\_count` (integer)  

\- `order\_occurrences` (integer)  



\*\*Output:\*\*  

\- One column: `mode`



