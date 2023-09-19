/*
 * report pulling emails w/ highest LTV who are no longer subscribers
 */

SELECT publication,
	email,
	MAX(Lifetime_Amount) AS LTV,
	tenure_in_months,
	subscription_status 
FROM EquineDataLab.KPI_Monthly_SVOD
WHERE subscription_status = 'former'
GROUP BY publication, email, Lifetime_Amount, tenure_in_months, subscription_status  
ORDER BY Lifetime_Amount DESC;