SELECT "first_name", "last_name"
FROM (
    SELECT "players"."first_name", "players"."last_name", ("salaries"."salary"/"performances"."RBI")
    FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    AND "salaries"."year" = 2001
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    AND "performances"."RBI" != 0
    AND "performances"."year" = 2001
    ORDER BY ("salaries"."salary"/"performances"."RBI")
    LIMIT 10
)
INTERSECT
SELECT "first_name", "last_name"
FROM (
    SELECT "players"."first_name", "players"."last_name", ("salaries"."salary"/"performances"."H")
    FROM "players"
    JOIN "salaries" ON "players"."id" = "salaries"."player_id"
    AND "salaries"."year" = 2001
    JOIN "performances" ON "players"."id" = "performances"."player_id"
    AND "performances"."H" != 0
    AND "performances"."year" = 2001
    ORDER BY ("salaries"."salary"/"performances"."H")
    LIMIT 10
)
ORDER BY "last_name";
