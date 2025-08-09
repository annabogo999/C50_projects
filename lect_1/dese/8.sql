SELECT "name" FROM "districts" WHERE "id" = (
    SELECT "district_id" FROM "districts"
)
JOIN 
