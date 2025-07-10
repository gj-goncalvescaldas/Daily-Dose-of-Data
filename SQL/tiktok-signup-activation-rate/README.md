\# tiktok-signup-activation



\*\*DataLemur: TikTok — Signup Activation Rate\*\*



New TikTok users sign up with their emails. They confirm their signup by replying to the text confirmation to activate their accounts. Users may receive multiple text messages for account confirmation until they have confirmed their new account.



A senior analyst is interested to know the activation rate of specified users in the `emails` table.



\*\*Tables:\*\*



`emails`  

\- `email\_id` (integer)  

\- `user\_id` (integer)  

\- `signup\_date` (datetime)  



`texts`  

\- `text\_id` (integer)  

\- `email\_id` (integer)  

\- `signup\_action` (varchar)  



\*\*Assumptions:\*\*  

\- The analyst is interested in the activation rate of specific users in the `emails` table, which may not include all users that could potentially be found in the `texts` table.  

\- For example, user 123 in the `emails` table may not be in the `texts` table and vice versa.  



\*\*Definition:\*\*  

\- `'Confirmed'` in `signup\_action` means the user has activated their account and successfully completed the signup process.  



\*\*Output:\*\*  

\- One column: `confirm\_rate` (rounded to 2 decimal places)



