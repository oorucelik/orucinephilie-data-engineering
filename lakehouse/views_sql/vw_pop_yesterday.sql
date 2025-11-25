SELECT *
FROM dbo.FactContentPopularity
WHERE loadDate = (
    SELECT MAX(loadDate)
    FROM dbo.FactContentPopularity
    WHERE loadDate < (SELECT MAX(loadDate) FROM dbo.FactContentPopularity)
);
