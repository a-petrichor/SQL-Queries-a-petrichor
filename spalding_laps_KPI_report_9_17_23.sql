/*
 * report pulling total orders + total rev per year & month 
 * along with avg customer tenure/month
 */

SELECT shipment_year,
	shipmentyrmon,
	SUM(total_orders) AS 'total orders',
	SUM(total_revenue) AS 'total rev',
	AVG(tenure_in_months) AS 'AVG tenure' 
FROM EquineDataLab.KPI_Monthly_Spalding_Labs
GROUP BY shipmentyrmon, 
	shipment_year
ORDER BY shipmentyrmon DESC

