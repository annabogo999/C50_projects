-- *** The Lost Letter ***
-- Searching for the address and type of the Lost Letter
SELECT "address", "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "action" = 'Drop' AND "package_id" IN (
        SELECT "id" FROM "packages" WHERE "from_address_id" = (
            SELECT "id" FROM "addresses" WHERE "address" LIKE '%900%omerville%venue%'
        )
    AND "to_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" LIKE '2%inn_gan%treet%'
    ))
);
-- *** The Devious Delivery ***
-- Searching for the package id of the Devious Delivery
SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL AND "contents" LIKE '%duck%' AND "id" IN (
    SELECT "package_id" FROM "scans" WHERE "action" = 'Drop'
);
-- Searching for the address type of the Devious Delivery
SELECT "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" = 5098 AND "action" = 'Drop'
);
-- Searching for the contents of the Devious Delivery
SELECT "contents" FROM "packages" WHERE "id" = 5098;

-- *** The Forgotten Gift ***
-- Searching for the contents of the Forgotten Gift
SELECT "contents", "id" FROM "packages" WHERE "from_address_id" IN (
    SELECT "id" FROM "addresses" WHERE "address" LIKE '%109%ileston%'
)
AND "to_address_id" = (
     SELECT "id" FROM "addresses" WHERE "address" LIKE '%728%aple%lace'
);
-- Searching for the name of the driver that has flowers
SELECT "name" FROM "drivers" WHERE "id" IN (
    SELECT "driver_id" FROM "scans" WHERE "package_id" = 9523 AND "timestamp" = (
        SELECT MAX ("timestamp") FROM "scans" WHERE "package_id" = 9523
    )
);
