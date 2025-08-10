SELECT "districts"."name", "expenditures"."per_pupil_expenditure", "staff_evaluations"."exemplary"
FROM "districts"
JOIN "expenditures"
ON "districts"."id" = "expenditures"."districts_id"
JOIN "staff_evaluations"
ON "districts"."id" = "staff_evaluations"."districts_id"
WHERE "exemplary" > SELECT (
    AVG ("exemplary")
) AND
"per_pupil_expenditure" > SELECT (
    AVG("per_pupil_expenditure")
) AND "districts"."type" = 'Public School District';

