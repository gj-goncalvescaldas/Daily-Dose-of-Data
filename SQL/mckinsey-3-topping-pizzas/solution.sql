WITH CTE AS (
SELECT
  f.topping_name as f_topping_name,
  f.ingredient_cost as f_ingredient_cost,
  s.topping_name as s_topping_name,
  s.ingredient_cost as s_ingredient_cost,
  t.topping_name as t_topping_name,
  t.ingredient_cost as t_ingredient_cost
  
FROM pizza_toppings f 
JOIN pizza_toppings s 
  ON f.topping_name < s.topping_name
JOIN pizza_toppings t 
  ON f.topping_name < t.topping_name
  AND s.topping_name < t.topping_name
  
ORDER BY f_topping_name, s_topping_name, t_topping_name
)


SELECT 
 STRING_AGG(f_topping_name || ',' || s_topping_name || ',' ||t_topping_name, ',') as pizza,
 f_ingredient_cost + s_ingredient_cost + t_ingredient_cost as total_cost
  
FROM CTE

GROUP BY f_topping_name, s_topping_name, t_topping_name, f_ingredient_cost , s_ingredient_cost , t_ingredient_cost

ORDER BY total_cost DESC, f_topping_name, s_topping_name, t_topping_name