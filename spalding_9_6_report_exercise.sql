-- report designed to replicate the '30602_CM-SL-onDemand_5Tran-PrvMo_2023_03_20230907_031908_4268707666' report from Justin Tvedten
-- as an educational exercise 

SELECT 
	dv_360_campaign, 
	campaign_id,
	campaign,
	placement,
	SUM(impressions) AS 'served impressions',
	sum(clicks) AS 'clicks',
	sum(active_view_viewable_impressions) As 'viewable impressions',
	sum(active_view_measurable_impressions) AS 'measurable impressions',
	sum(active_view_eligible_impressions) AS 'eligibible impressions',
	sum(total_conversions) AS 'total conversions',
	sum(dv_360_cost_usd) AS 'DV360 cost',
	sum(view_through_conversions) AS 'view-thru conversions',
	sum(click_through_conversions) AS 'click-thru conversions',
	sum(view_through_revenue) AS 'view-thru rev',
	sum(click_through_revenue) AS 'click-thru rev'
FROM double_click_campaign_manager.alltime_testing
WHERE advertiser = 'Spalding Labs' AND [date] = '2023-09-06'
GROUP BY 
	dv_360_campaign, 
	campaign_id, 
	campaign,
	placement 
ORDER BY campaign_id DESC; 


