CREATE TABLE "ingredients" (
    "id" INTEGER,
    "ing_name" TEXT NOT NULL,
    "unit_name" TEXT NOT NULL,
    "unit_size" INTEGER NOT NULL,
    "price_per_unit" NUMERIC NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "donut_name" TEXT NOT NULL,
    "gluten_yn" TEXT NOT NULL CHECK("gluten_yn" IN ('Yes', 'No')),
    "price_per_donut" NUMERIC NOT NULL,
     PRIMARY KEY("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "donut_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers_orders" (
    "id" INTEGER,
    "order_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    PRIMARY KEY("id")
    FOREIGN KEY("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);
CREATE TABLE "donuts_ingredients" (
    "id" INTEGER,
    "donut_id" INTEGER NOT NULL,
    "ingredient_id" INTEGER NOT NULL,
    PRIMARY KEY("id")
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);
