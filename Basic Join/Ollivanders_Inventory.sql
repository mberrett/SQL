/*
Harry Potter and his friends are at Ollivander's with Ron,
finally replacing Charlie's old broken wand.

Hermione decides the best way to choose is by determining
the minimum number of gold galleons needed
to buy each non-evil wand of high power and age.

Write a query to print the id, age, coins_needed, and power
of the wands that Ron's interested in,
sorted in order of descending power.
If more than one wand has same power,
sort the result in order of descending age.
*/

SELECT id, age, coins_needed, power
FROM Wands as W INNER JOIN Wands_Property as P
ON W.code = P.code
WHERE P.is_evil = 0
AND coins_needed = (SELECT min(coins_needed)
                   FROM Wands as W1 INNER JOIN Wands_Property as P1
                   ON W1.code = P1.code
                   WHERE W.power = W1.power AND P.age = P1.age)
ORDER BY power DESC, age DESC
