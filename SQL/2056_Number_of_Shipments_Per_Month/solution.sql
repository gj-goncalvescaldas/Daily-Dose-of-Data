SELECT
    DATE_FORMAT(shipment_date, '%Y-%m') AS date_ym,
    COUNT(DISTINCT CONCAT(shipment_id, '-', sub_id)) AS unique_shipments
FROM
    amazon_shipment
GROUP BY
    DATE_FORMAT(shipment_date, '%Y-%m')
ORDER BY
    date_ym;
