# 10300_Premium_vs_Freemium

Find the total number of downloads for both paying and non-paying users, grouped by date. Only include dates where the number of downloads by non-paying users is greater than that of paying users.

The output should contain the following three columns:
- `date`
- `non_paying` (total downloads by non-paying users)
- `paying` (total downloads by paying users)

Sort the output by date in ascending order.

### Tables:
- **ms_user_dimension**
  - `acc_id` (bigint)
  - `user_id` (bigint)
  
- **ms_acc_dimension**
  - `acc_id` (bigint)
  - `paying_customer` (text)

- **ms_download_facts**
  - `date` (date)
  - `downloads` (bigint)
  - `user_id` (bigint)
