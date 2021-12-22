SELECT hg.[YEAR]
	,hg.MOVIE
	,LEFT(hg.GENRE, 3) AS Genre
	,tgr.[MovieRatingSystem]
	,pct.[CREATIVE TYPES]
	,tpm.[PRODUCTION METHODS]
	,pct.MOVIES
	,pct.[TOTAL GROSS]
	,pct.[AVERAGE GROSS]
FROM PopularCreativeTypes AS pct
LEFT JOIN TopProductionMethods AS tpm ON tpm.[RANK] = pct.[RANK]
INNER JOIN TopGrossingRatings AS tgr ON tgr.[RANK] = tpm.[RANK]
LEFT JOIN [HighestGrossers ] AS hg ON hg.[MovieRatingSystem] = tgr.[MovieRatingSystem]
--where tpm.[PRODUCTION METHODS] like '%Live%'
ORDER BY hg.[YEAR] DESC

