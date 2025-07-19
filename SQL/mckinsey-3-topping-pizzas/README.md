## mckinsey-3-topping-pizzas

**Platform**: DataLemur  
**Company**: McKinsey  
**Difficulty**: Medium  
**Topic**: SQL  

---

### 📄 Question

You’re a consultant for a major pizza chain that will be running a promotion where all 3-topping pizzas will be sold for a fixed price, and are trying to understand the costs involved.

Given a list of pizza toppings, consider all the possible 3-topping pizzas, and print out the total cost of those 3 toppings. Sort the results with the highest total cost on the top followed by pizza toppings in ascending order.

📝 **Constraints & Notes**:
- Do not include combinations with repeated toppings (e.g., ‘Pepperoni,Pepperoni,Onion’).
- Toppings must be alphabetically ordered in output (e.g., `'Chicken,Onions,Sausage'` not `'Onion,Sausage,Chicken'`).
- Ensure proper formatting with no extra spaces between ingredient names.
- Sort results by `total_cost DESC`, then alphabetically by the first, second, and third topping.

---

### 🧾 Table: `pizza_toppings`

| Column Name     | Type          |
|-----------------|---------------|
| topping_name    | varchar(255)  |
| ingredient_cost | decimal(10,2) |

---

### 📥 Example Input

**pizza_toppings**

| topping_name   | ingredient_cost |
|----------------|------------------|
| Pepperoni      | 0.50             |
| Sausage        | 0.70             |
| Chicken        | 0.55             |
| Extra Cheese   | 0.40             |

---

### 📤 Example Output

| pizza                        | total_cost |
|-----------------------------|------------|
| Chicken,Pepperoni,Sausage   | 1.75       |
| Chicken,Extra Cheese,Sausage| 1.65       |
| Extra Cheese,Pepperoni,Sausage| 1.60     |
| Chicken,Extra Cheese,Pepperoni| 1.45     |

---

### ✅ Example Explanation

There are four valid 3-topping combinations using the available toppings. For example:

- `'Chicken,Pepperoni,Sausage'` = $0.55 + $0.50 + $0.70 = **$1.75**
- Combinations are ordered alphabetically by toppings, and sorted by cost descending.



