IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND OBJECT_ID = OBJECT_ID('KartPilotList'))
   DROP PROCEDURE KartPilotList
GO

CREATE PROC KartPilotList (
	@RaceID INT
) AS
BEGIN 
	SELECT
		P.PilotID		[PilotID]
		,P.[Name]		[Name]
		,DATEADD(ms, SUM(DATEDIFF(ms, '00:00:00.000', R.TurnsTime)), '00:00:00.000') [TotalTime]
	FROM KartPilot P (NOLOCK)
	INNER JOIN KartRace R (NOLOCK) ON P.PilotID = R.PilotID
	WHERE 
		R.RaceID = @RaceID
	GROUP BY
		P.PilotID
		,P.[Name]
	ORDER BY
		TotalTime
END
GO

EXEC KartPilotList 1