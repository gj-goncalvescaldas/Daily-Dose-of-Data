### 9633_City_With_Most_Amenities

You're given a dataset containing search results for Airbnb properties. Each row in the dataset represents a unique host. The objective is to identify the city that has the highest total number of amenities listed across all of its hosts' properties.

**Table: airbnb_search_details**

This table includes various fields describing Airbnb listings, such as:

- `id`: Unique identifier for the listing
- `price`: Cost per night
- `property_type`, `room_type`, `bed_type`: Details about the property
- `amenities`: A text field listing amenities available for a property
- `accommodates`, `bathrooms`, `bedrooms`, `beds`: Capacity and features of the property
- `cancellation_policy`: Policy type
- `cleaning_fee`: Indicates if there's a cleaning fee
- `city`: The city where the property is located
- `host_identity_verified`: Whether the host's identity is verified
- `host_response_rate`, `host_since`: Host activity metrics
- `neighbourhood`, `zipcode`: Location details
- `number_of_reviews`, `review_scores_rating`: User feedback indicators

**Objective**: Find the city where the combined total of amenities (across all listings in that city) is the highest.

**Output**: A single column `city` showing the name of the city with the most amenities.
