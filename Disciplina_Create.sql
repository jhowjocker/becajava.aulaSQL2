USE [Aula]
GO

/****** Object:  Table [dbo].[Disciplina]    Script Date: 28/10/2020 08:41:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Disciplina](
	[ID] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[ProfessorId] [int] NULL,
 CONSTRAINT [PK_Disciplina] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Disciplina]  WITH CHECK ADD  CONSTRAINT [FK_Disciplina_Professor] FOREIGN KEY([ProfessorId])
REFERENCES [dbo].[Professor] ([ID])
GO

ALTER TABLE [dbo].[Disciplina] CHECK CONSTRAINT [FK_Disciplina_Professor]
GO


