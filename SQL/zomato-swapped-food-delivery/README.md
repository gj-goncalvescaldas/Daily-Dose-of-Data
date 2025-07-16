\# zomato-swapped-food-delivery



\*\*DataLemur: Zomato — Swapped Food Delivery\*\*



Zomato is a leading online food delivery service that connects users with various restaurants and cuisines, allowing them to browse menus, place orders, and get meals delivered to their doorsteps.



Recently, Zomato encountered an issue with their delivery system. Due to an error in the delivery driver instructions, each item's order was swapped with the item in the subsequent row.



\*\*Task:\*\*  

As a data analyst, you're asked to correct this swapping error and return the proper pairing of order ID and item.  

\- If the last item has an odd order ID, it should remain as the last item in the corrected data.  

\- Return the correct pairs of order IDs and items.



\*\*Table:\*\*



`orders`  

\- `order\_id` (integer): The ID of each Zomato order  

\- `item` (string): The name of the food item in each order  



\*\*Output:\*\*  

\- Two columns:  

&nbsp; - `corrected\_order\_id`  

&nbsp; - `item`



