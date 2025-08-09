SELECT "expenditures"."pupils", "districts"."names"
FROM "expenditures" WHERE "expenditures"."pupils" = MIN ("expenditures"."pupils")
JOIN "districts"
ON "districts"."id" = "expenditures"."districts_id";
