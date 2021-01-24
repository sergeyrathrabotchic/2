CREATE TABLE `couriers` (
                      id INT NOT NULL AUTO_INCREMENT,
                      fio VARCHAR(100),
                      status INT,
                      PRIMARY KEY (id)
);
CREATE TABLE `orders` (
                         id INT NOT NULL AUTO_INCREMENT,
                         delivery_date DATE,
                         courier_id INT,
                         PRIMARY KEY (id),
                         FOREIGN KEY (courier_id) REFERENCES couriers(id)
);
INSERT INTO couriers (`fio`, `status`)
VALUES ("Sergey Semkin", 0),("Alex", 1),("Nom", 2);

INSERT INTO `orders` (`delivery_date`, `courier_id`)
VALUES ('2013-03-30', 1),('2013-03-30', 2),('2013-03-30', 1);



/*Запрос 3*/
SELECT `orders`.courier_id, `couriers`.fio FROM `couriers`
INNER JOIN `orders` ON   `couriers`.id = `orders`.courier_id  AND  `couriers`.status = 1 AND `orders`.delivery_date != '2021-01-24';


