SELECT "districts"."name", "districts"."id"
JOIN "expenditures"
ON "expenditures"."district_id" = "districts"."id";
