SELECT "districts"."names", "expenditures"."per_pupil_expenditure", "staff_evaluations"."exemplary"
FROM "districts" WHERE "districts"."type" = 'Public School District'
JOIN "expenditures"
ON "districts"."id" = "expenditures"."districts_id"
WHERE "per_pupil_expenditure" > SELECT (
    AVG("per_pupil_expenditure")
)
JOIN "staff_evaluations"
ON "districts"."id" = "staff_evaluations"."districts_id"
WHERE "exemplary" > SELECT (
    AVG ("exemplary")
);
