SELECT "districts"."name", "districts"."id"
FROM "districts"
JOIN "expenditures"
ON "expenditures"."district_id" = "districts"."id";
