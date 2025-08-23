SELECT "players"."first_name", "players"."last_name", ("salaries"."salary"/"performances"."H") AS "dollars per hit"
FROM "players"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
AND "salaries"."year" = 2001
JOIN "performances" ON "players"."id" = "performances"."player_id"
AND "performances"."year" = 2001
AND "performances"."H" != 0
ORDER BY ("salaries"."salary"/"performances"."H"), "players"."first_name", "players"."last_name" LIMIT 10;
