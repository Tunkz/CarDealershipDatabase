USE cardealershipdatabase;
SELECT contract_id,`date`,customerName,customerEmail,vehicleVIN
FROM sales_contracts 
join inventory on sales_contracts.vehicleVIN = inventory.VIN
JOIN dealerships on inventory.dealership_id = dealerships.dealership_id
WHERE dealerships.`Name` = "Harry"
AND sales_contracts.`Date` between "10-10-2000" AND "11-11-2022"; 