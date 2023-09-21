-- report designed to replicate the '30602_CM-SL-onDemand_5Tran-PrvMo_2023_03_20230907_031908_4268707666' report from Justin Tvedten
-- as an educational exercise 

SELECT 
	Advertiser 
	DV360_Campaign, 
	DV360_Insertion_Order,
	DV360_Line_Item, 
	Campaign,
	Campaign_ID,
	placement,
	SUM(CAST(Impressions AS int)) AS 'served impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'viewable impressions',
	sum(CAST(Active_View_Measurable_Impressions AS int)) AS 'measurable impressions',
	sum(CAST(Active_View_Eligible_Impressions AS int)) AS 'eligibible impressions',
	sum(cast(Total_Conversions AS decimal(5,2))) AS 'total conversions', 
	sum(cast(DV360_Cost_USD as decimal(5,2))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Conversions as decimal(5,2))) AS 'total conversions (purchase)',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_View_Through_Conversions as decimal(5,2))) AS 'view-thru conversions (purchase)',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Click_Through_Conversions as decimal(5,5))) AS 'click-thru conversions (purchase)',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(10,5))) AS 'total revenue',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_View_Through_Revenue as decimal(10,5))) AS 'view-thru rev',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Click_Through_Revenue as decimal(10,5))) AS 'click-thru rev'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] = '2023-09-06'
GROUP BY 
	Advertiser, 
	DV360_Campaign, 
	DV360_Insertion_Order,
	DV360_Line_Item,
	Campaign,
	Campaign_ID,
	placement
ORDER BY Campaign_ID DESC; 

