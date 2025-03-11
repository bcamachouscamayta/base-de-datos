SELECT = selecionar ,listar o mostrar | UPDATE = modificar

SELECT * FROM
SELECT * FROM INHABITANT
SELECT * FROM INHABITANT WHERE STATE = "friendly"
SELECT * FROM INHABITANT WHERE state = "friendly" AND job = "weaponsmith"
SELECT * FROM INHABITANT WHERE state = "friendly" AND job LIKE "%smith"
SELECT personid FROM INHABITANT WHERE NAME LIKE "Stranger"
SELECT gold from inhabitant where name = "Stranger"
SELECT * from item where owner is null
UPDATE item SET owner = 20 where owner is null
SELECT * FROM item WHERE owner = 20
SELECT * FROM INHABITANT WHERE state = "friendly" AND job = "dealer" OR job = "merchant"
