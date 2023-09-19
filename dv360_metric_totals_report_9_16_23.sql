/*
 * report to find totals for metrics from campaigns in DV360 fivetran export
 */

SELECT advertiser,
	campaign,
	ROUND(SUM(billable_cost_usd), 2) AS 'total billable cost',
	ROUND(SUM(total_media_cost_usd), 2) AS total_media_cost_usd,
	SUM(impressions) AS 'total served impressions',
	SUM(clicks) AS 'total clicks',
	SUM(total_conversions) AS 'total coversions' 
FROM google_display_and_video_360.campaigns c 
GROUP BY advertiser, campaign  
ORDER BY advertiser 