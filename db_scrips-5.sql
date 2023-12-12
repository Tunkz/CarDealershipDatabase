USE cardealershipdatabase;
SELECT dealerships.Name,dealerships.address,dealerships.phone,vehicles.VIN,vehicles.Color,vehicles.Make,vehicles.Model,vehicles.Year,vehicles.SOLD
from inventory
inner join dealerships on inventory.dealership_id = dealerships.dealership_id
inner join vehicles on inventory.VIN = vehicles.VIN
where inventory.vin LIKE "17s3f3s90a04";
