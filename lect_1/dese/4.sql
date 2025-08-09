SELECT "city", COUNT ("id") FROM "schools" WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY COUNT ("id") DESC, "city" DESC LIMIT 10;
