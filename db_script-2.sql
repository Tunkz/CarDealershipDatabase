USE cardealershipdatabase;
SELECT dealerships.Name, vehicles.Color,vehicles.Make,vehicles.Model,vehicles.SOLD,vehicles.VIN,vehicles.Year
from vehicles
join inventory on vehicles.VIN = inventory.VIN
join dealerships on inventory.dealership_id = dealerships.dealership_id
where inventory.dealership_id = 1;