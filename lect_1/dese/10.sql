SELECT "districts"."name", "expenditures"."per_pupil_expenditure"
FROM "districts" WHERE "type" = 'Public School District'
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id"
ORDER BY "expenditures"."per_pupil_expenditure" DESC LIMIT 10;
