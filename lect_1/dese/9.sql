SELECT "expenditures"."pupils", "districts"."name"
FROM "expenditures"
JOIN "districts"
ON "districts"."id" = "expenditures"."district_id"
WHERE "expenditures"."pupils" = (
    SELECT MIN ("expenditures"."pupils") FROM "expenditures"
);
