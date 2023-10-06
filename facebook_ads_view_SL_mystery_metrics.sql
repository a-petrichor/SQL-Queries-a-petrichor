/**/ 
-- this query pulls all metrics for any Spalding Labs ad campaigns in the facebook_ads_view
-- the unspecified metrics remain a complete mystery
-- they do not match any obvious metrics available through the meta ads reports or any numbers on the MPTs
-- the three labeled metrics, clicks, impressions, and cost, also do not match those in the meta ads reports
-- this query is pulling all the Spalding Labs campaigns available in the facebooks_ads_view but there are several more in the meta ads reports not present here
/**/


SELECT 
	DISTINCT campaign_name,
	SUM(clicks) AS 'clicks',
	SUM(impressions) AS 'impressions', 
	SUM(spend) AS 'cost',
	SUM(actionvalue) AS 'metric_1',
	SUM(action7dc) AS 'metric_2',
	SUM(action1dv) AS 'metric_3',
	SUM(valuevalue) AS 'metric_4',
	SUM(value7dc) AS 'metric_5',
	SUM(value1dv) AS 'metric_6'
FROM 
	facebook_ads_view fav
WHERE 
	[date] BETWEEN '2023-08-01' and '2023-08-31' 
	AND
	campaign_name LIKE 'SL%'
GROUP BY 
	campaign_name
order by 
	campaign_name

	