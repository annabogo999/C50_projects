SELECT "districts"."name", "expenditures"."pupils"
FROM "districts"
WHERE "expenditures"."pupils" = (
    MIN ("expenditures"."pupils")
);
JOIN "expenditures"
    ON "expenditures"."district_id" = "districts"."id"
