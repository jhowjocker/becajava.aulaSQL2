USE [Aula]
GO

/****** Object:  Table [dbo].[DisciplinaClasse]    Script Date: 28/10/2020 08:41:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DisciplinaClasse](
	[DisciplinaId] [int] NULL,
	[ClasseId] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DisciplinaClasse]  WITH CHECK ADD  CONSTRAINT [FK_DisciplinaClasse_Classe] FOREIGN KEY([ClasseId])
REFERENCES [dbo].[Classe] ([Id])
GO

ALTER TABLE [dbo].[DisciplinaClasse] CHECK CONSTRAINT [FK_DisciplinaClasse_Classe]
GO

ALTER TABLE [dbo].[DisciplinaClasse]  WITH CHECK ADD  CONSTRAINT [FK_DisciplinaClasse_Disciplina] FOREIGN KEY([DisciplinaId])
REFERENCES [dbo].[Disciplina] ([ID])
GO

ALTER TABLE [dbo].[DisciplinaClasse] CHECK CONSTRAINT [FK_DisciplinaClasse_Disciplina]
GO


