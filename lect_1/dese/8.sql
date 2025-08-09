SELECT "district_id", "pupils" FROM "expenditures"
SELECT "name" FROM "districts" WHERE "id" = (
    SELECT "district_id" FROM "expenditures";
)
