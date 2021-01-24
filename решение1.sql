
/*запрос 1*/
SELECT order_id, count(order_id)
FROM goods
GROUP BY order_id
HAVING count(order_id)>3;



/*запрос 2*/
SELECT
    *
FROM
    `goods`
WHERE
        `order_id` IN (SELECT `order_id` FROM `goods` GROUP BY `order_id` HAVING COUNT(*) > 3)
ORDER BY
    `order_id`;