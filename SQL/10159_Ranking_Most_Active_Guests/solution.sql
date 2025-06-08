SELECT
    id_guest,
    DENSE_RANK() OVER (ORDER BY sum_n_messages DESC) AS ranking,
    sum_n_messages
FROM (
    SELECT
        id_guest, 
        SUM(n_messages) as sum_n_messages
    FROM airbnb_contacts
    GROUP BY id_guest) message_sum



