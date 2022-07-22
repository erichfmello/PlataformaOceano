CREATE DATABASE PlataformaOceano_Kart
GO

USE PlataformaOceano_Kart
GO

CREATE TABLE KartPilot (
	PilotID INT PRIMARY KEY
	,[Name] VARCHAR(MAX)
)
GO

CREATE TABLE KartRace (
	RaceID INT
	,PilotID INT
	,Turns INT
	,TurnsTime DATETIME
	,FinishTime DATETIME
	,VelocityAvarenge DECIMAL(10,3)

	,CONSTRAINT PK PRIMARY KEY (RaceID, PilotID, Turns)
	,CONSTRAINT FK_KartRace_KartPilot FOREIGN KEY (PilotID) REFERENCES KartPilot (PilotID)
)
GO

INSERT INTO KartPilot (PilotID, [Name])
VALUES
	(2, 'K.RAIKKONEN')
	,(11, 'S.VETTEL')
	,(15, 'F.ALONSO')
	,(23, 'M.WEBBER')
	,(33, 'R.BARRICHELLO')
	,(38, 'F.MASSA')
GO

INSERT INTO KartRace (RaceID, FinishTime, PilotID, Turns, TurnsTime, VelocityAvarenge)
VALUES
	(1, '23:49:08.277', 038, 1, '1:02.852', 44.275)
	,(1, '23:49:10.858', 033, 1, '1:04.352', 43.243) 
	,(1, '23:49:11.075', 002, 1, '1:04.108', 43.408) 
	,(1, '23:49:12.667', 023, 1, '1:04.414', 43.202) 
	,(1, '23:49:30.976', 015, 1, '1:18.456', 35.470)
	,(1, '23:50:11.447', 038, 2, '1:03.170', 44.053) 
	,(1, '23:50:14.860', 033, 2, '1:04.002', 43.480)
	,(1, '23:50:15.057', 002, 2, '1:03.982', 43.493)
	,(1, '23:50:17.472', 023, 2, '1:04.805', 42.941) 
	,(1, '23:50:37.987', 015, 2, '1:07.011', 41.528) 
	,(1, '23:51:14.216', 038, 3, '1:02.769', 44.334) 
	,(1, '23:51:18.576', 033, 3, '1:03.716', 43.675) 
	,(1, '23:51:19.044', 002, 3, '1:03.987', 43.490)
	,(1, '23:51:21.759', 023, 3, '1:04.287', 43.287)
	,(1, '23:51:46.691', 015, 3, '1:08.704', 40.504) 
	,(1, '23:52:01.796', 011, 1, '3:31.315', 13.169) 
	,(1, '23:52:17.003', 038, 4, '1:02.787', 44.321) 
	,(1, '23:52:22.586', 033, 4, '1:04.010', 43.474) 
	,(1, '23:52:22.120', 002, 4, '1:03.076', 44.118) 
	,(1, '23:52:25.975', 023, 4, '1:04.216', 43.335) 
	,(1, '23:53:06.741', 015, 4, '1:20.050', 34.763) 
	,(1, '23:53:39.660', 011, 2, '1:37.864', 28.435) 
	,(1, '23:54:57.757', 011, 3, '1:18.097', 35.633)
GO

SELECT * FROM KartPilot
SELECT * FROM KartRace