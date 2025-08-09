SELECT "district_id", "pupils" FROM "expenditures"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id";
