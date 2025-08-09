SELECT "districts"."name", "districts"."id"
FROM "districts"
JOIN "expenditures"
ON "expenditures"."district_id" = "districts"."id";

SELECT "districts"."name", "districts"."id", "expenditures"."pupils",
FROM "districts"
JOIN "expenditures"
ON "expenditures"."district_id" = "districts"."id";
