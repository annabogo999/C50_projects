SELECT "districts"."name" FROM "districts"
JOIN "expenditures"."per_pupil_expenditure"
ON "districts"."id" = "expenditures"."district_id"
