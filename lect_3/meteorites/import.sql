CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    "id_original" INTEGER NOT NULL UNIQUE,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "disc_year" INTEGER,
    



    PRIMARY KEY("id")
);

