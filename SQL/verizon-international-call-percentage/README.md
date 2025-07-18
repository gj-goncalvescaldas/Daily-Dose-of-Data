\# verizon-international-call-percentage



\*\*DataLemur: Verizon — International Call Percentage\*\*



A phone call is considered an international call when the person calling is in a different country than the person receiving the call.



\*\*Task:\*\*  

Calculate the percentage of phone calls that are international. Round the result to \*\*1 decimal place\*\*.



\*\*Assumption:\*\*  

The `caller\_id` in the `phone\_info` table refers to both the caller and the receiver.



\*\*Tables:\*\*



`phone\_calls`  

\- `caller\_id` (integer)  

\- `receiver\_id` (integer)  

\- `call\_time` (timestamp)  



`phone\_info`  

\- `caller\_id` (integer)  

\- `country\_id` (integer)  

\- `network` (integer)  

\- `phone\_number` (string)  



\*\*Output:\*\*  

\- One column: `international\_calls\_pct`



