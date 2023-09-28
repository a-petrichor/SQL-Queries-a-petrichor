-- this query pulls all KPIs needed for the Marketing Performance & Tracking sheet 
-- the numbers are very slightly different from those Justin procures using his Shell_SL... sheet 
-- the differences are fractional ($20,021.02 vs $20,080.7, $158.5 vs $158.3, etc.)
-- this query will only work for Spalding Labs
-- US Rider will be tested later


SELECT 
	Advertiser, 
	sum(cast(DV360_Cost_USD as decimal(5,2))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(10,2))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(10,2))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 3) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(10,2)))/sum(cast(DV360_Cost_USD as decimal(5,2))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(5,2)))/sum(cast(Total_Conversions AS decimal(10,2))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-08-01' AND '2023-08-31'
GROUP BY 
	Advertiser


	
	
	