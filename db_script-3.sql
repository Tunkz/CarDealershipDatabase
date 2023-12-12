USE cardealershipdatabase;
SELECT vin, make, model, color, "year", SOLD
from vehicles
where VIN like "17s3f3s90a04"; 