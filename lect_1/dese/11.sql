SELECT "schools"."name", "expenditures"."per_pupil_expenditure", "graduation_rates"."graduated"
FROM "schools"
JOIN "expenditures"
JOIN "graduation_rates"
ORDER BY "expenditures"."per_pupil_expenditure" DESC, "schools"."name";
