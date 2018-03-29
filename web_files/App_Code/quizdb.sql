USE [quizdb]
GO
/****** Object:  Table [dbo].[quizdetails]    Script Date: 08/20/2013 12:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quizdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NULL,
	[description] [nvarchar](4000) NULL,
	[completiondescription] [nvarchar](4000) NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[termsandconditions] [nvarchar](max) NULL,
	[lastupdated] [datetime] NOT NULL,
 CONSTRAINT [PK_quizdetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[quizdetails] ON
INSERT [dbo].[quizdetails] ([id], [name], [description], [completiondescription], [startdate], [enddate], [termsandconditions], [lastupdated]) VALUES (1, N'Sample quiz', N'As a part of the this event we are offering an online quiz. To participate, answer all the questions. You will receive prizes based on your score.', N'Thanks for taking the quiz!!', CAST(0x0000A21400000000 AS DateTime), CAST(0x0000A249018B80D4 AS DateTime), N'<p style="font: 13px/normal arial; color: rgb(69, 85, 96); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
 This page (together with the documents referred to on it) tells you the terms of use on which you may make use of the websites or websites associated with</p>
<p style="font: 13px/normal arial; color: rgb(69, 85, 96); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; -webkit-text-stroke-width: 0px;">
 put your company terms and conditons.</p>
', CAST(0x0000A22000BD4586 AS DateTime))
SET IDENTITY_INSERT [dbo].[quizdetails] OFF
/****** Object:  Table [dbo].[quiz_responses]    Script Date: 08/20/2013 12:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz_responses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quizid] [int] NULL,
	[email] [nvarchar](250) NULL,
	[name] [nvarchar](500) NULL,
	[correctanswers] [int] NULL,
	[wronganswers] [int] NULL,
	[lastupdated] [datetime] NULL,
 CONSTRAINT [PK_quizresponses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[quiz_responses] ON
INSERT [dbo].[quiz_responses] ([id], [quizid], [email], [name], [correctanswers], [wronganswers], [lastupdated]) VALUES (12, 1, N'info@abc.com', N'Test', 3, 2, CAST(0x0000A22000BAB030 AS DateTime))
INSERT [dbo].[quiz_responses] ([id], [quizid], [email], [name], [correctanswers], [wronganswers], [lastupdated]) VALUES (14, 1, N'w@w.com', N'sample', 5, 0, CAST(0x0000A22000C058E0 AS DateTime))
INSERT [dbo].[quiz_responses] ([id], [quizid], [email], [name], [correctanswers], [wronganswers], [lastupdated]) VALUES (15, 1, N'abc@xyz.com', N'User', 0, 5, CAST(0x0000A22000C1547A AS DateTime))
SET IDENTITY_INSERT [dbo].[quiz_responses] OFF
/****** Object:  Table [dbo].[quiz_questions]    Script Date: 08/20/2013 12:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quiz_questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quizid] [int] NOT NULL,
	[questionorder] [int] NULL,
	[type] [nvarchar](50) NULL,
	[title] [nvarchar](2000) NULL,
	[lastupdated] [datetime] NOT NULL,
 CONSTRAINT [PK_quizquestions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[quiz_questions] ON
INSERT [dbo].[quiz_questions] ([id], [quizid], [questionorder], [type], [title], [lastupdated]) VALUES (26, 1, 10, N'single', N'Who is the owner of Virgin group of companies?', CAST(0x0000A22000BD324F AS DateTime))
INSERT [dbo].[quiz_questions] ([id], [quizid], [questionorder], [type], [title], [lastupdated]) VALUES (27, 1, 11, N'single', N'who is the current president of America?', CAST(0x0000A22000AFEDDB AS DateTime))
INSERT [dbo].[quiz_questions] ([id], [quizid], [questionorder], [type], [title], [lastupdated]) VALUES (28, 1, 12, N'single', N'Where is GMT located?', CAST(0x0000A22000AF1D38 AS DateTime))
INSERT [dbo].[quiz_questions] ([id], [quizid], [questionorder], [type], [title], [lastupdated]) VALUES (29, 1, 13, N'single', N'Who is the author of The Help?', CAST(0x0000A22000AFCEEF AS DateTime))
INSERT [dbo].[quiz_questions] ([id], [quizid], [questionorder], [type], [title], [lastupdated]) VALUES (30, 1, 14, N'single', N'Who is the largest producer of milk in the world?', CAST(0x0000A22000B033CD AS DateTime))
SET IDENTITY_INSERT [dbo].[quiz_questions] OFF
/****** Object:  Table [dbo].[question_responses]    Script Date: 08/20/2013 12:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_responses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[responseid] [int] NULL,
	[questionid] [int] NULL,
	[optionid] [int] NULL,
	[lastupdated] [datetime] NULL,
 CONSTRAINT [PK_question_responses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[question_responses] ON
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (56, 12, 26, 66, CAST(0x0000A22000BAB030 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (57, 12, 27, 70, CAST(0x0000A22000BAB030 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (58, 12, 28, 72, CAST(0x0000A22000BAB030 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (59, 12, 29, 76, CAST(0x0000A22000BAB030 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (60, 12, 30, 83, CAST(0x0000A22000BAB030 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (66, 14, 26, 64, CAST(0x0000A22000C058E0 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (67, 14, 27, 70, CAST(0x0000A22000C058E0 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (68, 14, 28, 72, CAST(0x0000A22000C058E0 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (69, 14, 29, 77, CAST(0x0000A22000C058E0 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (70, 14, 30, 83, CAST(0x0000A22000C058E0 AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (71, 15, 26, 66, CAST(0x0000A22000C1547A AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (72, 15, 27, 69, CAST(0x0000A22000C1547A AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (73, 15, 28, 74, CAST(0x0000A22000C1547A AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (74, 15, 29, 76, CAST(0x0000A22000C1547A AS DateTime))
INSERT [dbo].[question_responses] ([id], [responseid], [questionid], [optionid], [lastupdated]) VALUES (75, 15, 30, 80, CAST(0x0000A22000C1547A AS DateTime))
SET IDENTITY_INSERT [dbo].[question_responses] OFF
/****** Object:  Table [dbo].[question_options]    Script Date: 08/20/2013 12:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_options](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questionid] [int] NOT NULL,
	[questionoption] [nvarchar](500) NULL,
	[lastupdated] [datetime] NULL,
 CONSTRAINT [PK_question_options] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[question_options] ON
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (64, 26, N'Sir Richard Branson', CAST(0x0000A22000ABFEA7 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (65, 26, N'Emma Harrison', CAST(0x0000A22000ABFEA7 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (66, 26, N'Geoff Dyson', CAST(0x0000A22000AD75E6 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (67, 26, N'Jane Cavanagh', CAST(0x0000A22000ABFEA7 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (68, 27, N'George Bush', CAST(0x0000A22000AEB905 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (69, 27, N'David Cameron', CAST(0x0000A22000AEB905 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (70, 27, N'Barack Obama', CAST(0x0000A22000AEB905 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (71, 27, N'Joachim Gauck', CAST(0x0000A22000AEB905 AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (72, 28, N'London', CAST(0x0000A22000AF0CCD AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (73, 28, N'Dubai', CAST(0x0000A22000AF0CCD AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (74, 28, N'Tokyo', CAST(0x0000A22000AF0CCD AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (75, 28, N'Honkong', CAST(0x0000A22000AF0CCD AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (76, 29, N'Dan Brown', CAST(0x0000A22000AFBFDA AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (77, 29, N'Kathryn Stockett', CAST(0x0000A22000AFBFDA AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (78, 29, N'Alfred Hitchcock', CAST(0x0000A22000AFBFDA AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (79, 29, N'charles Dickens', CAST(0x0000A22000AFBFDA AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (80, 30, N'China', CAST(0x0000A22000B033CD AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (81, 30, N'America', CAST(0x0000A22000B033CD AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (82, 30, N'Brazil', CAST(0x0000A22000B033CD AS DateTime))
INSERT [dbo].[question_options] ([id], [questionid], [questionoption], [lastupdated]) VALUES (83, 30, N'India', CAST(0x0000A22000B033CD AS DateTime))
SET IDENTITY_INSERT [dbo].[question_options] OFF
/****** Object:  Table [dbo].[question_answer]    Script Date: 08/20/2013 12:46:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_answer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questionid] [int] NOT NULL,
	[optionid] [int] NOT NULL,
	[lastupdated] [datetime] NULL,
 CONSTRAINT [PK_question_answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[question_answer] ON
INSERT [dbo].[question_answer] ([id], [questionid], [optionid], [lastupdated]) VALUES (11, 26, 64, CAST(0x0000A22000BD324F AS DateTime))
INSERT [dbo].[question_answer] ([id], [questionid], [optionid], [lastupdated]) VALUES (12, 27, 70, CAST(0x0000A22000AFEDDB AS DateTime))
INSERT [dbo].[question_answer] ([id], [questionid], [optionid], [lastupdated]) VALUES (13, 28, 72, CAST(0x0000A22000AF1D38 AS DateTime))
INSERT [dbo].[question_answer] ([id], [questionid], [optionid], [lastupdated]) VALUES (14, 29, 77, CAST(0x0000A22000AFCEEF AS DateTime))
INSERT [dbo].[question_answer] ([id], [questionid], [optionid], [lastupdated]) VALUES (15, 30, 83, CAST(0x0000A22000B036B5 AS DateTime))
SET IDENTITY_INSERT [dbo].[question_answer] OFF
/****** Object:  ForeignKey [FK_question_answer_quizquestions]    Script Date: 08/20/2013 12:46:13 ******/
ALTER TABLE [dbo].[question_answer]  WITH CHECK ADD  CONSTRAINT [FK_question_answer_quizquestions] FOREIGN KEY([questionid])
REFERENCES [dbo].[quiz_questions] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[question_answer] CHECK CONSTRAINT [FK_question_answer_quizquestions]
GO
/****** Object:  ForeignKey [FK_question_options_quizquestions]    Script Date: 08/20/2013 12:46:13 ******/
ALTER TABLE [dbo].[question_options]  WITH CHECK ADD  CONSTRAINT [FK_question_options_quizquestions] FOREIGN KEY([questionid])
REFERENCES [dbo].[quiz_questions] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[question_options] CHECK CONSTRAINT [FK_question_options_quizquestions]
GO
/****** Object:  ForeignKey [FK_question_responses_quizresponses]    Script Date: 08/20/2013 12:46:13 ******/
ALTER TABLE [dbo].[question_responses]  WITH CHECK ADD  CONSTRAINT [FK_question_responses_quizresponses] FOREIGN KEY([responseid])
REFERENCES [dbo].[quiz_responses] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[question_responses] CHECK CONSTRAINT [FK_question_responses_quizresponses]
GO
/****** Object:  ForeignKey [FK_quizquestions_quizdetails]    Script Date: 08/20/2013 12:46:13 ******/
ALTER TABLE [dbo].[quiz_questions]  WITH CHECK ADD  CONSTRAINT [FK_quizquestions_quizdetails] FOREIGN KEY([quizid])
REFERENCES [dbo].[quizdetails] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[quiz_questions] CHECK CONSTRAINT [FK_quizquestions_quizdetails]
GO
/****** Object:  ForeignKey [FK_quizresponses_quizdetails]    Script Date: 08/20/2013 12:46:13 ******/
ALTER TABLE [dbo].[quiz_responses]  WITH CHECK ADD  CONSTRAINT [FK_quizresponses_quizdetails] FOREIGN KEY([quizid])
REFERENCES [dbo].[quizdetails] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[quiz_responses] CHECK CONSTRAINT [FK_quizresponses_quizdetails]
GO
