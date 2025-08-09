SELECT "cities", COUNT ("id") FROM "schools" WHERE "type" = 'Public School'
ORDER BY COUNT ("id") DESC, "cities" DESC;
