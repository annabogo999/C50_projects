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

-- *** The Forgotten Gift ***

