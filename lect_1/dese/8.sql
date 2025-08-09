SELECT "districts"."name", "districts"."id"
FROM "districts"
JOIN "expenditures"
ON "expenditures"."district_id" = "districts"."id";

SELECT "expenditures"."district_id", "expenditures"."pupils", "districts"."name"
FROM "expenditures"
JOIN "districts"
ON "districts"."id" = "expenditures"."district_id";
