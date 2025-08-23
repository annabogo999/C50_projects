CREATE TABLE "schools" (
    "id" INTEGER,
    "school_name" TEXT NOT NULL,
    "school_type" TEXT NOT NULL,
    "school_location" TEXT NOT NULL,
    "found_year" INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "company_name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "company_location" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "users_schools" (
    "id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "sch_start_date" TIMESTAMP NOT NULL,
    "sch_end_date" TIMESTAMP,
    "degree" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE "users_companies" (
    "id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "cp_start_date" TIMESTAMP,
    "cp_end_date" TIMESTAMP,
    "title" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_id") REFERENCES "companies"("id")
);

CREATE TABLE "users_users" (
    "id" INTEGER,
    "user_id_1" INTEGER NOT NULL,
    "user_id_2" INTEGER,
    CHECK ("user_id_1" <> "user_id_2"),
    PRIMARY KEY("id"),
    FOREIGN KEY("user_id_1") REFERENCES "users"("id"),
    FOREIGN KEY("user_id_2") REFERENCES "users"("id")
);
