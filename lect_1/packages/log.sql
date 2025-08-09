-- *** The Lost Letter ***
SELECT "address", "type" FROM "addresses" WHERE "id" = (
     SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "address_id" != (
        SELECT "to_address_id" FROM "packages" WHERE "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE '%2%innegan%treet%'
        )
        OR "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE '%900%omerville%venue%'
        )
     )
);
-- *** The Devious Delivery ***
SELECT "type" FROM "addresses" WHERE "id" = (
     SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "address_id" != (
        SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL
     )
);
SELECT "contents" FROM "packages" WHERE "id" = (
    SELECT "package_id" FROM "scans" WHERE "action" = 'Drop' AND "address_id" != (
        SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL
     )
);
-- *** The Forgotten Gift ***
SELECT "contents" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" LIKE '%109%ileston%'
)
AND "to_address_id" = (
     SELECT "id" FROM "addresses" WHERE "address" LIKE '%728%aple%lace'
);
SELECT "name" FROM "drivers" WHERE "id" = (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = (
        SELECT "id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE '%109%ileston%'
        )
        AND "to_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE '%728%aple%lace'
        )
    )
);
