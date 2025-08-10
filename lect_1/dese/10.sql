SELECT "districts"."name", "expenditures"."per_pupil_expenditure"
FROM "districts" 
JOIN "expenditures"
ON "districts"."id" = "expenditures"."district_id";
