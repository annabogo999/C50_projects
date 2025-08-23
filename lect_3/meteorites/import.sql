CREATE TABLE "meteorites_temp1" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "id_original" INTEGER NOT NULL UNIQUE,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY("id")
);
.import --csv --skip 1 meteorites.csv temp
DROP TABLE IF EXISTS "temp;";
DROP TABLE IF EXISTS "meteorites_temp";
.import --csv meteorites.csv meteorites_temp
