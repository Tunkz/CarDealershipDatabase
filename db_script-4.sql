USE cardealershipdatabase;
SELECT dealerships.address, dealerships.`Name`,dealerships.phone,inventory.VIN
from dealerships
join inventory on dealerships.dealership_id = inventory.dealership_id
where inventory.VIN LIKE "17s3f3s90a04";