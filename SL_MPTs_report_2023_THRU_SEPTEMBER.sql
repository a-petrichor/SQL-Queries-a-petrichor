-- this query will pull the KPI reports for Spalding Lab tab of the Marketing Performance & Traffic sheet for April to Sep 2023
-- All months have a slight variance from the numbers Justin generates from his Shell_SL... sheet 
-- June experiences the most extreme discrepancy, unclear for what reason
-- subsequent months will need to be added manually as applicable

(SELECT 
	Advertiser, 
	'YTD' AS Month, 
	sum(cast(DV360_Cost_USD as decimal(18,4))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(18,4))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 3) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4)))/sum(cast(DV360_Cost_USD as decimal(18,4))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(18,4)))/sum(cast(Total_Conversions AS decimal(18,4))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-01-01' AND '2023-08-31'
GROUP BY Advertiser)
UNION 
(SELECT 
	Advertiser, 
	'September 2023' AS Month, 
	sum(cast(DV360_Cost_USD as decimal(18,4))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,2))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(18,4))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 3) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4)))/sum(cast(DV360_Cost_USD as decimal(18,4))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(18,4)))/sum(cast(Total_Conversions AS decimal(18,4))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-09-01' AND '2023-09-30'
GROUP BY Advertiser)
UNION 
(SELECT 
	Advertiser, 
	'August 2023' AS Month, 
	sum(cast(DV360_Cost_USD as decimal(18,4))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,2))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(18,4))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 3) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4)))/sum(cast(DV360_Cost_USD as decimal(18,4))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(18,4)))/sum(cast(Total_Conversions AS decimal(18,4))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-08-01' AND '2023-08-31'
GROUP BY Advertiser)
UNION 
(SELECT 
	Advertiser, 
	'July 2023' AS Month,
	sum(cast(DV360_Cost_USD as decimal(18,4))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(18,4))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 4) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4)))/sum(cast(DV360_Cost_USD as decimal(18,4))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(18,4)))/sum(cast(Total_Conversions AS decimal(18,4))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-07-01' AND '2023-07-31'
GROUP BY 
	Advertiser)
UNION 
(SELECT 
	Advertiser, 
	'June 2023' AS Month,
	sum(cast(DV360_Cost_USD as decimal(18,4))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(18,4))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 4) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4)))/sum(cast(DV360_Cost_USD as decimal(18,4))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(18,4)))/sum(cast(Total_Conversions AS decimal(18,4))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-06-01' AND '2023-06-30'
GROUP BY 
	Advertiser)
UNION 
(SELECT 
	Advertiser, 
	'May 2023' AS Month,
	sum(cast(DV360_Cost_USD as decimal(18,4))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(18,4))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 4) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4)))/sum(cast(DV360_Cost_USD as decimal(18,4))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(18,4)))/sum(cast(Total_Conversions AS decimal(18,4))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-05-01' AND '2023-05-31'
GROUP BY 
	Advertiser)
UNION 
(SELECT 
	Advertiser, 
	'April 2023' AS Month,
	sum(cast(DV360_Cost_USD as decimal(18,4))) AS 'DV360 cost',
	sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4))) AS 'total revenue',
	sum(cast(Total_Conversions AS decimal(18,4))) AS 'total conversions',
	sum(CAST(Active_View_Viewable_Impressions AS int)) As 'impressions',
	sum(CAST(Clicks AS int)) AS 'clicks',
	ROUND((sum(CAST(Clicks AS decimal))/sum(CAST(Active_View_Viewable_Impressions AS decimal)))*100, 4) AS 'CTR',
	ROUND((sum(cast(Spalding_Labs_Conversion_Purchase_EN_SL_Conversion_Purchase_Total_Revenue as decimal(18,4)))/sum(cast(DV360_Cost_USD as decimal(18,4))))*100, 2) AS 'ROAS',
	ROUND(sum(cast(DV360_Cost_USD as decimal(18,4)))/sum(cast(Total_Conversions AS decimal(18,4))),2) AS 'CPA'
FROM email_reports.all_advertisers_campaign_manager_view aacmv 
WHERE Advertiser = 'Spalding Labs' AND [Date] BETWEEN '2023-04-01' AND '2023-04-30'
GROUP BY 
	Advertiser)
	
	