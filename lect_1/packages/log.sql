-- *** The Lost Letter ***
-- Searching for the address and type of the Lost Letter
SELECT "address", "type" FROM "addresses" WHERE "id" = (
     SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "address_id" != (
        SELECT "to_address_id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE '%900%omerville%venue%'
        )
     )
);

SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" IN (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" LIKE '%900%omerville%venue%'
    )
    AND ("to_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" LIKE '%2innegan%'
    )
    OR "to_address_id" IS NULL
    )
);

-- *** The Devious Delivery ***
-- Searching for the address type of the Devious Delivery
SELECT "type" FROM "addresses" WHERE "id" = (
     SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "address_id" != (
        SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL
     )
);
-- Searching for the contents of the Devious Delivery
SELECT "contents" FROM "packages" WHERE "id" = (
    SELECT "package_id" FROM "scans" WHERE "action" = 'Drop' AND "address_id" != (
        SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL
     )
);
-- *** The Forgotten Gift ***
-- Searching for the contents of the Forgotten Gift
SELECT "contents" FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" LIKE '%109%ileston%'
)
AND "to_address_id" = (
     SELECT "id" FROM "addresses" WHERE "address" LIKE '%728%aple%lace'
);
-- Searching for the name of the driver that has flowers
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
