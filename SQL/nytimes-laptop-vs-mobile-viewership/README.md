# nytimes-laptop-vs-mobile-viewership

**DataLemur: NY Times — Laptop vs. Mobile Viewership**

You are analyzing user viewership data, categorized by device type. The device types include `'laptop'`, `'tablet'`, and `'phone'`.

The data is stored in the `viewership` table with the following columns:
- `user_id` (integer): ID of the user
- `device_type` (string): Type of device used for viewing
- `view_time` (timestamp): Time of the view

Your task is to calculate the total number of views from:
- **Laptops** (output as `laptop_views`)
- **Mobile devices**, which includes both **tablets and phones** (output as `mobile_views`)

The result should return a single row with two columns:
- `laptop_views`
- `mobile_views`
