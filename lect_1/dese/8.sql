SELECT "district_id", "pupils" FROM "expenditures"
SELECT "name", "id" FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id";
