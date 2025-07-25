# robinhood

**Platform/Source**: Robinhood — Cities With Completed Trades

Robinhood wants to analyze trading activity by location to identify its most active cities.

**Task:**  
Identify the top three cities with the highest number of *completed* trade orders. Return the city name and the number of such orders in descending order.

**Assumptions:**  
- Only trades with status `'Completed'` should be counted.
- Each trade is linked to a user, and each user is associated with a city.
- If there is a tie in the number of orders, the order among them does not matter.
- Limit the result to the top 3 cities only.

**Tables:**  
`trades`  
- `order_id` (integer)  
- `user_id` (integer)  
- `quantity` (integer)  
- `status` (string)  
- `date` (timestamp)  
- `price` (decimal)  

`users`  
- `user_id` (integer)  
- `city` (string)  
- `email` (string)  
- `signup_date` (datetime)

**Output:**  
- Two columns:  
  - `city`  
  - `total_orders`
