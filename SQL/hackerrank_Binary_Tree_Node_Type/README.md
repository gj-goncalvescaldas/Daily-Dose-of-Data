# hackerrank_Binary_Tree_Node_Type

**HackerRank — Binary Tree Node Type**

**Problem Statement:**  
You are given a table `BST` containing two columns: `N` and `P`, where:  
- `N` represents the value of a node in a Binary Tree.  
- `P` represents the parent of `N`.  

Write a query to find the **node type** of each node in the Binary Tree. For each node, output one of the following labels:  

- **Root**: If the node is the root (has no parent).  
- **Leaf**: If the node is a leaf (does not act as a parent of any node).  
- **Inner**: If the node is neither root nor leaf.  

The output must be **ordered by the value of the node (`N`)**.

---

## Input Format

The `BST` table has the following structure:

| Column Name | Type |
|-------------|------|
| N           | int  |
| P           | int  |

- `N` is the value of a node.  
- `P` is the value of the parent of `N`.  
- If `P` is `NULL`, then `N` is the root node.

---

## Sample Input

| N | P |
|---|---|
| 1 | 2 |
| 3 | 2 |
| 6 | 8 |
| 9 | 8 |
| 2 | 5 |
| 8 | 5 |
| 5 | NULL |

---

## Sample Output

| N | NodeType |
|---|----------|
| 1 | Leaf     |
| 2 | Inner    |
| 3 | Leaf     |
| 5 | Root     |
| 6 | Leaf     |
| 8 | Inner    |
| 9 | Leaf     |

---

## Explanation

The Binary Tree structure is:

