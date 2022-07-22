IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND OBJECT_ID = OBJECT_ID('KartPilotList'))
   DROP PROCEDURE KartPilotList
GO

CREATE PROC KartPilotList (
	@RaceID INT
	,@Turns INT
) AS
BEGIN 
	SELECT
		P.PilotID		[PilotID]
		,P.[Name]		[Name]
		,R.Turns		[Turns]
	FROM KartPilot P (NOLOCK)
	INNER JOIN KartRace R (NOLOCK) ON P.PilotID = R.PilotID
	WHERE 
		R.RaceID = @RaceID
		AND R.Turns = @Turns
	ORDER BY
		R.FinishTime
END
GO

EXEC KartPilotList 1, 4