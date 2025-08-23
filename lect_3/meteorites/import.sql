-- IMPORT FROM csv to temp
.import --csv meteorites.csv temp
-- CLEAN "Relict"
DELETE FROM "meteorites"
WHERE "nametype" = 'Relict';

CREATE TABLE "meteorites_temp1" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" NUMERIC,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY("id")
);
.import --csv meteorites.csv temp
DROP TABLE IF EXISTS "temp;";
DROP TABLE IF EXISTS "meteorites_temp";
.import --csv meteorites.csv meteorites_temp
INSERT INTO "meteorites_temp1" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp";
DELETE FROM "meteorites"
WHERE "nametype" IS NULL;
