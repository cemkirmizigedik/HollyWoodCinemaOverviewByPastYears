SELECT DISTINCT (td.[RANK])
	,td.DISTRIBUTORS
	,tg.GENRES
	,tgs.SOURCES
	,tpm.[PRODUCTION METHODS]
	,tpm.MOVIES
	,tg.[TOTAL GROSS]
	,tg.[AVERAGE GROSS]
FROM TopDistributors AS td
INNER JOIN TopGenres AS tg ON tg.[RANK] = td.[RANK]
INNER JOIN TopProductionMethods AS tpm ON tpm.[RANK] = tg.[RANK]
LEFT JOIN TopGrossingSources AS tgs ON tgs.[RANK] = tpm.[RANK]






