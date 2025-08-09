SELECT "district_id", "pupils" FROM "expenditures"
SELECT "name", "id" FROM "districts" WHERE "id" IN (
    SELECT "district_id" FROM "expenditures"
);
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id";
