# 10171_Find_the_genre_of_the_person_with_the_most_number_of_oscar_winnings

Find the genre associated with the person who has won the most Oscars.

If there is a tie in the number of Oscar wins among multiple individuals, return the one whose name comes first in alphabetical order.

Use the `name` column as the key to join the following tables:

- **oscar_nominees**
  - `category` (text): Oscar category.
  - `id` (bigint): Identifier.
  - `movie` (text): Movie title.
  - `nominee` (text): Name of the nominee.
  - `winner` (tinyint): Indicates if the nominee won (1) or not (0).
  - `year` (bigint): Year of the nomination.

- **nominee_information**
  - `amg_person_id` (varchar): Person identifier.
  - `birthday` (date): Date of birth.
  - `id` (bigint): Identifier.
  - `name` (varchar): Name of the person.
  - `top_genre` (varchar): Genre most associated with the person.

Your task is to return the `top_genre` of the individual with the highest number of Oscar wins.
