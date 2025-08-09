SELECT "districts"."name", "districts"."id"
FROM "districts"
JOIN "expenditures"
ON "expenditures"."district_id" = "districts"."id";

SELECT "expenditures"."district_id", "expenditures"."pupils"
FROM "expenditures"
JOIN "districts"."names"
ON "districts"."id" = "expenditures"."district_id";
