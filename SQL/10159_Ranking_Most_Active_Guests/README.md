# 10159_Ranking_Most_Active_Guests

Identify the most engaged Airbnb guests based on their messaging activity with hosts. Your task is to rank guests according to the total number of messages they have exchanged. The guest with the highest number of messages should receive the top rank.

If multiple guests have the same number of messages, they should be assigned the same rank. Importantly, the ranking should not skip any numbers—even when ranks are shared. 

The output should clearly show:
- The guest identifier (`id_guest`)
- Their rank (`ranking`)
- The total number of messages exchanged (`sum_n_messages`)

The results must be ordered from the most to the least active guest.

**Table:** `airbnb_contacts`

**Relevant Columns:**
- `id_guest`: Unique identifier for each guest.
- `n_messages`: Number of messages exchanged in a single interaction.

Your final output should group message counts per guest, rank them properly without skipping numbers, and present the data in descending order of activity.
