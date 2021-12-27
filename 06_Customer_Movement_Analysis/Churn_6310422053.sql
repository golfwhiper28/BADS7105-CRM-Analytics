SELECT rpt_mth,cust_types, count (distinct cust_code) as n_cust
FROM 
(
    SELECT cust_code,shop_months as rpt_mth
    ,CASE 
        WHEN DATE_DIFF(shop_months,pre_mths,month) is null then "NewCustomer"
        WHEN DATE_DIFF(shop_months,pre_mths,month) = 1 then "RepeatCustomer"
        WHEN DATE_DIFF(shop_months,pre_mths,month) > 1 then "ReactivedCustomer"
    ELSE "OTHERS" END as cust_types
    from
    (
        SELECT DISTINCT cust_code, shop_months
        ,LAG(shop_months, 1) OVER (PARTITION BY cust_code ORDER BY shop_months ASC) AS pre_mths
        from
        (
            SELECT Distinct cust_code, date_trunc(parse_date('%Y%m%d', cast(SHOP_DATE as string)), month) shop_months 
            FROM `basic-breaker-331409.supermarket.rawdata` 
            where cust_code is not null
        )
    )
    union all
    SELECT Distinct cust_code,rpt_mth,'ChurnCustomer' AS cust_types
    FROM 
    (
        SELECT shop_months ,date_add(shop_months , INTERVAL 1 month) AS rpt_mth, cust_code 
        FROM
        (
            SELECT Distinct cust_code, shop_months,
            LAG(shop_months, 1) OVER (PARTITION BY cust_code ORDER BY shop_months DESC) AS next_months,
            DATE_DIFF(LAG(shop_months, 1) OVER (PARTITION BY cust_code ORDER BY shop_months DESC), shop_months, MONTH) AS n_mth
            FROM
            (
                SELECT Distinct cust_code, date_trunc(parse_date('%Y%m%d', cast(SHOP_DATE as string)), month) shop_months 
                FROM `basic-breaker-331409.supermarket.rawdata` 
            )where cust_code is not null
        )WHERE (n_mth > 1 or n_mth is null)
    ) where shop_months < (SELECT MAX(shop_months) FROM (SELECT distinct cust_code, date_trunc(parse_date('%Y%m%d', cast(SHOP_DATE as string)), month) shop_months 
        FROM `basic-breaker-331409.supermarket.rawdata` 
        where cust_code is not null))
)
group by rpt_mth,cust_types
ORDER BY rpt_mth ASC