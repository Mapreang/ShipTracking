USE [ShipTracking]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 1/10/2024 11:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EventDateTime] [datetime] NOT NULL,
	[ShipSize] [varchar](20) NOT NULL,
	[ShipDirection] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ADDEVENT]    Script Date: 1/10/2024 11:57:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ADDEVENT] 
	-- Add the parameters for the stored procedure here
	@eventDateTime as Datetime,
	@size as varchar(20),
	@direction as varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [dbo].[Events] (EventDateTime, ShipSize, ShipDirection)
	values(@eventDateTime, @size, @direction)
END
GO
