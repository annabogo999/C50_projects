SELECT "salaries"."salary"
FROM "salaries"
JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
AND "performances"."year" = 2001
AND "salaries"."year" = 2001
WHERE "performances"."HR" = (
    SELECT MAX("performances"."HR") FROM "performances"
)
GROUP BY "salaries"."player_id"
ORDER BY "salaries"."salary" DESC LIMIT 1;
