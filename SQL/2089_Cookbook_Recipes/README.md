# 2089_Cookbook_Recipes

You are provided with a table called `cookbook_titles` containing two columns: `page_number` and `title`, representing the page number in a cookbook and the recipe title found on that page (if any).

Your task is to format this data to display how recipes are organized across double-page spreads in the cookbook. Each spread consists of:

- An even-numbered **left page**
- The following **odd-numbered right page**

You must create a new output table with the following columns:

- `left_page_number`: The even-numbered page starting each double-page spread (e.g., 0, 2, 4, ...).
- `left_title`: The title of the recipe on the left page, or `NULL` if no recipe exists.
- `right_title`: The title of the recipe on the right page, or `NULL` if no recipe exists.

**Additional Requirements:**

- The first row should always begin with `left_page_number = 0`, representing the inside cover (which is always empty).
- Continue generating rows until the maximum page number found in the input table is covered.
- If a page has no associated title, the corresponding title should be `NULL`.
- Every page (even those without recipes) should be considered when constructing spreads.

**Input Table:**
- `cookbook_titles`
  - `page_number` (bigint): The number of the page.
  - `title` (text): The title of the recipe on that page.
