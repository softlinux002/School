USE [School_Management]
GO
/****** Object:  User [IIS APPPOOL\ASP.NET v4.0]    Script Date: 07/01/2016 14:06:01 ******/
CREATE USER [IIS APPPOOL\ASP.NET v4.0] FOR LOGIN [IIS APPPOOL\ASP.NET v4.0]
GO
/****** Object:  Table [dbo].[admin_login]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_login](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[type] [varchar](max) NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin_login] ON
INSERT [dbo].[admin_login] ([pk_id], [username], [password], [type]) VALUES (1, N'Admin', N'Admin1234', N'Admin')
SET IDENTITY_INSERT [dbo].[admin_login] OFF
/****** Object:  Table [dbo].[pending_amountpay]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pending_amountpay](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[hostel_name] [varchar](max) NULL,
	[type] [varchar](max) NULL,
	[fee] [varchar](max) NULL,
	[amount_type] [varchar](max) NULL,
	[amount_pay] [varchar](max) NULL,
	[pendingamount] [varchar](max) NULL,
	[remaining] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[pending_amountpay] ON
INSERT [dbo].[pending_amountpay] ([pk_id], [student_id], [name], [date], [hostel_name], [type], [fee], [amount_type], [amount_pay], [pendingamount], [remaining]) VALUES (1, N'ST456Ed', N'1', N'3/5/2016', N'Bhagat Singh', N'Single', N'62000', N'By Cash', N'45000', N'14000', N'3000')
INSERT [dbo].[pending_amountpay] ([pk_id], [student_id], [name], [date], [hostel_name], [type], [fee], [amount_type], [amount_pay], [pendingamount], [remaining]) VALUES (2, N'ST456Ed', N'Baldeep Sing', N'4/6/2016', N'Bhagat Singh', N'Single', N'62000', N'By Cash', N'20000', N'35000', N'35000')
INSERT [dbo].[pending_amountpay] ([pk_id], [student_id], [name], [date], [hostel_name], [type], [fee], [amount_type], [amount_pay], [pendingamount], [remaining]) VALUES (3, N'ST456Ed', N'Kashin Chawla', N'4/8/2016', N'Veeer Singh', N'Single', N'70000', N'By Cash', N'55000', N'15000', N'15000')
INSERT [dbo].[pending_amountpay] ([pk_id], [student_id], [name], [date], [hostel_name], [type], [fee], [amount_type], [amount_pay], [pendingamount], [remaining]) VALUES (4, N'ST456Ed', N'Kashin Chawla', N'4/14/2016', N'Veeer Singh', N'Single', N'70000', N'By Cash', N'70000', N'5000', N'0')
SET IDENTITY_INSERT [dbo].[pending_amountpay] OFF
/****** Object:  Table [dbo].[quiz_ans_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quiz_ans_tbl](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [varchar](max) NULL,
	[question] [varchar](max) NULL,
	[ans] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[password] [varchar](max) NULL,
 CONSTRAINT [PK_quiz_ans_tbl] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[quiz_ans_tbl] ON
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (1, N'General Knowledge ', N'Grand Central Terminal, Park Avenue, New York is the world', N'1', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (2, N'General Knowledge ', N'Entomology is the science that studies', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (3, N'General Knowledge ', N'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (4, N'General Knowledge ', N'Garampani sanctuary is located at', N'3', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (5, N'General Knowledge ', N'For which of the following disciplines is Nobel Prize awarded?', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (6, N'General Knowledge ', N'Hitler party which came into power in 1933 is known as', N'3', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (7, N'General Knowledge ', N'FFC stands for', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (8, N'General Knowledge ', N'Fastest shorthand writer was', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (9, N'General Knowledge ', N'Epsom (England) is the place associated with', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (10, N'General Knowledge ', N'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', N'1', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (11, N'General Knowledge ', N'Grand Central Terminal, Park Avenue, New York is the world', N'1', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (12, N'General Knowledge ', N'Entomology is the science that studies', N'4', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (13, N'General Knowledge ', N'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (14, N'General Knowledge ', N'Garampani sanctuary is located at', N'3', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (15, N'General Knowledge ', N'For which of the following disciplines is Nobel Prize awarded?', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (16, N'General Knowledge ', N'Hitler party which came into power in 1933 is known as', N'3', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (17, N'General Knowledge ', N'FFC stands for', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (18, N'General Knowledge ', N'Fastest shorthand writer was', N'3', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (19, N'General Knowledge ', N'Epsom (England) is the place associated with', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (20, N'General Knowledge ', N'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', N'2', N'sswtashwani@gmail.com', N'sswt')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (21, N'General Knowledge ', N'Grand Central Terminal, Park Avenue, New York is the world', N'1', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (22, N'General Knowledge ', N'Entomology is the science that studies', N'1', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (23, N'General Knowledge ', N'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', N'3', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (24, N'General Knowledge ', N'Garampani sanctuary is located at', N'2', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (25, N'General Knowledge ', N'For which of the following disciplines is Nobel Prize awarded?', N'', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (26, N'General Knowledge ', N'Hitler party which came into power in 1933 is known as', N'', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (27, N'General Knowledge ', N'FFC stands for', N'3', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (28, N'General Knowledge ', N'Fastest shorthand writer was', N'3', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (29, N'General Knowledge ', N'Epsom (England) is the place associated with', N'3', N'sswtkashinchawlaa@gmail.com', N'1234')
INSERT [dbo].[quiz_ans_tbl] ([pk_id], [subject], [question], [ans], [email], [password]) VALUES (30, N'General Knowledge ', N'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', N'1', N'sswtkashinchawlaa@gmail.com', N'1234')
SET IDENTITY_INSERT [dbo].[quiz_ans_tbl] OFF
/****** Object:  Table [dbo].[quiz]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quiz](
	[ques_id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [varchar](max) NULL,
	[question] [varchar](max) NULL,
	[option1] [varchar](max) NULL,
	[option2] [varchar](max) NULL,
	[option3] [varchar](max) NULL,
	[option4] [varchar](max) NULL,
	[option5] [varchar](max) NULL,
	[correctoption] [varchar](max) NULL,
 CONSTRAINT [PK_quiz] PRIMARY KEY CLUSTERED 
(
	[ques_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[quiz] ON
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (1, N'General Knowledge ', N'Grand Central Terminal, Park Avenue, New York is the world', N'largest railway station', N'highest railway station', N'longest railway station', N'None of the above', N'All Of These', N'1')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (2, N'General Knowledge ', N'Entomology is the science that studies', N'Behavior of human beings', N'Insects', N'The origin and history of technical and scientific terms', N'The formation of rocks', N'None of These', N'2')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (3, N'General Knowledge ', N'Eritrea, which became the 182nd member of the UN in 1993, is in the continent of', N'Asia', N'Africa', N'Europe', N'Australia', N'None of the above', N'2')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (4, N'General Knowledge ', N'Garampani sanctuary is located at', N'Junagarh, Gujarat', N'Diphu, Assam', N'Kohima, Nagaland', N'Gangtok, Sikkim', N'All Of These', N'2')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (5, N'General Knowledge ', N'For which of the following disciplines is Nobel Prize awarded?', N'Physics and Chemistry', N'Physiology or Medicine', N'Literature, Peace and Economics', N'All of the above', N'None of the above', N'4')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (6, N'General Knowledge ', N'Hitler party which came into power in 1933 is known as', N'Labour Party', N'Nazi Party', N'Ku-Klux-Klan', N'Democratic Party', N'None of the above', N'2')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (7, N'General Knowledge ', N'FFC stands for', N'Foreign Finance Corporation', N'Film Finance Corporation', N'Federation of Football Council', N'None of the above', N'All Of These', N'2')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (8, N'General Knowledge ', N'Fastest shorthand writer was', N'Dr. G. D. Bist', N'J.R.D. Tata', N'J.M. Tagore', N'Khudada Khan', N'All Of These', N'1')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (9, N'General Knowledge ', N'Epsom (England) is the place associated with', N'Horse racing', N'Polo', N'Shooting', N'Snooker', N'None of the above', N'1')
INSERT [dbo].[quiz] ([ques_id], [subject], [question], [option1], [option2], [option3], [option4], [option5], [correctoption]) VALUES (10, N'General Knowledge ', N'First human heart transplant operation conducted by Dr. Christiaan Barnard on Louis Washkansky, was conducted in', N'1967', N'1968', N'1958', N'1922', N'All Of These', N'1')
SET IDENTITY_INSERT [dbo].[quiz] OFF
/****** Object:  Table [dbo].[parent_review]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parent_review](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[parent_name] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[student_class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[review_date] [varchar](max) NULL,
	[review] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[participationcertificate]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[participationcertificate](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[schoolname] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[participation_title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[date] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[participationcertificate] ON
INSERT [dbo].[participationcertificate] ([pk_id], [schoolname], [student_name], [participation_title], [description], [date]) VALUES (1, N'Partap Public School', N'Ashwani Kumar', N'The International Essay Compition 2008', N'What can you do to shape the city of your dreams?', N'2/23/2016')
INSERT [dbo].[participationcertificate] ([pk_id], [schoolname], [student_name], [participation_title], [description], [date]) VALUES (2, N'Maharishi Markandeswar International School', N'Kashin Chawla', N'The International Essay Compition 2008', N'What can you do to shape the city of your dreams?', N'2/23/2016')
INSERT [dbo].[participationcertificate] ([pk_id], [schoolname], [student_name], [participation_title], [description], [date]) VALUES (3, N'S.D Model Sr.Sec School', N'Piyush Ahuja', N'Debate in Politics 2010', N'What can you do to shape the city of your dreams?', N'2/23/2016')
INSERT [dbo].[participationcertificate] ([pk_id], [schoolname], [student_name], [participation_title], [description], [date]) VALUES (4, N'Partap Public School', N'Ashwani Kumar', N'The International Essay Compition 2008', N'What can you do to shape the city of your dreams?', N'2/24/2016')
INSERT [dbo].[participationcertificate] ([pk_id], [schoolname], [student_name], [participation_title], [description], [date]) VALUES (5, N'Raja Ram Vidyapith School', N'Kashin Chawla', N'Singing', N'Competeion Singing 2016', N'19/03/2016')
SET IDENTITY_INSERT [dbo].[participationcertificate] OFF
/****** Object:  Table [dbo].[parentinfo]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[parentinfo](
	[parent_id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[relation] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[qualification] [varchar](max) NULL,
	[occupation] [varchar](max) NULL,
	[income] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[mobilephone] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[type] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[parentinfo] ON
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (1, N'Rajesh Kumar', N'Ashwani Kumar', N'father', N'6/9/1964', N'+2', N'Farmer', N'300000', N'veersingh@gmail.com', N'8529403539', N'sswt', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (2, N'Ram Chander', N'Baldeep Sing', N'father', N'8/4/1972', N'10th', N'Businessman', N'350000', N'sswtkashinchawla1@gmail.com', N'8950120556', N'sswt', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (3, N'Satish Verma', N'Rahul Verma', N'father', N'11/26/1965', N'+2', N'ServiceMan', N'400000', N'ashu121@gmail.com', N'8950120556', N'sswt', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (4, N'Mahinder Chawla', N'Kashin Chawla', N'father', N'2/2/1966', N'10th', N'Businessman', N'350000', N'mahinder131@gmail.com', N'8950120556', N'sswt', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (5, N'Thakur Joshi', N'Rohit Joshi', N'father', N'2/9/2016', N'10th', N'Businessman', N'300000', N'sswtrohit@gmail.com', N'8950120556', N'sswt', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (6, N'Ahmad Khan', N'Faizan Khan', N'father', N'2/24/2016', N'+2', N'Businessman', N'1000000', N'sswtfaizan@gmail.com', N'8950120556', N'sswt', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (10, N'Mahinder Chawla', N'Kashin Chawla', N'Father', N'1/15/1961', N'PG', N'Businessman', N'230000', N'sswtkashinchawla@gmail.com', N'7404492522', N'1234', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (11, N'Ram Chander', N'Baldeep Sing', N'Father', N'5/5/2016', N'PG', N'gfgd', N'260000', N'sswt@gmail.com', N'9416957616', N'Te1378ER', N'parent')
INSERT [dbo].[parentinfo] ([parent_id], [firstname], [student_name], [relation], [dob], [qualification], [occupation], [income], [email], [mobilephone], [password], [type]) VALUES (12, N'Rajesh Kumar', N'Ashwani Kumar', N'Father', N'4/26/2016', N'PG', N'gfgd', N'260000', N'sswt@gmail.com', N'9416957616', N'Te3445ER', N'parent')
SET IDENTITY_INSERT [dbo].[parentinfo] OFF
/****** Object:  Table [dbo].[insert_class]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[insert_class](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[insert_class] ON
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (17, N'L.K.G')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (19, N'fdshjf')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (3, N'U.K.G')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (4, N'First')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (5, N'Second')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (6, N'Third')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (7, N'Fourth')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (8, N'Fifth')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (9, N'Sixth')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (10, N'Seventh')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (11, N'Eighth')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (12, N'Nineth')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (13, N'Tenth')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (14, N'Eleventh')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (15, N'Tweleth')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (20, N'B.tech')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (21, N'Kevin')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (22, N'dfdff')
INSERT [dbo].[insert_class] ([pk_id], [class]) VALUES (23, N'abc')
SET IDENTITY_INSERT [dbo].[insert_class] OFF
/****** Object:  Table [dbo].[issue_items]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[issue_items](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](100) NULL,
	[class] [varchar](100) NULL,
	[section] [varchar](100) NULL,
	[stream] [varchar](100) NULL,
	[roll_no] [int] NULL,
	[student_name] [varchar](100) NULL,
	[item_code] [varchar](100) NULL,
	[item_name] [varchar](100) NULL,
	[rate] [varchar](100) NULL,
 CONSTRAINT [PK_issue_items] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[issue_items] ON
INSERT [dbo].[issue_items] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [item_code], [item_name], [rate]) VALUES (1, N'2014-2015', N'First', N'A', N'Art', 1, N'Baldeep Sing', N'Item 1001780', N'Uniform', N'500')
INSERT [dbo].[issue_items] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [item_code], [item_name], [rate]) VALUES (2, N'2015-2016', N'First', N'A', N'Art', 1, N'Ashwani Kumar', N'Item 1001780', N'Uniform', N'500')
INSERT [dbo].[issue_items] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [item_code], [item_name], [rate]) VALUES (10, N'2015-2016', N'First', N'A', N'Art', 1, N'Ashwani Kumar', N'Item 1001335', N'Dairy', N'45')
INSERT [dbo].[issue_items] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [item_code], [item_name], [rate]) VALUES (11, N'2014-2015', N'First', N'A', N'Art', 1, N'Baldeep Sing', N'Item 1001335', N'Dairy', N'45')
INSERT [dbo].[issue_items] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [item_code], [item_name], [rate]) VALUES (12, N'2016-2017', N'Tweleth', N'A', N'Art', 1, N'Kashin Chawla', N'Item 1003115 ', N'Uniform', N'1500')
INSERT [dbo].[issue_items] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [item_code], [item_name], [rate]) VALUES (13, N'2014-2015', N'First', N'A', N'Art', 2, N'Kashin Chawla', N'Item 1001335 ', N'Dairy', N'45')
SET IDENTITY_INSERT [dbo].[issue_items] OFF
/****** Object:  Table [dbo].[issue_book]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[issue_book](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[isbn_no] [varchar](max) NULL,
	[book_name] [varchar](max) NULL,
	[category] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[author] [varchar](max) NULL,
	[cupboard] [varchar](max) NULL,
	[cupboard_self] [varchar](max) NULL,
	[edition] [varchar](max) NULL,
	[publisher] [varchar](max) NULL,
	[book_cost] [varchar](max) NULL,
	[book_vendor] [varchar](max) NULL,
	[copy] [varchar](max) NULL,
	[holder_type] [varchar](max) NULL,
	[card_no] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[holder_name] [varchar](max) NULL,
	[issue_date] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[issue_book] ON
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (1, N'4544543212', N'Numerical and Statistical Computing', N'Technology', N'NSC', N'Hajime Sorayama', N'Cupboard - A', N'Shelf - A1', N'2nd Edition', N'Atul Book Stall', N'800', N'Kashin', N'1', N'Student', N'14274068', N'2015-2016', N'First', N'A', N'Art', N'1', N'Ashwani Kumar', N'', N'2/9/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (2, N'45311802412', N'Data Base Management System', N'Technology', N'DBMS', N'JAMES MARTIN', N'Cupboard - A', N'Shelf - A1', N'THIRD EDITION', N'Tata Mcgraw Hill', N'450', N'Kashin', N'1', N'Student', N'14319746', N'2014-2015', N'First', N'A', N'Art', N'2', N'Kashin Chawla', N'', N'3/3/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (3, N'4544543212', N'Numerical and Statistical Computing', N'Technology', N'NSC', N'Hajime Sorayama', N'Cupboard - A', N'Shelf - A1', N'2nd Edition', N'Atul Book Stall', N'800', N'Kashin', N'1', N'Employee', N'14228390 ', N'', N'', N'', N'', N'', N'', N'Kashin Chawla', N'3/3/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (4, N'4544543212', N'Numerical and Statistical Computing', N'Technology', N'NSC', N'Hajime Sorayama', N'Cupboard - A', N'Shelf - A1', N'2nd Edition', N'Atul Book Stall', N'800', N'Kashin', N'1', N'Employee', N'14228390 ', N'', N'', N'', N'', N'', N'', N'Kashin Chawla', N'3/3/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (5, N'4544543212', N'Numerical and Statistical Computing', N'Technology', N'NSC', N'Hajime Sorayama', N'Cupboard - A', N'Shelf - A1', N'2nd Edition', N'Atul Book Stall', N'800', N'Kashin', N'1', N'Employee', N'14228390 ', N'', N'', N'', N'', N'', N'', N'Kashin Chawla', N'3/3/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (6, N'45222716012 ', N'Batman', N'Comics', N'Super Hero', N'Luis Frerro', N'Cupboard - A', N'Shelf - A4', N'2nd', N'Kapoor', N'120', N'Faizan Khan', N'1', N'Student', N'14456782', N'2016-2017', N'Tweleth', N'A', N'Art', N'1', N'Kashin Chawla', N'', N'06/04/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (7, N'45133629612', N'Computer Science', N'Technology', N'CS', N'dfff', N'Cupboard - A', N'Shelf - A1', N'2nd', N'fdgf', N'450', N'Faizan Khan', N'1', N'Student', N'14456782', N'2016-2017', N'Tweleth', N'A', N'Art', N'1', N'Kashin Chawla', N'', N'04/07/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (8, N'45222716012', N'Batman', N'Comics', N'Super Hero', N'Luis Frerro', N'Cupboard - A', N'Shelf - A4', N'2nd', N'Kapoor', N'120', N'Faizan Khan', N'1', N'Student', N'14456782', N'2016-2017', N'Tweleth', N'A', N'Art', N'1', N'Kashin Chawla', N'', N'05/11/2016')
INSERT [dbo].[issue_book] ([pk_id], [isbn_no], [book_name], [category], [title], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [holder_type], [card_no], [batch], [class], [section], [stream], [roll_no], [student_name], [holder_name], [issue_date]) VALUES (9, N'45311802412', N'Data Base Management System', N'Technology', N'DBMS', N'JAMES MARTIN', N'Cupboard - A', N'Shelf - A1', N'THIRD EDITION', N'Tata Mcgraw Hill', N'450', N'Kashin', N'1', N'Employee', N'14228390 ', N'', N'', N'', N'', N'', N'', N'Kashin Chawla', N'05/10/2016')
SET IDENTITY_INSERT [dbo].[issue_book] OFF
/****** Object:  Table [dbo].[item_location]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[item_location](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[location_name] [varchar](max) NULL,
	[item_name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[item_location] ON
INSERT [dbo].[item_location] ([pk_id], [location_name], [item_name]) VALUES (4, N'Rack  No 1', N'Uniform')
INSERT [dbo].[item_location] ([pk_id], [location_name], [item_name]) VALUES (5, N'Rack No 2', N'Books ')
INSERT [dbo].[item_location] ([pk_id], [location_name], [item_name]) VALUES (6, N'Rack No 3', N'Dairy')
SET IDENTITY_INSERT [dbo].[item_location] OFF
/****** Object:  Table [dbo].[lectureplan]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lectureplan](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_name] [varchar](50) NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[lectureplan] ON
INSERT [dbo].[lectureplan] ([pk_id], [teacher_name], [batch], [stream], [class], [section], [subject], [image]) VALUES (1, N'Rohit Joshi', N'2014-2015', N'Art', N'First', N'A', N'Account', N'~/img/Industrial content.docx')
INSERT [dbo].[lectureplan] ([pk_id], [teacher_name], [batch], [stream], [class], [section], [subject], [image]) VALUES (5, N'Kashin Chawla', N'2014-2015', N'Art', N'Second', N'A', N'Sanskrit', N'~/img/CRM Module II-Cars-Insurance.docx')
SET IDENTITY_INSERT [dbo].[lectureplan] OFF
/****** Object:  Table [dbo].[librarycard_generate]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[librarycard_generate](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[card_no] [varchar](max) NULL,
	[type] [varchar](max) NULL,
	[id] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[roll] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[mobile] [varchar](max) NULL,
	[address1] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[librarycard_generate] ON
INSERT [dbo].[librarycard_generate] ([pk_id], [card_no], [type], [id], [name], [batch], [class], [section], [stream], [roll], [father_name], [mobile], [address1]) VALUES (5, N'1445678', N'Student', N'ST436Ed', N'Kashin Chawla', N'2014-2015', N'First', N'A', N'Art', N'2', N'Mahinder Chawla', N'7404492522', N'131 Krishna Nagar')
INSERT [dbo].[librarycard_generate] ([pk_id], [card_no], [type], [id], [name], [batch], [class], [section], [stream], [roll], [father_name], [mobile], [address1]) VALUES (4, N'14228390', N'Employee', N'TE1024LE', N'Kashin Chawla', N'', N'', N'', N'', N'', N'Mahinder Chawla', N'7404492522', N'131,Krishna Nagar')
INSERT [dbo].[librarycard_generate] ([pk_id], [card_no], [type], [id], [name], [batch], [class], [section], [stream], [roll], [father_name], [mobile], [address1]) VALUES (6, N'14456782', N'Student', N'ST456Ed', N'Kashin Chawla', N'2016-2017', N'Tweleth', N'A', N'Art', N'1', N'Mahinder Chawla', N'9254492522', N'131 Krishna Nagar Karnal')
INSERT [dbo].[librarycard_generate] ([pk_id], [card_no], [type], [id], [name], [batch], [class], [section], [stream], [roll], [father_name], [mobile], [address1]) VALUES (7, N'14274068', N'Student', N'ST446Ed', N'Rahul Verma', N'2015-2016', N'Second', N'A', N'Commerce', N'1', N'Satish Verma', N'8950120556', N'Hansi Road')
SET IDENTITY_INSERT [dbo].[librarycard_generate] OFF
/****** Object:  StoredProcedure [dbo].[login_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[login_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from login where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from login where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from login 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[login_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[login_proc]
@action varchar(10)
,@pk_id int
,@username varchar(max)
,@password varchar(max)
,@type varchar(max)

as

		-----insert
		if @action='insert'
		begin
		insert into login values(@username,@password,@type)
		end
		
		-----update
		if @action='Update'
		begin
		Update login set username=@username,password=@password,type=@type where pk_id=@pk_id
		end
GO
/****** Object:  Table [dbo].[Pamphlet]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pamphlet](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[pdf] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pamphlet] ON
INSERT [dbo].[Pamphlet] ([pk_id], [pdf]) VALUES (4, N'~/img/1.pdf')
SET IDENTITY_INSERT [dbo].[Pamphlet] OFF
/****** Object:  Table [dbo].[noticeboard]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[noticeboard](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [varchar](max) NULL,
	[notice] [varchar](max) NULL,
	[date] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[noticeboard] ON
INSERT [dbo].[noticeboard] ([pk_id], [subject], [notice], [date]) VALUES (1, N'Holiday', N'Basant Panchami Holiday', N'2/12/2016')
INSERT [dbo].[noticeboard] ([pk_id], [subject], [notice], [date]) VALUES (2, N'Exam Fee Notice', N'All Student Submit your Exam fees Last Fee Submission Date 15/Feb/2016', N'2/20/2016')
SET IDENTITY_INSERT [dbo].[noticeboard] OFF
/****** Object:  Table [dbo].[cupboardself]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cupboardself](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[cupboard] [varchar](max) NULL,
	[capacity] [varchar](max) NULL,
	[detail] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[cupboardself] ON
INSERT [dbo].[cupboardself] ([pk_id], [name], [cupboard], [capacity], [detail]) VALUES (1, N'Shelf - A1', N'Cupboard - A', N'40', N'Shelf-A1 for Cupboard-A')
INSERT [dbo].[cupboardself] ([pk_id], [name], [cupboard], [capacity], [detail]) VALUES (2, N'Shelf - A2', N'Cupboard - A', N'50', N'Shelf-A2  for Cupboard-A')
INSERT [dbo].[cupboardself] ([pk_id], [name], [cupboard], [capacity], [detail]) VALUES (3, N' Shelf - A3', N'Cupboard - A', N'60', N'Shelf-A3 for Cupboard-AB')
INSERT [dbo].[cupboardself] ([pk_id], [name], [cupboard], [capacity], [detail]) VALUES (5, N'Shelf - A4', N'Cupboard - A', N'50', N'Shelf-A1 for Cupboard-A')
INSERT [dbo].[cupboardself] ([pk_id], [name], [cupboard], [capacity], [detail]) VALUES (6, N' Shelf - A1 ', N'Cupboard - A', N'40', N'Shelf-A1 for Cupboard-A ')
SET IDENTITY_INSERT [dbo].[cupboardself] OFF
/****** Object:  Table [dbo].[dailyattandance]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dailyattandance](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dailyattandance] ON
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (1, N'2/9/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (2, N'2/9/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (3, N'2/9/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (4, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (5, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (6, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (7, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (8, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (9, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (10, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (11, N'2/17/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (12, N'2/25/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (13, N'2/25/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (14, N'2/25/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (15, N'2/25/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (16, N'2/25/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (17, N'2/25/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (18, N'2/25/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (19, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (20, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (21, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Leave')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (22, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (23, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'5', N'fgdsrf', N'Leave')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (24, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (25, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (26, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (27, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (28, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (29, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (32, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (33, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (34, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (35, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (36, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (37, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (38, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (39, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (44, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (45, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (46, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (47, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (50, N'4/6/2016', N'2016-2017', N'Art', N'Tweleth', N'A', N'1', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (51, N'7/1/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (52, N'7/1/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (53, N'7/1/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (54, N'7/1/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (55, N'7/1/2016', N'2014-2015', N'Art', N'First', N'A', N'5', N'fgdsrf', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (56, N'7/1/2016', N'2015-2016', N'Art', N'First', N'A', N'1', N'Ashwani Kumar', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (30, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (31, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (40, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'1', N'Baldeep Sing', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (41, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'2', N'Kashin Chawla', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (42, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'3', N'Faizan Khan', N'Absent')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (43, N'22/03/2016', N'2014-2015', N'Art', N'First', N'A', N'4', N'Rohan Roy', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (48, N'22/03/2016', N'2015-2016', N'Art', N'First', N'A', N'1', N'Ashwani Kumar', N'Present')
INSERT [dbo].[dailyattandance] ([pk_id], [date], [batch], [stream], [class], [section], [roll_no], [name], [status]) VALUES (49, N'22/03/2016', N'2015-2016', N'Art', N'First', N'A', N'1', N'Ashwani Kumar', N'Present')
SET IDENTITY_INSERT [dbo].[dailyattandance] OFF
/****** Object:  Table [dbo].[dashimage]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dashimage](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dashimage] ON
INSERT [dbo].[dashimage] ([pk_id], [image]) VALUES (2, N'~/img/1.jpg')
INSERT [dbo].[dashimage] ([pk_id], [image]) VALUES (4, N'~/img/Bear.bmp')
SET IDENTITY_INSERT [dbo].[dashimage] OFF
/****** Object:  Table [dbo].[dailydiary]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dailydiary](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[subject_name] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[description] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[dailydiary] ON
INSERT [dbo].[dailydiary] ([pk_id], [batch], [stream], [class], [section], [subject_name], [date], [description]) VALUES (1, N'2014-2015', N'Art', N'First', N'A', N'Account', N'2/9/2016', N'Account Chapter 4 Prepare')
INSERT [dbo].[dailydiary] ([pk_id], [batch], [stream], [class], [section], [subject_name], [date], [description]) VALUES (3, N'2016-2017', N'Art', N'Tweleth', N'A', N'Sanskrit', N'4/7/2016', N'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ')
SET IDENTITY_INSERT [dbo].[dailydiary] OFF
/****** Object:  Table [dbo].[driver_info]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[driver_info](
	[driver_id] [int] IDENTITY(1,1) NOT NULL,
	[driver_name] [varchar](max) NULL,
	[License_no] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[license_expiry_date] [varchar](max) NULL,
	[contact_no] [varchar](max) NULL,
	[experience] [varchar](max) NULL,
	[refrence_name] [varchar](max) NULL,
	[refrence_contactno] [varchar](max) NULL,
	[address] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[driver_info] ON
INSERT [dbo].[driver_info] ([driver_id], [driver_name], [License_no], [dob], [license_expiry_date], [contact_no], [experience], [refrence_name], [refrence_contactno], [address]) VALUES (1, N'Radhey Sham', N'LR234224', N'7/18/1989', N'2/9/2016', N'7484555556', N'4', N'Baldeep Singh', N'7845544541', N'1312 Jundla Gate Karnal')
INSERT [dbo].[driver_info] ([driver_id], [driver_name], [License_no], [dob], [license_expiry_date], [contact_no], [experience], [refrence_name], [refrence_contactno], [address]) VALUES (2, N'Raj Kumar', N'LR35272', N'2/17/2016', N'2/16/2016', N'7875458454', N'3', N'Kashin Chawla', N'7845588984', N'Karna Gate')
INSERT [dbo].[driver_info] ([driver_id], [driver_name], [License_no], [dob], [license_expiry_date], [contact_no], [experience], [refrence_name], [refrence_contactno], [address]) VALUES (3, N'Ram Pal', N'HL0273892', N'2/16/2016', N'2/23/2016', N'7875458454', N'3', N'Kevin', N'7845588984', N'2820 Sadar Bazr Karnal')
SET IDENTITY_INSERT [dbo].[driver_info] OFF
/****** Object:  Table [dbo].[demoadmin]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[demoadmin](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[contact] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[username] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[type] [varchar](50) NULL,
 CONSTRAINT [PK_demoadmin] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[demoadmin] ON
INSERT [dbo].[demoadmin] ([pk_id], [Name], [contact], [email], [subject], [description], [username], [password], [type]) VALUES (1, NULL, NULL, NULL, NULL, NULL, N'Admin', N'Admin', N'Demo')
INSERT [dbo].[demoadmin] ([pk_id], [Name], [contact], [email], [subject], [description], [username], [password], [type]) VALUES (2, N'Kashin', N'7404492522', N'sswtkashinchawla@gmail.com', N'Software Regarding Request', N'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', N'Admin', N'S750GT', N'Demo')
INSERT [dbo].[demoadmin] ([pk_id], [Name], [contact], [email], [subject], [description], [username], [password], [type]) VALUES (3, N'Kashin', N'7404492522', N'sswtkashinchawla@gmail.com', N'Hello How are you', N'dfsfgdxsg', N'Admin', N'S750GT', N'Demo')
INSERT [dbo].[demoadmin] ([pk_id], [Name], [contact], [email], [subject], [description], [username], [password], [type]) VALUES (4, N'Kashin', N'9254492522', N'sswtkashinchawla@gmail.com', N'Hello', N'Test Test Test Test Test Test Test Test Test Test Test Test Test Test ', N'Admin', N'S750GT', N'Demo')
SET IDENTITY_INSERT [dbo].[demoadmin] OFF
/****** Object:  Table [dbo].[demo]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[demo](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[day_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[day_tbl](
	[day_id] [int] IDENTITY(1,1) NOT NULL,
	[day] [int] NULL,
	[student_name] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[section] [varchar](max) NULL,
 CONSTRAINT [PK_day_tbl] PRIMARY KEY CLUSTERED 
(
	[day_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[day_tbl] ON
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (1, 1, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (2, 2, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (3, 3, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (4, 4, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (5, 5, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (6, 6, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (7, 7, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (8, 8, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (9, 9, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (10, 10, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (11, 11, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (12, 12, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (13, 13, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (14, 14, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (15, 15, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (16, 16, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (17, 17, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (18, 18, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (19, 19, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (20, 20, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (21, 21, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (22, 22, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (23, 23, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (24, 24, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (25, 25, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (26, 26, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (27, 27, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (28, 28, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (29, 29, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (30, 30, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (31, 31, N'Ashwani Kumar', N'1', N'2015-2016', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (32, 1, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (33, 2, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (34, 3, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (35, 4, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (36, 5, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (37, 6, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (38, 7, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (39, 8, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (40, 9, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (41, 10, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (42, 11, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (43, 12, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (44, 13, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (45, 14, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (46, 15, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (47, 16, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (48, 17, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (49, 18, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (50, 19, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (51, 20, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (52, 21, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (53, 22, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (54, 23, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (55, 24, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (56, 25, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (57, 26, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (58, 27, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (59, 28, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (60, 29, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (61, 30, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (62, 31, N'Baldeep Sing', N'1', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (63, 1, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (64, 2, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (65, 3, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (66, 4, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (67, 5, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (68, 6, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (69, 7, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (70, 8, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (71, 9, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (72, 10, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (73, 11, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (74, 12, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (75, 13, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (76, 14, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (77, 15, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (78, 16, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (79, 17, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (80, 18, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (81, 19, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (82, 20, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (83, 21, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (84, 22, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (85, 23, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (86, 24, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (87, 25, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (88, 26, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (89, 27, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (90, 28, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (91, 29, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (92, 30, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (93, 31, N'Rahul Verma', N'1', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (94, 1, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (95, 2, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (96, 3, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (97, 4, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (98, 5, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (99, 6, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (100, 7, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
GO
print 'Processed 100 total records'
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (101, 8, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (102, 9, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (103, 10, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (104, 11, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (105, 12, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (106, 13, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (107, 14, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (108, 15, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (109, 16, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (110, 17, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (111, 18, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (112, 19, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (113, 20, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (114, 21, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (115, 22, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (116, 23, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (117, 24, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (118, 25, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (119, 26, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (120, 27, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (121, 28, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (122, 29, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (123, 30, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (124, 31, N'Kashin Chawla', N'2', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (125, 1, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (126, 2, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (127, 3, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (128, 4, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (129, 5, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (130, 6, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (131, 7, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (132, 8, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (133, 9, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (134, 10, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (135, 11, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (136, 12, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (137, 13, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (138, 14, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (139, 15, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (140, 16, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (141, 17, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (142, 18, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (143, 19, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (144, 20, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (145, 21, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (146, 22, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (147, 23, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (148, 24, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (149, 25, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (150, 26, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (151, 27, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (152, 28, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (153, 29, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (154, 30, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (155, 31, N'Rohit Joshi', N'2', N'2015-2016', N'Second', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (156, 1, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (157, 2, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (158, 3, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (159, 4, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (160, 5, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (161, 6, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (162, 7, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (163, 8, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (164, 9, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (165, 10, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (166, 11, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (167, 12, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (168, 13, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (169, 14, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (170, 15, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (171, 16, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (172, 17, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (173, 18, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (174, 19, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (175, 20, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (176, 21, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (177, 22, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (178, 23, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (179, 24, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (180, 25, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (181, 26, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (182, 27, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (183, 28, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (184, 29, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (185, 30, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (186, 31, N'Faizan Khan', N'3', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (187, 1, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (188, 2, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (189, 3, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (190, 4, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (191, 5, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (192, 6, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (193, 7, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (194, 8, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (195, 9, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (196, 10, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (197, 11, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (198, 12, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (199, 13, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (200, 14, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (201, 15, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
GO
print 'Processed 200 total records'
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (202, 16, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (203, 17, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (204, 18, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (205, 19, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (206, 20, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (207, 21, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (208, 22, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (209, 23, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (210, 24, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (211, 25, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (212, 26, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (213, 27, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (214, 28, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (215, 29, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (216, 30, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (217, 31, N'Kevin Chawla', N'2', N'2013-2014', N'First', N'Commerce', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (218, 1, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (219, 2, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (220, 3, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (221, 4, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (222, 5, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (223, 6, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (224, 7, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (225, 8, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (226, 9, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (227, 10, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (228, 11, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (229, 12, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (230, 13, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (231, 14, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (232, 15, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (233, 16, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (234, 17, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (235, 18, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (236, 19, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (237, 20, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (238, 21, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (239, 22, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (240, 23, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (241, 24, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (242, 25, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (243, 26, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (244, 27, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (245, 28, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (246, 29, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (247, 30, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (248, 31, N'Rohan Roy', N'4', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (249, 1, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (250, 2, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (251, 3, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (252, 4, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (253, 5, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (254, 6, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (255, 7, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (256, 8, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (257, 9, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (258, 10, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (259, 11, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (260, 12, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (261, 13, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (262, 14, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (263, 15, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (264, 16, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (265, 17, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (266, 18, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (267, 19, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (268, 20, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (269, 21, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (270, 22, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (271, 23, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (272, 24, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (273, 25, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (274, 26, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (275, 27, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (276, 28, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (277, 29, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (278, 30, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (279, 31, N'Kevin Chawla', N'4', N'2015-2016', N'Third', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (280, 1, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (281, 2, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (282, 3, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (283, 4, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (284, 5, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (285, 6, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (286, 7, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (287, 8, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (288, 9, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (289, 10, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (290, 11, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (291, 12, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (292, 13, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (293, 14, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (294, 15, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (295, 16, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (296, 17, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (297, 18, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (298, 19, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (299, 20, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (300, 21, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (301, 22, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (302, 23, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
GO
print 'Processed 300 total records'
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (303, 24, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (304, 25, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (305, 26, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (306, 27, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (307, 28, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (308, 29, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (309, 30, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
INSERT [dbo].[day_tbl] ([day_id], [day], [student_name], [roll_no], [batch], [class], [stream], [section]) VALUES (310, 31, N'fgdsrf', N'5', N'2014-2015', N'First', N'Art', N'A')
SET IDENTITY_INSERT [dbo].[day_tbl] OFF
/****** Object:  Table [dbo].[employeetype]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employeetype](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[employeetype] ON
INSERT [dbo].[employeetype] ([pk_id], [name]) VALUES (1, N'Clerk')
INSERT [dbo].[employeetype] ([pk_id], [name]) VALUES (2, N'Hostel ')
INSERT [dbo].[employeetype] ([pk_id], [name]) VALUES (6, N'Co-Worker')
INSERT [dbo].[employeetype] ([pk_id], [name]) VALUES (7, N'Peon')
SET IDENTITY_INSERT [dbo].[employeetype] OFF
/****** Object:  Table [dbo].[emp_salary]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emp_salary](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_type] [varchar](200) NULL,
	[emp_id] [varchar](200) NULL,
	[emp_name] [varchar](200) NULL,
	[year] [varchar](200) NULL,
	[month] [varchar](200) NULL,
	[date] [varchar](200) NULL,
	[total_salary] [varchar](200) NULL,
	[holiday] [varchar](200) NULL,
	[paid_salary] [int] NULL,
 CONSTRAINT [PK_emp_salary] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[emp_salary] ON
INSERT [dbo].[emp_salary] ([pk_id], [emp_type], [emp_id], [emp_name], [year], [month], [date], [total_salary], [holiday], [paid_salary]) VALUES (5, N'3', N'3', N'Ram Parvesh', N'2016', N'April', N'4/7/2016', N'15000', N'0', 15000)
SET IDENTITY_INSERT [dbo].[emp_salary] OFF
/****** Object:  Table [dbo].[emp_attendance]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emp_attendance](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[emp_id] [varchar](100) NULL,
	[emp_name] [varchar](100) NULL,
	[day] [varchar](100) NULL,
	[month] [varchar](100) NULL,
	[year] [varchar](100) NULL,
	[status] [varchar](100) NULL,
	[type] [varchar](100) NULL,
 CONSTRAINT [PK_emp_attendance] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[emp_attendance] ON
INSERT [dbo].[emp_attendance] ([pk_id], [emp_id], [emp_name], [day], [month], [year], [status], [type]) VALUES (8, N'Emp768LE', N'Ram Lal', N'4', N'June', N'2016', N'Present', N'Peon')
INSERT [dbo].[emp_attendance] ([pk_id], [emp_id], [emp_name], [day], [month], [year], [status], [type]) VALUES (9, N'Emp7368LE', N'Bladeep Singh', N'6', N'April', N'2016', N'Present', N'Hostel')
INSERT [dbo].[emp_attendance] ([pk_id], [emp_id], [emp_name], [day], [month], [year], [status], [type]) VALUES (10, N'Emp748LE', N'hvchbfdb', N'6', N'April', N'2016', N'Present', N'Hostel')
INSERT [dbo].[emp_attendance] ([pk_id], [emp_id], [emp_name], [day], [month], [year], [status], [type]) VALUES (11, N'Emp512LE', N'Ram Parvesh', N'6', N'April', N'2016', N'Present', N'Hostel')
SET IDENTITY_INSERT [dbo].[emp_attendance] OFF
/****** Object:  Table [dbo].[dummy_bookcost]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dummy_bookcost](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[cost] [int] NULL,
	[date] [varchar](100) NULL,
 CONSTRAINT [PK_dummy_bookcost] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[examsechdule]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[examsechdule](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[paper] [varchar](max) NULL,
	[examdate] [varchar](max) NULL,
	[starttime] [varchar](max) NULL,
	[endtime] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[examsechdule] ON
INSERT [dbo].[examsechdule] ([pk_id], [batch], [class], [section], [stream], [subject], [paper], [examdate], [starttime], [endtime]) VALUES (1, N'2014-2015', N'First', N'A', N'Art', N'Account', N'First Term', N'3/18/2016', N'10:00AM', N'11:00PM')
INSERT [dbo].[examsechdule] ([pk_id], [batch], [class], [section], [stream], [subject], [paper], [examdate], [starttime], [endtime]) VALUES (2, N'2016-2017', N'Tweleth', N'A', N'Art', N'Sanskrit', N'First Term', N'4/7/2016', N'10:00AM', N'11:00AM')
SET IDENTITY_INSERT [dbo].[examsechdule] OFF
/****** Object:  Table [dbo].[events]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[events](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[event_name] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[photo] [varchar](max) NULL,
	[date] [varchar](max) NULL,
 CONSTRAINT [PK_events] PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[events] ON
INSERT [dbo].[events] ([event_id], [event_name], [description], [photo], [date]) VALUES (1, N'farewell party  ', N'All Classes are invited ', N'~/img/backtrk.png', N'2/14/2016')
SET IDENTITY_INSERT [dbo].[events] OFF
/****** Object:  Table [dbo].[examterm]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[examterm](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[examterm] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
 CONSTRAINT [PK_examterm] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[examterm] ON
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (1, N'2014-2015', N'Art', N'First Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (2, N'2014-2015', N'Art', N'Second Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (4, N'2014-2015', N'Art', N'First Term', N'Second', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (5, N'2014-2015', N'Art', N'Second Term', N'Second', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (6, N'2014-2015', N'Art', N'Final Term', N'Second', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (7, N'2015-2016', N'Art', N'First Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (8, N'2015-2016', N'Art', N'Second Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (9, N'2015-2016', N'Art', N'Final Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (10, N'2015-2016', N'Commerce', N'First Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (11, N'2015-2016', N'Commerce', N'Second Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (12, N'2015-2016', N'Commerce', N'Final Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (13, N'2013-2014', N'Commerce', N'Final Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (14, N'2016-2017', N'Art', N'First Term', N'Tweleth', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (15, N'2014-2015', N'Art', N'Final', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (16, N'2013-2014', N'Commerce', N'First Term', N'First', N'A')
INSERT [dbo].[examterm] ([pk_id], [batch], [stream], [examterm], [class], [section]) VALUES (17, N'2016-2017', N'Art', N'North Term', N'First', N'A')
SET IDENTITY_INSERT [dbo].[examterm] OFF
/****** Object:  Table [dbo].[fee]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fee](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[Total] [int] NULL,
	[payment] [int] NULL,
	[balance] [int] NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hostel_fee]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hostel_fee](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[s_id] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[date_of_pay] [varchar](max) NULL,
	[Hostel_name] [varchar](max) NULL,
	[hostel_type] [varchar](max) NULL,
	[hostel_fee] [varchar](max) NULL,
	[amount_type] [varchar](max) NULL,
	[amount_pay] [varchar](max) NULL,
	[remaining] [varchar](max) NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[hostel_fee] ON
INSERT [dbo].[hostel_fee] ([pk_id], [s_id], [batch], [class], [stream], [roll_no], [student_name], [date_of_pay], [Hostel_name], [hostel_type], [hostel_fee], [amount_type], [amount_pay], [remaining], [status]) VALUES (15, N'ST456dEd', N'2014-2015', N'First', N'Art', N'1', N'Baldeep Sing', N'4/6/2016', N'Veeer Singh', N'Double', N'55000', N'By Cash', N'23455', N'31545', N'Pending')
INSERT [dbo].[hostel_fee] ([pk_id], [s_id], [batch], [class], [stream], [roll_no], [student_name], [date_of_pay], [Hostel_name], [hostel_type], [hostel_fee], [amount_type], [amount_pay], [remaining], [status]) VALUES (18, N'ST456Ed', N'2016-2017', N'Tweleth', N'Art', N'1', N'Kashin Chawla', N'07/04/2016', N'Veeer Singh', N'Single', N'70000', N'By Cash', N'35000', N'0', N'Paid')
INSERT [dbo].[hostel_fee] ([pk_id], [s_id], [batch], [class], [stream], [roll_no], [student_name], [date_of_pay], [Hostel_name], [hostel_type], [hostel_fee], [amount_type], [amount_pay], [remaining], [status]) VALUES (19, N'ST3434Ed', N'2014-2015', N'First', N'Art', N'3', N'Faizan Khan', N'06/05/2016', N'Vijaypath', N'Single', N'62000', N'Single', N'45000', N'0', N'Paid')
INSERT [dbo].[hostel_fee] ([pk_id], [s_id], [batch], [class], [stream], [roll_no], [student_name], [date_of_pay], [Hostel_name], [hostel_type], [hostel_fee], [amount_type], [amount_pay], [remaining], [status]) VALUES (13, N'ST1368Ed', N'2015-2016', N'First', N'Art', N'1', N'Ashwani Kumar', N'3/17/2016', N'Vijaypath', N'Single', N'62000', N'By Cash', N'27555', N'11', N'Pending')
SET IDENTITY_INSERT [dbo].[hostel_fee] OFF
/****** Object:  Table [dbo].[fees_history]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[fees_history](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[student_name] [varchar](100) NULL,
	[father_name] [varchar](100) NULL,
	[mother_name] [varchar](100) NULL,
	[roll_no] [int] NULL,
	[batch] [varchar](100) NULL,
	[class] [varchar](100) NULL,
	[section] [varchar](100) NULL,
	[date] [date] NULL,
	[fee] [varchar](100) NULL,
	[feetype] [varchar](100) NULL,
	[payment] [int] NULL,
	[balance] [varchar](100) NULL,
	[status] [varchar](100) NULL,
 CONSTRAINT [PK_fees_history] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[fees_history] ON
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (37, N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', 1, N'2016-2017', N'Tweleth', N'A', CAST(0x3C3B0B00 AS Date), N'2000', N'Registration Fee', 2000, N'0', N'Paid')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (38, N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', 1, N'2016-2017', N'Tweleth', N'A', CAST(0x3C3B0B00 AS Date), N'550', N'Examination Fee', 550, N'0', N'Paid')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (39, N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', 1, N'2016-2017', N'Tweleth', N'A', CAST(0x3C3B0B00 AS Date), N'950', N'Class Fee', 950, N'0', N'Paid')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (40, N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', 1, N'2016-2017', N'Tweleth', N'A', CAST(0x3C3B0B00 AS Date), N'5200', N'Transportfee', 5200, N'0', N'Paid')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (41, N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', 1, N'2016-2017', N'Tweleth', N'Art', CAST(0x3C3B0B00 AS Date), N'70000', N'Hostelfee', 35000, N'35000', N'Pending')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (42, N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', 1, N'2016-2017', N'Tweleth', N'Art', CAST(0x3C3B0B00 AS Date), N'70000', N'Hostelfee', 35000, N'0', N'Paid')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (43, N'Faizan Khan', N'Ahmad Khan', N'Ruheen Khan', 3, N'2014-2015', N'First', N'Art', CAST(0x593B0B00 AS Date), N'62000', N'Hostelfee', 45000, N'17000', N'')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (44, N'Faizan Khan', N'Ahmad Khan', N'Ruheen Khan', 3, N'2014-2015', N'First', N'Art', CAST(0x593B0B00 AS Date), N'62000', N'Hostelfee', 45000, N'0', N'Paid')
INSERT [dbo].[fees_history] ([pk_id], [student_name], [father_name], [mother_name], [roll_no], [batch], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (45, N'Ashwani Kumar', N'Rajesh Kumar', N'Veera Kumar', 1, N'2015-2016', N'First', N'Art', CAST(0x593B0B00 AS Date), N'62000', N'Hostelfee', 27555, N'11', N'Pending')
SET IDENTITY_INSERT [dbo].[fees_history] OFF
/****** Object:  Table [dbo].[hostel_fee_refund]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hostel_fee_refund](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[no_of_months] [varchar](max) NULL,
	[total_amount] [varchar](max) NULL,
	[amount_pay] [varchar](max) NULL,
	[Hostel_name] [varchar](max) NULL,
	[hostel_type] [varchar](max) NULL,
	[month_stay_in_hostel] [varchar](max) NULL,
	[refund_amt] [varchar](max) NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[hostel_fee_refund] ON
INSERT [dbo].[hostel_fee_refund] ([pk_id], [student_id], [student_name], [date], [no_of_months], [total_amount], [amount_pay], [Hostel_name], [hostel_type], [month_stay_in_hostel], [refund_amt], [status]) VALUES (2, N'ST456Ed', N'Kashin Chawla', N'4/6/2016', N'12', N'70000', N'55000', N'Veeer Singh', N'Single', N'2', N'43334', N'Leave')
SET IDENTITY_INSERT [dbo].[hostel_fee_refund] OFF
/****** Object:  Table [dbo].[Hostel_incharge_info]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hostel_incharge_info](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[incharge_no] [varchar](max) NULL,
	[joining_date] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[gender] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[address1] [varchar](max) NULL,
	[address2] [varchar](max) NULL,
	[mobile] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[maritial_status] [varchar](max) NULL,
	[blood_group] [varchar](max) NULL,
	[total_exp_year] [varchar](max) NULL,
	[total_exp_month] [varchar](max) NULL,
	[experience_detail] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[incharge_hid] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[type] [varchar](max) NULL,
 CONSTRAINT [PK_Hostel_incharge_info] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Hostel_incharge_info] ON
INSERT [dbo].[Hostel_incharge_info] ([pk_id], [incharge_no], [joining_date], [name], [father_name], [gender], [dob], [address1], [address2], [mobile], [email], [maritial_status], [blood_group], [total_exp_year], [total_exp_month], [experience_detail], [password], [incharge_hid], [image], [type]) VALUES (1, N'1', N'2/9/2016', N'Ashu', N'Rajesh Kumar', N'Male', N'11/26/1990', N'VPO Bhullan', N'Dist Karnal', N'9050219530', N'sswtbaldeepsingh66@gmail.com', N'Unmarried', N'B+', N'1', N'6', N'Experience in computer', N'sswt', N'EM1024ID', N'~/img/12.jpg', N'Hostel Incharge')
SET IDENTITY_INSERT [dbo].[Hostel_incharge_info] OFF
/****** Object:  Table [dbo].[hostel_room]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hostel_room](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[hostel_name] [varchar](max) NULL,
	[no_of_rooms] [varchar](max) NULL,
	[room_type] [varchar](max) NULL,
	[seat] [varchar](max) NULL,
	[available] [int] NULL,
	[room_charge] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[hostel_room] ON
INSERT [dbo].[hostel_room] ([pk_id], [hostel_name], [no_of_rooms], [room_type], [seat], [available], [room_charge]) VALUES (1, N'Vijaypath', N'50', N'Single', N'30', 21, N'62000')
INSERT [dbo].[hostel_room] ([pk_id], [hostel_name], [no_of_rooms], [room_type], [seat], [available], [room_charge]) VALUES (2, N'Vijaypath', N'50', N'Double', N'50', 30, N'38000')
INSERT [dbo].[hostel_room] ([pk_id], [hostel_name], [no_of_rooms], [room_type], [seat], [available], [room_charge]) VALUES (3, N'Bhagat Singh', N'150', N'Single', N'60', 58, N'62000')
INSERT [dbo].[hostel_room] ([pk_id], [hostel_name], [no_of_rooms], [room_type], [seat], [available], [room_charge]) VALUES (4, N'Bhagat Singh', N'150', N'Double', N'90', 90, N'45000')
INSERT [dbo].[hostel_room] ([pk_id], [hostel_name], [no_of_rooms], [room_type], [seat], [available], [room_charge]) VALUES (6, N'Veeer Singh', N'40', N'Single', N'40', 35, N'70000')
INSERT [dbo].[hostel_room] ([pk_id], [hostel_name], [no_of_rooms], [room_type], [seat], [available], [room_charge]) VALUES (7, N'Veeer Singh', N'50', N'Double', N'100', 100, N'55000')
SET IDENTITY_INSERT [dbo].[hostel_room] OFF
/****** Object:  Table [dbo].[add_books]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_books](
	[book_id] [int] IDENTITY(1,1) NOT NULL,
	[book_name] [varchar](max) NULL,
	[book_category] [varchar](max) NULL,
	[subtitle] [varchar](max) NULL,
	[isbn_no] [varchar](max) NULL,
	[author] [varchar](max) NULL,
	[cupboard] [varchar](max) NULL,
	[cupboard_self] [varchar](max) NULL,
	[edition] [varchar](max) NULL,
	[publisher] [varchar](max) NULL,
	[book_cost] [varchar](max) NULL,
	[book_vendor] [varchar](max) NULL,
	[copy] [int] NULL,
	[Remarks] [varchar](max) NULL,
	[ASN_no] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_books] ON
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (10, N'Batman', N'Comics', N'Super Hero', N'45222716012', N'Luis Frerro', N'Cupboard - A', N'Shelf - A4', N'2nd', N'Kapoor', N'120', N'Faizan Khan', 10, N'', N'15262')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (11, N'Computer Science', N'Technology', N'CS', N'45133629612', N'dfff', N'Cupboard - A', N'Shelf - A1', N'2nd', N'fdgf', N'450', N'Faizan Khan', 9, N'', N'5454655')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (4, N'Data Base Management System', N'Technology', N'DBMS', N'45311802412', N'JAMES MARTIN', N'Cupboard - A', N'Shelf - A1', N'THIRD EDITION', N'Tata Mcgraw Hill', N'450', N'Kashin', 100, N'Good Content easy to Learn', N'23443d')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (5, N'Data Structure', N'Technology', N'DS', N'45133629612', N'Sachaum Series', N'Cupboard - A', N'Shelf - A1', N'2nd Edition', N'SK Bansal', N'850', N'Rahul', 10, N'Easy To Learn', N'123224')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (6, N'Computer Architecture', N'Newspaper', N'CA', N'45356345612', N'dsjhds', N'Cupboard - A', N'Shelf - A2', N'2nd Edition', N'SK Bansal', N'750', N'Rahul', 40, N'Easy To Learn', N'344387394')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (7, N'Coa', N'Magzines', N'CA', N'45311802412', N'edtgfvf', N'Cupboard - A', N'Shelf - A2', N'3', N'fdsdf', N'234', N'Kashin', 423, N'sd', N'1')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (13, N'fgf', N'Technology', N'fgthf', N'45311802412', N'hghfhg', N'Cupboard - A', N'Shelf - A1', N'gfhgf', N'gh', N'f', N'Kashin', 656, N'fbnvcjghjfg', N'2436547')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (14, N'dffdfd', N'Magzines', N'fd', N'4544543212', N'fdfd', N'Cupboard - A', N'Shelf - A4', N'fdfd', N'dffd', N'3443', N'Rahul', 20, N'dfdffd', N'365347')
INSERT [dbo].[add_books] ([book_id], [book_name], [book_category], [subtitle], [isbn_no], [author], [cupboard], [cupboard_self], [edition], [publisher], [book_cost], [book_vendor], [copy], [Remarks], [ASN_no]) VALUES (15, N'gfgf', N'Magzines', N'fgddf', N'45222716012', N'fgfd', N'Cupboard - A', N' Shelf - A3', N'3 Edition', N'fddgf', N'2000', N'Kashin', 43, N'dfdf', N'4535')
SET IDENTITY_INSERT [dbo].[add_books] OFF
/****** Object:  Table [dbo].[add_busdetail]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_busdetail](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[school_bus_no] [varchar](max) NULL,
	[bus_regd_no] [varchar](max) NULL,
	[driver_name] [varchar](max) NULL,
	[driver_contact_no] [varchar](max) NULL,
	[seat_capacity] [varchar](max) NULL,
	[model] [varchar](max) NULL,
	[select_route] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[add_category]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_category](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](max) NULL,
	[Description] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_category] ON
INSERT [dbo].[add_category] ([pk_id], [category_name], [Description]) VALUES (1, N'Uniform', N'Student Uniform')
INSERT [dbo].[add_category] ([pk_id], [category_name], [Description]) VALUES (2, N'Books ', N'Education Books')
INSERT [dbo].[add_category] ([pk_id], [category_name], [Description]) VALUES (3, N'Dairy', N'Student Dairy')
INSERT [dbo].[add_category] ([pk_id], [category_name], [Description]) VALUES (4, N'Shoes', N'Student Shoes')
SET IDENTITY_INSERT [dbo].[add_category] OFF
/****** Object:  Table [dbo].[add_fare]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_fare](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[route_name] [varchar](max) NULL,
	[Both_way_fare] [varchar](max) NULL,
	[one_way_fare] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_fare] ON
INSERT [dbo].[add_fare] ([pk_id], [route_name], [Both_way_fare], [one_way_fare]) VALUES (1, N'Ram Nagar', N'5500', N'2900')
INSERT [dbo].[add_fare] ([pk_id], [route_name], [Both_way_fare], [one_way_fare]) VALUES (2, N'Prem Nagar', N'5200', N'2700')
INSERT [dbo].[add_fare] ([pk_id], [route_name], [Both_way_fare], [one_way_fare]) VALUES (3, N'Char chaman', N'3800', N'2000')
INSERT [dbo].[add_fare] ([pk_id], [route_name], [Both_way_fare], [one_way_fare]) VALUES (4, N'Vasant vihar', N'4500', N'2400')
INSERT [dbo].[add_fare] ([pk_id], [route_name], [Both_way_fare], [one_way_fare]) VALUES (5, N'Mohan Nagar', N'6000', N'3200')
INSERT [dbo].[add_fare] ([pk_id], [route_name], [Both_way_fare], [one_way_fare]) VALUES (6, N'Friends Colony', N'5200', N'2700')
INSERT [dbo].[add_fare] ([pk_id], [route_name], [Both_way_fare], [one_way_fare]) VALUES (10, N'Friends Colony', N'7500', N'2000')
SET IDENTITY_INSERT [dbo].[add_fare] OFF
/****** Object:  Table [dbo].[add_fee]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_fee](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[feetype] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[fee] [varchar](max) NULL,
 CONSTRAINT [PK_add_fee] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_fee] ON
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (1, N'2014-2015', N'Art', N'First', N'A', N'Registration Fee', N'2/9/2016', N'1700')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (2, N'2014-2015', N'Art', N'First', N'A', N'Examination Fee', N'2/9/2016', N'650')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (3, N'2014-2015', N'Art', N'First', N'A', N'Class Fee', N'2/9/2016', N'1700')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (4, N'2015-2016', N'Art', N'First', N'A', N'Registration Fee', N'2/10/2016', N'1550')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (5, N'2015-2016', N'Art', N'First', N'A', N'Examination Fee', N'2/9/2016', N'550')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (6, N'2015-2016', N'Art', N'First', N'A', N'Class Fee', N'2/9/2016', N'1650')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (7, N'2015-2016', N'Commerce', N'First', N'A', N'Registration Fee', N'2/9/2016', N'2000')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (8, N'2015-2016', N'Commerce', N'First', N'A', N'Examination Fee', N'2/9/2016', N'650')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (9, N'2015-2016', N'Commerce', N'First', N'A', N'Class Fee', N'2/9/2016', N'600')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (19, N'2016-2017', N'Art', N'Tweleth', N'A', N'Registration Fee', N'4/7/2016', N'2000')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (20, N'2016-2017', N'Art', N'Tweleth', N'A', N'Examination Fee', N'4/8/2016', N'550')
INSERT [dbo].[add_fee] ([pk_id], [batch], [stream], [class], [section], [feetype], [date], [fee]) VALUES (21, N'2016-2017', N'Art', N'Tweleth', N'A', N'Class Fee', N'4/7/2016', N'950')
SET IDENTITY_INSERT [dbo].[add_fee] OFF
/****** Object:  Table [dbo].[add_hostel]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_hostel](
	[hostel_id] [int] IDENTITY(1,1) NOT NULL,
	[hostel_no] [int] NULL,
	[hostel_name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_hostel] ON
INSERT [dbo].[add_hostel] ([hostel_id], [hostel_no], [hostel_name]) VALUES (1, 1, N'Vijaypath')
INSERT [dbo].[add_hostel] ([hostel_id], [hostel_no], [hostel_name]) VALUES (2, 2, N'Agneepath')
INSERT [dbo].[add_hostel] ([hostel_id], [hostel_no], [hostel_name]) VALUES (3, 3, N'Vivekanand')
INSERT [dbo].[add_hostel] ([hostel_id], [hostel_no], [hostel_name]) VALUES (4, 4, N'Rudraksh')
INSERT [dbo].[add_hostel] ([hostel_id], [hostel_no], [hostel_name]) VALUES (5, 5, N'Bhagat Singh')
INSERT [dbo].[add_hostel] ([hostel_id], [hostel_no], [hostel_name]) VALUES (8, 6, N'Veeer Singh')
SET IDENTITY_INSERT [dbo].[add_hostel] OFF
/****** Object:  Table [dbo].[add_item]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_item](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[item_code] [varchar](max) NULL,
	[item_name] [varchar](max) NULL,
	[item_location] [varchar](max) NULL,
	[rate] [varchar](max) NULL,
	[quantity] [varchar](max) NULL,
	[stock] [varchar](max) NULL,
	[description] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_item] ON
INSERT [dbo].[add_item] ([pk_id], [item_code], [item_name], [item_location], [rate], [quantity], [stock], [description]) VALUES (1, N'Item 1001780', N'Uniform', N'Rack  No 1', N'500', N'50', N'46', N'Fabric Material is good to use and stich the uniform')
INSERT [dbo].[add_item] ([pk_id], [item_code], [item_name], [item_location], [rate], [quantity], [stock], [description]) VALUES (2, N'Item 1001335', N'Dairy', N'Rack No 3', N'45', N'30', N'26', N'School Dairy')
INSERT [dbo].[add_item] ([pk_id], [item_code], [item_name], [item_location], [rate], [quantity], [stock], [description]) VALUES (5, N'Item 1003115', N'Uniform', N'Rack  No 1', N'1500', N'5', N'4', N'h')
INSERT [dbo].[add_item] ([pk_id], [item_code], [item_name], [item_location], [rate], [quantity], [stock], [description]) VALUES (6, N'Item 1001335', N'Uniform', N'Rack  No 1', N'500', N'5', N'5', N'ghh')
SET IDENTITY_INSERT [dbo].[add_item] OFF
/****** Object:  Table [dbo].[add_libraryemployee]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_libraryemployee](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_no] [varchar](max) NULL,
	[joining_date] [varchar](max) NULL,
	[employee_name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[gender] [varchar](max) NULL,
	[DOB] [varchar](max) NULL,
	[address1] [varchar](max) NULL,
	[address2] [varchar](max) NULL,
	[mobile] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[maritial_status] [varchar](max) NULL,
	[blood_group] [varchar](max) NULL,
	[experience_year] [varchar](max) NULL,
	[experience_month] [varchar](max) NULL,
	[experience_detail] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[employee_id] [varchar](max) NULL,
	[type] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_libraryemployee] ON
INSERT [dbo].[add_libraryemployee] ([pk_id], [employee_no], [joining_date], [employee_name], [father_name], [gender], [DOB], [address1], [address2], [mobile], [email], [maritial_status], [blood_group], [experience_year], [experience_month], [experience_detail], [image], [password], [employee_id], [type]) VALUES (1, N'1', N'2/9/2016', N'Ashu', N'Veer Singh', N'Male', N'11/6/1990', N'#317 Sec 13', N'Urban Estate Karnal', N'9050219530', N'sswtkashinchawla@gmail.com', N'Married', N'A+', N'1', N'2', N'Experience for library Management', N'~/img/contact-us-for-bulk-sms.jpg', N'sswt', N'Em512LE', N'Employee')
SET IDENTITY_INSERT [dbo].[add_libraryemployee] OFF
/****** Object:  Table [dbo].[Add_Menu]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Add_Menu](
	[Menu_id] [int] IDENTITY(1,1) NOT NULL,
	[Menu_name] [varchar](200) NULL,
	[Menu_url] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Menu_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Add_Menu] ON
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (2, N'Class Insert', N'Insert_class.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (3, N'Add Class', N'addclass.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (4, N'Add Batch', N'add_batch.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (5, N'Add Section', N'addsection.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (6, N'Add Subject', N'add_subject.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (7, N'Add Syllabus', N'syllabus.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (8, N'Add Route', N'add_route.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (9, N'Add Station', N'addstation.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (10, N'Add Fair', N'add_fair.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (11, N'Bus Detail', N'add_busdetail.aspx')
INSERT [dbo].[Add_Menu] ([Menu_id], [Menu_name], [Menu_url]) VALUES (12, N'Bus Timing', N'Setbusttiming.aspx')
SET IDENTITY_INSERT [dbo].[Add_Menu] OFF
/****** Object:  Table [dbo].[add_review]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_review](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[father_name] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[roll_no] [int] NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[complaint] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_review] ON
INSERT [dbo].[add_review] ([pk_id], [father_name], [student_name], [roll_no], [class], [section], [complaint]) VALUES (1, N'Rajesh Kumar', N'Ashwani Kumar', 1, N'First', N'A', N'Behave Not Good')
INSERT [dbo].[add_review] ([pk_id], [father_name], [student_name], [roll_no], [class], [section], [complaint]) VALUES (2, N'Rajesh Kumar', N'Ashwani Kumar', 1, N'First', N'A', N'Behave Not Good')
INSERT [dbo].[add_review] ([pk_id], [father_name], [student_name], [roll_no], [class], [section], [complaint]) VALUES (3, N'Thakur Joshi', N'Rohit Joshi', 2, N'Second', N'A', N'dwsdddwsw')
SET IDENTITY_INSERT [dbo].[add_review] OFF
/****** Object:  Table [dbo].[add_route]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_route](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[route_name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_route] ON
INSERT [dbo].[add_route] ([pk_id], [route_name]) VALUES (1, N'Ram Nagar')
INSERT [dbo].[add_route] ([pk_id], [route_name]) VALUES (2, N'Prem Nagar')
INSERT [dbo].[add_route] ([pk_id], [route_name]) VALUES (3, N'Char chaman')
INSERT [dbo].[add_route] ([pk_id], [route_name]) VALUES (4, N'Vasant vihar')
INSERT [dbo].[add_route] ([pk_id], [route_name]) VALUES (5, N'Mohan Nagar')
INSERT [dbo].[add_route] ([pk_id], [route_name]) VALUES (6, N'Friends Colony')
SET IDENTITY_INSERT [dbo].[add_route] OFF
/****** Object:  Table [dbo].[addmarks]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[addmarks](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[examterm] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[obtain_marks] [varchar](max) NULL,
	[maximum_marks] [varchar](max) NULL,
	[comment] [varchar](max) NULL,
 CONSTRAINT [PK_addmarks] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[addmarks] ON
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (1, N'2015-2016', N'Art', N'First Term', N'First', N'A', N'Account', N'Ashwani Kumar', N'1', N'75', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (2, N'2015-2016', N'Art', N'First Term', N'First', N'A', N'Sanskrit', N'Ashwani Kumar', N'1', N'65', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (3, N'2015-2016', N'Art', N'First Term', N'First', N'A', N'English', N'Ashwani Kumar', N'1', N'65', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (4, N'2015-2016', N'Art', N'First Term', N'First', N'A', N'Math', N'Ashwani Kumar', N'1', N'60', N'100', N'Not Bad')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (5, N'2015-2016', N'Art', N'First Term', N'First', N'A', N'Homescience', N'Ashwani Kumar', N'1', N'45', N'75', N'Not Bad')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (7, N'2015-2016', N'Commerce', N'First Term', N'Second', N'A', N'Sanskrit', N'Rahul Verma', N'1', N'75', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (8, N'2015-2016', N'Commerce', N'First Term', N'Second', N'A', N'English', N'Rahul Verma', N'1', N'85', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (9, N'2015-2016', N'Commerce', N'First Term', N'Second', N'A', N'Math', N'Rahul Verma', N'1', N'45', N'100', N'Not Bad')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (10, N'2015-2016', N'Commerce', N'First Term', N'Second', N'A', N'Homescience', N'Rahul Verma', N'1', N'70', N'75', N'Not Bad')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (11, N'2014-2015', N'Art', N'First Term', N'First', N'A', N'Account', N'Faizan Khan', N'3', N'64', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (12, N'2014-2015', N'Art', N'First Term', N'First', N'A', N'Sanskrit', N'Faizan Khan', N'3', N'62', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (13, N'2014-2015', N'Art', N'First Term', N'First', N'A', N'English', N'Faizan Khan', N'3', N'70', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (14, N'2014-2015', N'Art', N'First Term', N'First', N'A', N'Math', N'Faizan Khan', N'3', N'52', N'100', N'Not Bad')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (15, N'2014-2015', N'Art', N'First Term', N'First', N'A', N'Homescience', N'Faizan Khan', N'3', N'72', N'75', N'Not Bad')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (21, N'2015-2016', N'Art', N'First Term', N'First', N'Select Section', N'Account', N'Select Student Name', N'1', N'20', N'50', N'good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (22, N'2016-2017', N'Art', N'First Term', N'Tweleth', N'A', N'Sanskrit', N'Kashin Chawla', N'1', N'75', N'100', N'Good')
INSERT [dbo].[addmarks] ([pk_id], [batch], [stream], [examterm], [class], [section], [subject], [student_name], [roll_no], [obtain_marks], [maximum_marks], [comment]) VALUES (23, N'2014-2015', N'Art', N'First Term', N'First', N'A', N'Account', N'Baldeep Sing', N'1', N'450', N'452', N'fdgbhg')
SET IDENTITY_INSERT [dbo].[addmarks] OFF
/****** Object:  Table [dbo].[add_station]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[add_station](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[route_name] [varchar](max) NULL,
	[station_point] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[add_station] ON
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (1, N'Ram Nagar', N'Petrol Pump')
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (2, N'Prem Nagar', N'Gurdwara Chownk')
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (3, N'Char chaman', N'Ramesh Chownk')
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (4, N'Vasant vihar', N'Gali no 4')
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (5, N'Mohan Nagar', N'Easy Day Chownk')
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (6, N'Friends Colony', N'Petrol  Pump Chownk')
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (7, N'Prem Nagar', N'Arya Samaj ')
INSERT [dbo].[add_station] ([pk_id], [route_name], [station_point]) VALUES (10, N'Ram Nagar', N'gjtfg')
SET IDENTITY_INSERT [dbo].[add_station] OFF
/****** Object:  Table [dbo].[admin_add_complaint]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin_add_complaint](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[student_rollno] [int] NULL,
	[date] [varchar](max) NULL,
	[complaint] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin_add_complaint] ON
INSERT [dbo].[admin_add_complaint] ([pk_id], [batch], [stream], [class], [section], [student_name], [student_rollno], [date], [complaint]) VALUES (1, N'2014-2015', N'Art', N'First', N'A', N'Baldeep Sing', 1, N'2/9/2016 11:17:49', N'Behavior not Good in Class')
INSERT [dbo].[admin_add_complaint] ([pk_id], [batch], [stream], [class], [section], [student_name], [student_rollno], [date], [complaint]) VALUES (2, N'2014-2015', N'Art', N'First', N'A', N'Baldeep Sing', 1, N'21/03/2016 15:13:21', N'hiiiiidfrt')
INSERT [dbo].[admin_add_complaint] ([pk_id], [batch], [stream], [class], [section], [student_name], [student_rollno], [date], [complaint]) VALUES (6, N'2016-2017', N'Art', N'Tweleth', N'A', N'Kashin Chawla', 1, N'4/6/2016 2:24:52 PM', N' Behavior not Good in Class ')
INSERT [dbo].[admin_add_complaint] ([pk_id], [batch], [stream], [class], [section], [student_name], [student_rollno], [date], [complaint]) VALUES (7, N'2014-2015', N'Art', N'First', N'A', N'Baldeep Sing', 1, N'4/12/2016 5:49:26 PM', N'mnjjm')
SET IDENTITY_INSERT [dbo].[admin_add_complaint] OFF
/****** Object:  Table [dbo].[allempdetail]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allempdetail](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](max) NULL,
	[emp_no] [varchar](max) NULL,
	[designation] [varchar](max) NULL,
	[doj] [varchar](max) NULL,
	[emp_name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[gender] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[country] [varchar](max) NULL,
	[state] [varchar](max) NULL,
	[city] [varchar](max) NULL,
	[address] [varchar](max) NULL,
	[mobile] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[maritial_status] [varchar](max) NULL,
	[blood_group] [varchar](max) NULL,
	[total_experience_year] [varchar](max) NULL,
	[total_exp_month] [varchar](max) NULL,
	[experiencedetail] [varchar](max) NULL,
	[salary] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[emp_id] [varchar](max) NULL,
	[image] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allempdetail] ON
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (1, N'Librarian', N'1', N'Library Incharge', N'3/2/2016', N'Kashin Chawla', N'Mahinder Chawla', N'Male', N'8/4/1992', N'India', N'Haryana', N'Karnal', N'131 Krishna Nagar', N'7404492522', N'sswtkashinchawla@gmail.com', N'Married', N'B+', N'3', N'2', N'Test Test ', N'14000', N'1234', N'Emp1024LE', N'~/img/parcel.jpg')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (2, N'Hostel', N'2', N'Hostel Incharge', N'3/2/2016', N'Bladeep Singh', N'Ram Chander', N'Male', N'1/26/1993', N'India', N'Haryana', N'Karnal', N'VPO Bhullan', N'9050219530', N'sswtbaldeepsingh66@gmail.com', N'Unmarried', N'A+', N'4', N'4', N'Test Test', N'18000', N'1234', N'Emp7368LE', N'~/img/warehouse.jpg')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (3, N'Clerk', N'3', N'Account', N'3/2/2016', N'Ashwani Kumar', N'Raghu Ram', N'Male', N'5/21/1986', N'India', N'Haryana', N'Karnal', N'VPO Bhullan', N'7404492522', N'sswtashwani@gmail.com', N'Unmarried', N'B+', N'5', N'4', N'Test Test', N'25000', N'1234', N'Emp256LE', N'~/img/2.jpg')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (4, N'Co-Worker', N'4', N'Data Entry', N'3/7/2016', N'Ritesh Pal', N'Ram Parvesh', N'Male', N'3/4/2016', N'India', N'Haryana', N'Karnal', N'142 hansi chownk gali no 7', N'8529403539', N'kashinchawla22@gmail.com', N'Unmarried', N'B+', N'3', N'4', N'Speed Is High', N'6500', N'Te289ER', N'Emp253LE', N'~/img/5.jpg')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (5, N'Select Type', N'5', N'ggs', N'3/26/2016', N'fgdsrf', N'rdsg', N'Male', N'3/24/2016', N'India', N'Gujarat', N'Dadra & Nagar Haveli-Silvassa', N'ggdfs', N'435312332', N'kashin@gmail.com', N'Married', N'b+', N'2', N'3', N'dsfgs', N'25000', N'Te1445ER', N'Emp738LE', N'')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (6, N'Hostel ', N'6', N'jdsh', N'3/9/2016', N'hvchbfdb', N'hnkjdfh', N'Female', N'3/17/2016', N'India', N'Chhattisgarh', N'Bhillai', N'ggdfs', N'435312332', N'hlgdkkashin@gmail.com', N'Married', N'b+', N'2', N'3', N'dsfgs', N'25000', N'Te1734ER', N'Emp748LE', N'~/img/12.jpg')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (7, N'Peon', N'7', N'Supervisor', N'4/6/2016', N'Ram Lal', N'Jor Singh', N'Male', N'7/12/1989', N'India', N'Haryana', N'Karnal', N'SCO 13 Mugal Canal', N'9254492522', N'ramlal@gmail.com', N'Married', N'B+', N'5', N'4', N'', N'15000', N'Te1734ER', N'Emp768LE', N'~/img/homeneed.png')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (8, N'Hostel ', N'8', N'Supervisor', N'4/13/2016', N'Ram Parvesh', N'Jor Singh', N'Male', N'4/6/2016', N'India', N'Haryana', N'Karnal', N'SCO 13 Mugal Canal', N'9254492522', N'ramlal@gmail.com', N'Married', N'B+', N'5', N'4', N'', N'15000', N'Te867ER', N'Emp512LE', N'~/img/^CD9A39E1F54B6558201B9BFC787C166A040FBFE1B263FF677E^pimgpsh_fullsize_distr.png')
INSERT [dbo].[allempdetail] ([pk_id], [type], [emp_no], [designation], [doj], [emp_name], [father_name], [gender], [dob], [country], [state], [city], [address], [mobile], [email], [maritial_status], [blood_group], [total_experience_year], [total_exp_month], [experiencedetail], [salary], [password], [emp_id], [image]) VALUES (10, N'Co-Worker', N'9', N'Suupervisor', N'5/8/2016', N'Rohan', N'Raghav', N'Male', N'5/12/2016', N'India', N'Haryana', N'Karnal', N'dfhft', N'9416957616', N'sswt@gmail.com', N'Married', N'B+', N'5', N'4', N'gfsdgf', N'15000', N'Te289ER', N'Emp256LE', N'~/img/Balloon.bmp')
SET IDENTITY_INSERT [dbo].[allempdetail] OFF
/****** Object:  Table [dbo].[allocatestationstudent]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allocatestationstudent](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[route] [varchar](max) NULL,
	[station] [varchar](max) NULL,
	[bus_no] [varchar](max) NULL,
	[way_side] [varchar](max) NULL,
	[fee] [varchar](max) NULL,
	[pay_fee] [varchar](max) NULL,
	[remaining] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allocatestationstudent] ON
INSERT [dbo].[allocatestationstudent] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [route], [station], [bus_no], [way_side], [fee], [pay_fee], [remaining]) VALUES (3, N'2014-2015', N'First', N'A', N'Art', N'2', N'Kashin Chawla', N'Prem Nagar', N'Gurdwara Chownk', N'2', N'Two Way Fare', N'5200', N'3800', N'1400')
INSERT [dbo].[allocatestationstudent] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [route], [station], [bus_no], [way_side], [fee], [pay_fee], [remaining]) VALUES (8, N'2016-2017', N'Tweleth', N'A', N'Art', N'1', N'Kashin Chawla', N'Friends Colony', N'Petrol  Pump Chownk', N'3', N'Two Way Fare', N'5200', N'5200', N'0')
INSERT [dbo].[allocatestationstudent] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [route], [station], [bus_no], [way_side], [fee], [pay_fee], [remaining]) VALUES (9, N'2015-2016', N'First', N'A', N'Art', N'1', N'Ashwani Kumar', N'Ram Nagar', N'Petrol Pump', N'7', N'Two Way Fare', N'5500', N'0', N'5500')
INSERT [dbo].[allocatestationstudent] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [route], [station], [bus_no], [way_side], [fee], [pay_fee], [remaining]) VALUES (10, N'2015-2016', N'First', N'A', N'Art', N'1', N'Ashwani Kumar', N'Ram Nagar', N'Petrol Pump', N'7', N'Two Way Fare', N'5500', N'0', N'5500')
INSERT [dbo].[allocatestationstudent] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [route], [station], [bus_no], [way_side], [fee], [pay_fee], [remaining]) VALUES (11, N'2015-2016', N'First', N'A', N'Art', N'1', N'Ashwani Kumar', N'Ram Nagar', N'Petrol Pump', N'7', N'Two Way Fare', N'5500', N'0', N'5500')
INSERT [dbo].[allocatestationstudent] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [route], [station], [bus_no], [way_side], [fee], [pay_fee], [remaining]) VALUES (12, N'2013-2014', N'First', N'A', N'Commerce', N'2', N'Kevin Chawla', N'Ram Nagar', N'Petrol Pump', N'7', N'Two Way Fare', N'5500', N'0', N'5500')
INSERT [dbo].[allocatestationstudent] ([pk_id], [batch], [class], [section], [stream], [roll_no], [student_name], [route], [station], [bus_no], [way_side], [fee], [pay_fee], [remaining]) VALUES (13, N'2013-2014', N'First', N'A', N'Commerce', N'2', N'Kevin Chawla', N'Ram Nagar', N'Petrol Pump', N'7', N'Two Way Fare', N'5500', N'0', N'5500')
SET IDENTITY_INSERT [dbo].[allocatestationstudent] OFF
/****** Object:  Table [dbo].[AttendanceMaster]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AttendanceMaster](
	[attID] [int] IDENTITY(1,1) NOT NULL,
	[empId] [int] NULL,
	[attmonth] [int] NULL,
	[attYear] [int] NULL,
	[attStatus] [bit] NULL,
	[remarks] [varchar](max) NULL,
	[attdate] [datetime] NULL,
	[loggedInDate] [datetime] NULL,
 CONSTRAINT [PK_AttendanceMaster2] PRIMARY KEY CLUSTERED 
(
	[attID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[answer_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[answer_tbl](
	[ans_id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [varchar](max) NULL,
	[question] [varchar](max) NULL,
	[ans_option] [varchar](max) NULL,
	[correctoption] [varchar](max) NULL,
 CONSTRAINT [PK_answer_tbl] PRIMARY KEY CLUSTERED 
(
	[ans_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[altter_fee_show]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[altter_fee_show](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[student_name] [varchar](50) NULL,
	[roll_no] [varchar](50) NULL,
	[father_name] [varchar](50) NULL,
	[mother_name] [varchar](50) NULL,
	[class] [varchar](50) NULL,
	[section] [varchar](50) NULL,
	[date] [varchar](max) NULL,
	[fee] [varchar](max) NULL,
	[feetype] [varchar](max) NULL,
	[payment] [varchar](50) NULL,
	[balance] [varchar](50) NULL,
	[status] [varchar](50) NULL,
 CONSTRAINT [PK_altter_fee_show] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[altter_fee_show] ON
INSERT [dbo].[altter_fee_show] ([pk_id], [batch], [stream], [student_name], [roll_no], [father_name], [mother_name], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (21, N'2016-2017', N'Art', N'Kashin Chawla', N'1', N'Mahinder Chawla', N'Saroj Chawla', N'Tweleth', N'A', N'4/7/2016', N'2000', N'Registration Fee', N'2000', N'0', N'Paid')
INSERT [dbo].[altter_fee_show] ([pk_id], [batch], [stream], [student_name], [roll_no], [father_name], [mother_name], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (22, N'2016-2017', N'Art', N'Kashin Chawla', N'1', N'Mahinder Chawla', N'Saroj Chawla', N'Tweleth', N'A', N'4/8/2016', N'550', N'Examination Fee', N'550', N'0', N'Paid')
INSERT [dbo].[altter_fee_show] ([pk_id], [batch], [stream], [student_name], [roll_no], [father_name], [mother_name], [class], [section], [date], [fee], [feetype], [payment], [balance], [status]) VALUES (23, N'2016-2017', N'Art', N'Kashin Chawla', N'1', N'Mahinder Chawla', N'Saroj Chawla', N'Tweleth', N'A', N'4/7/2016', N'950', N'Class Fee', N'950', N'0', N'Paid')
SET IDENTITY_INSERT [dbo].[altter_fee_show] OFF
/****** Object:  Table [dbo].[allow_page]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[allow_page](
	[page_id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[page_name] [varchar](200) NULL,
	[page_url] [varchar](200) NULL,
	[description] [varchar](max) NULL,
	[role_name] [varchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[allow_page] ON
INSERT [dbo].[allow_page] ([page_id], [role_id], [page_name], [page_url], [description], [role_name]) VALUES (1, 2, N'Add Route', N'add_route.aspx', N'Route', N'Hostel Incharge')
SET IDENTITY_INSERT [dbo].[allow_page] OFF
/****** Object:  Table [dbo].[batch_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[batch_tbl](
	[batch_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](50) NULL,
 CONSTRAINT [PK_batch_tbl] PRIMARY KEY CLUSTERED 
(
	[batch_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[batch_tbl] ON
INSERT [dbo].[batch_tbl] ([batch_id], [batch]) VALUES (1, N'2013-2014')
INSERT [dbo].[batch_tbl] ([batch_id], [batch]) VALUES (2, N'2014-2015')
INSERT [dbo].[batch_tbl] ([batch_id], [batch]) VALUES (3, N'2015-2016')
SET IDENTITY_INSERT [dbo].[batch_tbl] OFF
/****** Object:  Table [dbo].[book_category]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[book_category](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[book_category] ON
INSERT [dbo].[book_category] ([pk_id], [name]) VALUES (1, N'Magzines')
INSERT [dbo].[book_category] ([pk_id], [name]) VALUES (2, N'Newspaper')
INSERT [dbo].[book_category] ([pk_id], [name]) VALUES (3, N'Technology')
INSERT [dbo].[book_category] ([pk_id], [name]) VALUES (4, N'Maths')
INSERT [dbo].[book_category] ([pk_id], [name]) VALUES (8, N'Comics')
SET IDENTITY_INSERT [dbo].[book_category] OFF
/****** Object:  Table [dbo].[bonafied_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bonafied_tbl](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[school_name] [varchar](200) NULL,
	[student_name] [varchar](200) NULL,
	[father_name] [varchar](200) NULL,
	[clas] [varchar](200) NULL,
	[fee] [varchar](200) NULL,
	[date] [varchar](200) NULL,
 CONSTRAINT [PK_bonafied_tbl] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[bonafied_tbl] ON
INSERT [dbo].[bonafied_tbl] ([pk_id], [school_name], [student_name], [father_name], [clas], [fee], [date]) VALUES (1, N'Delhi Public School', N'Baldeep Sing', N'Ram Chander', N'Tenth', N'100000', N'2/23/2016')
INSERT [dbo].[bonafied_tbl] ([pk_id], [school_name], [student_name], [father_name], [clas], [fee], [date]) VALUES (2, N'Delhi Public School', N'Baldeep Sing', N'Ram Chander', N'Tenth', N'100000', N'2/23/2016')
INSERT [dbo].[bonafied_tbl] ([pk_id], [school_name], [student_name], [father_name], [clas], [fee], [date]) VALUES (3, N'Partap Public School', N'Ashwani Kumar', N'Rajesh Kumar', N'Fifth', N'1500', N'2/24/2016')
INSERT [dbo].[bonafied_tbl] ([pk_id], [school_name], [student_name], [father_name], [clas], [fee], [date]) VALUES (4, N'Maharishi University', N'Kashin Chawla', N'Mahinder Chawla', N'B.tech(I.T)', N'4000', N'19/03/2016')
INSERT [dbo].[bonafied_tbl] ([pk_id], [school_name], [student_name], [father_name], [clas], [fee], [date]) VALUES (5, N'MMEC', N'Baldeep Sing', N'Ram Chander', N'12th', N'4500', N'4/12/2016')
SET IDENTITY_INSERT [dbo].[bonafied_tbl] OFF
/****** Object:  Table [dbo].[Book_status]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book_status](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[detail] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bus_timing]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bus_timing](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[route_name] [varchar](max) NULL,
	[station_name] [varchar](max) NULL,
	[bus_no] [varchar](max) NULL,
	[Pickup_time] [varchar](max) NULL,
	[drop_time] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[bus_timing] ON
INSERT [dbo].[bus_timing] ([pk_id], [route_name], [station_name], [bus_no], [Pickup_time], [drop_time]) VALUES (1, N'Ram Nagar', N'Petrol Pump', N'1', N'6:00AM', N'1:00PM')
INSERT [dbo].[bus_timing] ([pk_id], [route_name], [station_name], [bus_no], [Pickup_time], [drop_time]) VALUES (2, N'Prem Nagar', N'Gurdwara Chownk', N'2', N'6:30AM', N'2:00PM')
INSERT [dbo].[bus_timing] ([pk_id], [route_name], [station_name], [bus_no], [Pickup_time], [drop_time]) VALUES (3, N'Char chaman', N'Ramesh Chownk', N'3', N'7:00AM', N'1:30PM')
INSERT [dbo].[bus_timing] ([pk_id], [route_name], [station_name], [bus_no], [Pickup_time], [drop_time]) VALUES (4, N'Vasant vihar', N'Gali no 4', N'3', N'7:30AM', N'2:30PM')
INSERT [dbo].[bus_timing] ([pk_id], [route_name], [station_name], [bus_no], [Pickup_time], [drop_time]) VALUES (6, N'Friends Colony', N'Petrol  Pump Chownk', N'3', N'4:00AM', N'1:00PM')
SET IDENTITY_INSERT [dbo].[bus_timing] OFF
/****** Object:  Table [dbo].[charactercertificate]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[charactercertificate](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[school_name] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[marks] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[charactercertificate] ON
INSERT [dbo].[charactercertificate] ([pk_id], [school_name], [student_name], [father_name], [class], [marks], [date], [status]) VALUES (10, N'Maharishi Markandeswar International School', N'Ashwani Kumar', N'Rajesh Kumar', N'Fifth', N'70', N'2/24/2016', N'Good')
INSERT [dbo].[charactercertificate] ([pk_id], [school_name], [student_name], [father_name], [class], [marks], [date], [status]) VALUES (11, N'Partap Public School', N'Ashwani Kumar', N'Rajesh Kumar', N'Fifth', N'70', N'2/24/2016', N'Good')
INSERT [dbo].[charactercertificate] ([pk_id], [school_name], [student_name], [father_name], [class], [marks], [date], [status]) VALUES (13, N'DPS Public School', N'Kashin Chawla', N'Mahinder Chawla', N'Tweleth', N'75', N'4/6/2016', N'Very Good')
SET IDENTITY_INSERT [dbo].[charactercertificate] OFF
/****** Object:  Table [dbo].[city]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[country] [varchar](200) NULL,
	[state] [varchar](200) NULL,
	[city_name] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[city] ON
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (1, N'India', N'Tripura', N'Agartala')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (2, N'India', N'Uttar Pradesh', N'Agra')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (3, N'India', N'Maharashtra', N'Ahmednagar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (4, N'India', N'Mizoram', N'Aizawal')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (5, N'India', N'Rajasthan', N'Ajmer')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (6, N'India', N'Uttar Pradesh', N'Aligarh')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (7, N'India', N'Uttar Pradesh', N'Allahabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (8, N'India', N'Haryana', N'Ambala')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (9, N'India', N'Punjab', N'Amritsar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (10, N'India', N'Gujarat', N'Anand')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (11, N'India', N'Andhra Pradesh', N'Anantapur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (12, N'India', N'Gujarat', N'Ankleshwar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (13, N'India', N'West Bengal', N'Asansol')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (14, N'India', N'Meghalaya', N'Assam')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (15, N'India', N'Bihar', N'Aurangabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (16, N'India', N'Maharashtra', N'Aurangabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (17, N'India', N'Uttar Pradesh', N'Bareilly')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (18, N'India', N'Punjab', N'Bathinda')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (19, N'India', N'Karnataka', N'Belgaum')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (20, N'India', N'Karnataka', N'Ballary')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (21, N'India', N'Karnataka', N'Bengaluru/Bangalore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (22, N'India', N'Bihar', N'Bhagalpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (23, N'India', N'Gujarat', N'Bharuch')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (24, N'India', N'Gujarat', N'Bhavnagar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (25, N'India', N'Chhattisgarh', N'Bhillai')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (26, N'India', N'Madhya Pradesh', N'Bhopal')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (27, N'India', N'Orissa', N'Bhubaneshwar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (28, N'India', N'Gujarat', N'Bhuj')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (29, N'India', N'Karnataka', N'Bidar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (30, N'India', N'Chhattisgarh', N'Bilaspur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (31, N'India', N'Jharkhand', N'Bokaro')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (32, N'India', N'Kerala', N'Calicut')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (33, N'India', N'Haryana', N'Chandigarh')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (34, N'India', N'Punjab', N'Chandigarh')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (35, N'India', N'Tamil Nadu', N'Chennai')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (36, N'India', N'Kerala', N'Cochin')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (37, N'India', N'Tamil Nadu', N'Coimbatore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (38, N'India', N'Tamil Nadu', N'Cuddalore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (39, N'India', N'Orissa', N'Cuttak')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (40, N'India', N'Maharashtra', N'Dadra & Nagar Haveli-Silvassa')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (41, N'India', N'Gujarat', N'Dadra & Nagar Haveli-Silvassa')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (42, N'India', N'Himachal Pradesh', N'Dalhousie')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (43, N'India', N'Uttarakhand', N'Dehradun')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (44, N'India', N'Delhi', N'Delhi')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (45, N'India', N'Jharkhand', N'Dhanbad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (46, N'India', N'Himachal Pradesh', N'Dharmasala')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (47, N'India', N'Karnataka', N'Dharwad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (48, N'India', N'Nagaland', N'Dimapur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (49, N'India', N'West Bengal', N'Durgapur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (50, N'India', N'Maharashtra', N'Durgapur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (51, N'India', N'Kerala', N'Ernakulam')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (52, N'India', N'Tamil Nadu', N'Erode')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (53, N'India', N'Uttar Pradesh', N'Faizabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (54, N'India', N'Haryana', N'Faridabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (55, N'India', N'Gujarat', N'Gandhinagar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (56, N'India', N'Sikkim', N'Gangtok')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (57, N'India', N'Uttar Pradesh', N'Ghaziabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (58, N'India', N'Goa', N'Goa')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (59, N'India', N'Uttar Pradesh', N'Gorakhpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (60, N'India', N'Karnataka', N'Gulbarga')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (61, N'India', N'Andhra Pradesh', N'Guntakal')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (62, N'India', N'Andhra Pradesh', N'Guntur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (63, N'India', N'Haryana', N'Gurgaon')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (64, N'India', N'Assam', N'Guwahati')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (65, N'India', N'Madhya Pradesh', N'Gwalior')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (66, N'India', N'West Bengal', N'Haldia')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (67, N'India', N'Haryana', N'Hisar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (68, N'India', N'Tamil Nadu', N'Hosur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (69, N'India', N'Karnataka', N'Hubbali')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (70, N'India', N'Andhra Pradesh', N'Hyderabad/Secunderabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (71, N'India', N'Manipur', N'Imphal')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (72, N'India', N'Madhya Pradesh', N'Indore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (73, N'India', N'Arunachal Pradesh', N'Itanagar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (74, N'India', N'Madhya Pradesh', N'Jabalpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (75, N'India', N'Rajasthan', N'Jaipur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (76, N'India', N'Rajasthan', N'Jaisalmer')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (77, N'India', N'Punjab', N'Jalandhar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (78, N'India', N'Maharashtra', N'Jalgaon')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (79, N'India', N'Jammu and Kashmir', N'Jammu')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (80, N'India', N'Gujarat', N'Jamnagar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (81, N'India', N'Jharkhand', N'Jamshedpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (82, N'India', N'Rajasthan', N'Jodhpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (83, N'India', N'Andhra Pradesh', N'kakinada')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (84, N'India', N'Gujarat', N'Kandla')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (85, N'India', N'Kerala', N'Kannur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (86, N'India', N'Uttar Pradesh', N'Kanpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (87, N'India', N'Haryana', N'Karnal')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (88, N'India', N'Bihar', N'Kharagpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (89, N'India', N'West Bengal', N'Kharagpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (90, N'India', N'West Bengal', N'Kochi')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (91, N'India', N'Karnataka', N'Kolar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (92, N'India', N'Maharashtra', N'Kolhapur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (93, N'India', N'West Bengal', N'Kolkatta')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (94, N'India', N'Kerala', N'Kollam')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (95, N'India', N'Rajasthan', N'Kota')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (96, N'India', N'Kerala', N'Kottayam')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (97, N'India', N'Kerala', N'Kozhikode')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (98, N'India', N'Himachal Pradesh', N'Kulu/Manali')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (99, N'India', N'Andhra Pradesh', N'kurnool')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (100, N'India', N'Haryana', N'Kurukshetra')
GO
print 'Processed 100 total records'
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (101, N'India', N'Uttar Pradesh', N'Lucknow')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (102, N'India', N'Punjab', N'Ludhiana')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (103, N'India', N'Tamil Nadu', N'Madurai')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (104, N'India', N'Karnataka', N'Mangalore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (105, N'India', N'Uttar Pradesh', N'Mathura')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (106, N'India', N'Uttar Pradesh', N'Meerut')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (107, N'India', N'Punjab', N'Mohali')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (108, N'India', N'Uttar Pradesh', N'Moradabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (109, N'India', N'Maharashtra', N'Mumbai')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (110, N'India', N'Maharashtra', N'Mumbai Suburbs')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (111, N'India', N'Karnataka', N'Mysoru/Mysore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (112, N'India', N'Tamil Nadu', N'Nagerkoil')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (113, N'India', N'Maharashtra', N'Nagpur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (114, N'India', N'Maharashtra', N'Nasik')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (115, N'India', N'Maharashtra', N'Navi Mumbai')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (116, N'India', N'Andhra Pradesh', N'Nellore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (117, N'India', N'Andhra Pradesh', N'Nizamabad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (118, N'India', N'Uttar Pradesh', N'Noida')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (119, N'India', N'Tamil Nadu', N'Ooty')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (120, N'India', N'Kerala', N'Palghat')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (121, N'India', N'Haryana', N'Panipat')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (122, N'India', N'Goa', N'Panjim/Panaji')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (123, N'India', N'Orissa', N'Paradeep')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (124, N'India', N'Punjab', N'Pathankot')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (125, N'India', N'Punjab', N'Patiala')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (126, N'India', N'Bihar', N'Patna')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (127, N'India', N'Gujarat', N'Porbandar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (128, N'India', N'Maharashtra', N'Pune')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (129, N'India', N'Orissa', N'Puri')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (130, N'India', N'Chhattisgarh', N'Raipur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (131, N'India', N'Andhra Pradesh', N'Rajahmundry')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (132, N'India', N'Gujarat', N'Rajkot')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (133, N'India', N'Jharkhand', N'Ranchi')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (134, N'India', N'Haryana', N'Rohtak')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (135, N'India', N'Uttarakhand', N'Roorkee')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (136, N'India', N'Orissa', N'Rourkela')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (137, N'India', N'Tamil Nadu', N'Salem')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (138, N'India', N'Meghalaya', N'Shillong')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (139, N'India', N'Himachal Pradesh', N'Shimla')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (140, N'India', N'Assam', N'Silchar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (141, N'India', N'West Bengal', N'Siliguri')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (142, N'India', N'Maharashtra', N'Solapur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (143, N'India', N'Jammu and Kashmir', N'Srinagar')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (144, N'India', N'Gujarat', N'Surat')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (145, N'India', N'Tamil Nadu', N'Thanjavur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (146, N'India', N'Kerala', N'Thrissur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (147, N'India', N'Tamil Nadu', N'Tirunalveli')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (148, N'India', N'Andhra Pradesh', N'Tirupati')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (149, N'India', N'Tamil Nadu', N'Trichy')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (150, N'India', N'Kerala', N'Trivandrum')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (151, N'India', N'Tamil Nadu', N'Tuticorin')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (152, N'India', N'Rajasthan', N'Udaipur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (153, N'India', N'Tripura', N'Udaipur')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (154, N'India', N'Madhya Pradesh', N'Ujjain')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (155, N'India', N'Gujarat', N'Vadodara/Baroda')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (156, N'India', N'Gujarat', N'Valsad')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (157, N'India', N'Gujarat', N'Vapi')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (158, N'India', N'Uttar Pradesh', N'Varanasi/Banaras')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (159, N'India', N'Goa', N'Vasco Da Gama')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (160, N'India', N'Tamil Nadu', N'Vellore')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (161, N'India', N'Andhra Pradesh', N'Vijayawada')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (162, N'India', N'Andhra Pradesh', N'Visakhapatnam')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (163, N'India', N'Andhra Pradesh', N'Warangal')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (167, N'India', N'Andhra Pradesh', N'aaa')
INSERT [dbo].[city] ([pk_id], [country], [state], [city_name]) VALUES (169, N'India', N'aa11', N'fff')
SET IDENTITY_INSERT [dbo].[city] OFF
/****** Object:  Table [dbo].[class_info]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[class_info](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](50) NULL,
	[class_name] [varchar](max) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[class_info] ON
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (1, N'2013-2014', N'First')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (2, N'2013-2014', N'Second')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (3, N'2013-2014', N'Third')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (4, N'2013-2014', N'Fourth')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (5, N'2014-2015', N'First')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (6, N'2014-2015', N'Second')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (7, N'2014-2015', N'Third')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (8, N'2014-2015', N'Fourth')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (9, N'2015-2016', N'First')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (10, N'2015-2016', N'Second')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (11, N'2015-2016', N'Third')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (12, N'2015-2016', N'Fourth')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (13, N'2016-2017', N'First')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (14, N'2016-2017', N'Third')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (15, N'2016-2017', N'Eighth')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (16, N'2016-2017', N'Tweleth')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (17, N'2016-2017', N'Nineth')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (18, N'2013-2014', N'Tweleth')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (19, N'2013-2014', N'L.K.G')
INSERT [dbo].[class_info] ([class_id], [batch], [class_name]) VALUES (20, N'2015-2016', N'U.K.G')
SET IDENTITY_INSERT [dbo].[class_info] OFF
/****** Object:  Table [dbo].[create_cupboard]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[create_cupboard](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[detail] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[create_cupboard] ON
INSERT [dbo].[create_cupboard] ([pk_id], [name], [detail]) VALUES (1, N'Cupboard - A', N'Library cupboard - A')
INSERT [dbo].[create_cupboard] ([pk_id], [name], [detail]) VALUES (3, N'Cupboard - B', N'Library cupboard - B')
INSERT [dbo].[create_cupboard] ([pk_id], [name], [detail]) VALUES (5, N' Cupboard - C', N'Library cupboard-B')
SET IDENTITY_INSERT [dbo].[create_cupboard] OFF
/****** Object:  Table [dbo].[country]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[country](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[country] ON
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (1, N'Afghanistan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (2, N'Albania')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (3, N'Algeria')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (4, N'American Samoa')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (5, N'Angola')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (6, N'Argentina')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (7, N'Armenia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (8, N'Aruba')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (9, N'Australia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (10, N'Austria')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (11, N'Azerbaijan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (12, N'Bahrain')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (13, N'Bangladesh')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (14, N'Belarus')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (15, N'Belgium')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (16, N'Belize')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (17, N'Bermuda')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (18, N'Bhutan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (19, N'Bolivia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (20, N'Bosnia and Herzegovina')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (21, N'Botswana')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (22, N'Brazil')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (23, N'Bulgaria')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (24, N'Burkina Faso')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (25, N'Burundi')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (26, N'Cambodia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (27, N'Cameroon')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (28, N'Canada')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (29, N'China')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (30, N'Colombia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (31, N'Cook Islands')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (32, N'Costa Rica')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (33, N'Croatia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (34, N'Cuba')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (35, N'Cyprus')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (36, N'Denmark')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (37, N'Djibouti')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (38, N'Dominican Republic')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (39, N'Ecuador')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (40, N'Egypt')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (41, N'El Salvador')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (42, N'Eritrea')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (43, N'Ethiopia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (44, N'Falkland Islands')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (45, N'Faroe Islands')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (46, N'Finland')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (47, N'France')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (48, N'French Polynesia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (49, N'Gambia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (50, N'Georgia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (51, N'Germany')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (52, N'Ghana')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (53, N'Gibraltar')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (54, N'Greece')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (55, N'Greenland')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (56, N'Guadeloupe')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (57, N'Guam')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (58, N'Guatemala')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (59, N'Guyana')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (60, N'Haiti')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (61, N'Honduras')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (62, N'Hong Kong')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (63, N'Hungary')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (64, N'Iceland')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (65, N'India')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (66, N'Indonesia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (67, N'Iran')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (68, N'Iraq')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (69, N'Ireland')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (70, N'Israel')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (71, N'Ivory Coast')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (72, N'Japan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (73, N'Jordan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (74, N'Kenya')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (75, N'Kiribati')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (76, N'Kuwait')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (77, N'KYRGYZ REPUBLIC')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (78, N'Laos')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (79, N'Latvia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (80, N'Lebanon')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (81, N'Lesotho')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (82, N'Liberia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (83, N'Libya')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (84, N'Lithuania')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (85, N'Luxembourg')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (86, N'Macau')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (87, N'Madagascar')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (88, N'Malawi')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (89, N'Malaysia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (90, N'Maldives')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (91, N'Malta')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (92, N'Marshall Islands')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (93, N'Mauritania')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (94, N'Mauritius')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (95, N'Mexico')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (96, N'Moldova')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (97, N'Monaco')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (98, N'Mongolia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (99, N'Morocco')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (100, N'Mozambique')
GO
print 'Processed 100 total records'
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (101, N'Nauru')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (102, N'Nepal')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (103, N'Netherlands')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (104, N'New Caledonia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (105, N'New Zealand')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (106, N'Nicaragua')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (107, N'Nigeria')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (108, N'Norway')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (109, N'Oman')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (110, N'Pakistan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (111, N'Palau')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (112, N'Panama')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (113, N'Papua New Guinea')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (114, N'Paraguay')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (115, N'Peru')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (116, N'Philippines')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (117, N'Poland')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (118, N'Puerto Rico')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (119, N'Qatar')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (120, N'Romania')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (121, N'Russian Federation')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (122, N'Rwanda')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (123, N'San Marino')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (124, N'Sao Tome and Principe')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (125, N'Saudi Arabia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (126, N'Senegal')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (127, N'Seychelles')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (128, N'Sierra Leone')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (129, N'Singapore')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (130, N'Slovakia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (131, N'South Africa')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (132, N'Spain')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (133, N'Sri Lanka')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (134, N'St.Helena')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (135, N'Sudan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (136, N'Suriname')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (137, N'Sweden')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (138, N'Syria')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (139, N'Taiwan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (140, N'Tanzania')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (141, N'Thailand')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (142, N'Togo')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (143, N'Tokelau')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (144, N'Tonga')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (145, N'Trinidad and Tobago')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (146, N'Tunisia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (147, N'Turkey')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (148, N'Turkmenistan')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (149, N'Tuvalu')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (150, N'Uganda')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (151, N'Ukraine')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (152, N'United Arab Emirates')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (153, N'United Kingdom')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (154, N'United States')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (155, N'Uruguay')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (156, N'Vanuatu')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (157, N'Venezuela')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (158, N'Yemen')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (159, N'Zaire')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (160, N'Zambia')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (161, N'Zimbabwe')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (164, N'aaa')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (165, N'aaa')
INSERT [dbo].[country] ([pk_id], [country_name]) VALUES (166, N'aaaa')
SET IDENTITY_INSERT [dbo].[country] OFF
/****** Object:  Table [dbo].[quiz_section]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[quiz_section](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[section] [varchar](max) NULL,
 CONSTRAINT [PK_quiz_section] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[quiz_section] ON
INSERT [dbo].[quiz_section] ([pk_id], [section]) VALUES (1, N'General Knowledge ')
INSERT [dbo].[quiz_section] ([pk_id], [section]) VALUES (2, N'English')
INSERT [dbo].[quiz_section] ([pk_id], [section]) VALUES (3, N'Math')
INSERT [dbo].[quiz_section] ([pk_id], [section]) VALUES (4, N'Science')
INSERT [dbo].[quiz_section] ([pk_id], [section]) VALUES (6, N'Sanskrit')
SET IDENTITY_INSERT [dbo].[quiz_section] OFF
/****** Object:  Table [dbo].[salary_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salary_tbl](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_name] [varchar](max) NULL,
	[teacher_tid] [varchar](max) NULL,
	[year] [varchar](max) NULL,
	[month] [varchar](max) NULL,
	[date] [date] NULL,
	[salary] [varchar](max) NULL,
	[holiday] [varchar](max) NULL,
	[paid] [int] NULL,
 CONSTRAINT [PK_salary_tbl] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[salary_tbl] ON
INSERT [dbo].[salary_tbl] ([pk_id], [teacher_name], [teacher_tid], [year], [month], [date], [salary], [holiday], [paid]) VALUES (2, N'Rahul Garg', N'TE512LE', N'2016', N'April', CAST(0x3C3B0B00 AS Date), N'19500', N'1', 18850)
INSERT [dbo].[salary_tbl] ([pk_id], [teacher_name], [teacher_tid], [year], [month], [date], [salary], [holiday], [paid]) VALUES (3, N'Kashin Chawla', N'TE1024LE', N'2016', N'March', CAST(0x5C3B0B00 AS Date), N'13000', N'1', 12567)
SET IDENTITY_INSERT [dbo].[salary_tbl] OFF
/****** Object:  Table [dbo].[section]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[section](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](50) NULL,
	[class] [varchar](max) NULL,
	[section_name] [varchar](max) NULL,
 CONSTRAINT [PK_section] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[section] ON
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (2, N'2013-2014', N'First', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (3, N'2013-2014', N'First', N'l')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (4, N'2013-2014', N'Second', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (5, N'2013-2014', N'Second', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (6, N'2013-2014', N'Second', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (7, N'2013-2014', N'Third', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (8, N'2013-2014', N'Third', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (9, N'2013-2014', N'Fourth', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (10, N'2013-2014', N'Fourth', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (11, N'2013-2014', N'Fourth', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (12, N'2013-2014', N'Third', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (13, N'2014-2015', N'First', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (14, N'2014-2015', N'First', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (15, N'2014-2015', N'First', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (16, N'2014-2015', N'Second', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (17, N'2014-2015', N'Second', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (18, N'2014-2015', N'Second', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (19, N'ds', N'ds', N'sd')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (20, N'2014-2015', N'Third', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (21, N'2014-2015', N'Third', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (22, N'2014-2015', N'Fourth', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (23, N'2014-2015', N'Fourth', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (24, N'2014-2015', N'Fourth', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (25, N'2015-2016', N'First', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (26, N'2015-2016', N'First', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (27, N'2015-2016', N'First', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (28, N'2015-2016', N'Second', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (29, N'2015-2016', N'Second', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (30, N'2015-2016', N'Second', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (31, N'2015-2016', N'Third', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (32, N'2015-2016', N'Third', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (33, N'2015-2016', N'Third', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (34, N'2015-2016', N'Fourth', N'A')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (35, N'2015-2016', N'Fourth', N'B')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (36, N'2015-2016', N'Fourth', N'C')
INSERT [dbo].[section] ([section_id], [batch], [class], [section_name]) VALUES (37, N'fgd', N'gfd', N'gdf')
SET IDENTITY_INSERT [dbo].[section] OFF
/****** Object:  Table [dbo].[school_info]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[school_info](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[school_name] [varchar](100) NULL,
	[image] [varchar](max) NULL,
 CONSTRAINT [PK_school_info] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[school_info] ON
INSERT [dbo].[school_info] ([pk_id], [school_name], [image]) VALUES (6, N'School', N'~/img/login.jpg')
SET IDENTITY_INSERT [dbo].[school_info] OFF
/****** Object:  Table [dbo].[SLC]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SLC](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[school_name] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[admission_date] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[date_of_application] [varchar](max) NULL,
	[date_of_issue] [varchar](max) NULL,
	[reason] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SLC] ON
INSERT [dbo].[SLC] ([pk_id], [school_name], [student_name], [father_name], [admission_date], [class], [dob], [date_of_application], [date_of_issue], [reason]) VALUES (2, N'Delhi Public School', N'Baldeep Sing', N'Ram Chander', N'2/9/2016', N'Tenth', N'1/26/2010', N'2/23/2016', N'2/23/2016', N'heloooo')
INSERT [dbo].[SLC] ([pk_id], [school_name], [student_name], [father_name], [admission_date], [class], [dob], [date_of_application], [date_of_issue], [reason]) VALUES (3, N'Partap Public School', N'Kashin Chawla', N'Mahinder Chawla', N'2/9/2016', N'First', N'8/4/2010', N'2/24/2016', N'2/27/2016', N'Transfer')
INSERT [dbo].[SLC] ([pk_id], [school_name], [student_name], [father_name], [admission_date], [class], [dob], [date_of_application], [date_of_issue], [reason]) VALUES (4, N'Maharishi University', N'Kashin Chawla', N'Mahinder Chawla', N'2/9/2016', N'B.tech(I.T)', N'8/4/2010', N'3/19/2016', N'3/24/2016', N'sfdgdsx')
SET IDENTITY_INSERT [dbo].[SLC] OFF
/****** Object:  Table [dbo].[student_hostelinfo]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student_hostelinfo](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[student_id] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[mothername] [varchar](max) NULL,
	[gender] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[hostel_name] [varchar](max) NULL,
	[type] [varchar](max) NULL,
	[no_of_room] [varchar](max) NULL,
	[available_room] [varchar](max) NULL,
	[room_no] [varchar](max) NULL,
	[seat] [varchar](max) NULL,
	[no_of_student] [varchar](max) NOT NULL,
	[Charge] [varchar](max) NULL,
	[mobile] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[student_hostelinfo] ON
INSERT [dbo].[student_hostelinfo] ([pk_id], [student_id], [student_name], [father_name], [mothername], [gender], [batch], [stream], [class], [roll_no], [date], [hostel_name], [type], [no_of_room], [available_room], [room_no], [seat], [no_of_student], [Charge], [mobile]) VALUES (1, N'Ho1781728', N'Kashin Chawla', N'Mahinder Chawla', N'23', N'Male', N'India', N'Haryana', N'Karnal', N'1', N'2/9/2016', N'Vijaypath', N'Single', N'50', N'30', N'1', N'30', N'1', N'62000', N'7404492522')
INSERT [dbo].[student_hostelinfo] ([pk_id], [student_id], [student_name], [father_name], [mothername], [gender], [batch], [stream], [class], [roll_no], [date], [hostel_name], [type], [no_of_room], [available_room], [room_no], [seat], [no_of_student], [Charge], [mobile]) VALUES (3, N'Ho1781735', N'Ashwani', N'Raghu Ram', N'23', N'Male', N'India', N'Haryana', N'Karnal', N'1', N'3/3/2016', N'Bhagat Singh', N'Single', N'150', N'60', N'1', N'60', N'1', N'62000', N'7404492522')
INSERT [dbo].[student_hostelinfo] ([pk_id], [student_id], [student_name], [father_name], [mothername], [gender], [batch], [stream], [class], [roll_no], [date], [hostel_name], [type], [no_of_room], [available_room], [room_no], [seat], [no_of_student], [Charge], [mobile]) VALUES (8, N'ST456dEd', N'Baldeep Sing', N'Ram Chander', N'Roshni Devi', N'Male', N'2014-2015', N'Art', N'First', N'1', N'4/6/2016', N'Veeer Singh', N'Double', N'50', N'100', N'1', N'100', N'1', N'55000', N'9050219530')
INSERT [dbo].[student_hostelinfo] ([pk_id], [student_id], [student_name], [father_name], [mothername], [gender], [batch], [stream], [class], [roll_no], [date], [hostel_name], [type], [no_of_room], [available_room], [room_no], [seat], [no_of_student], [Charge], [mobile]) VALUES (5, N'ST1368Ed', N'Ashwani Kumar', N'Rajesh Kumar', N'Veera Kumar', N'Male', N'2015-2016', N'Art', N'First', N'1', N'3/5/2016', N'Vijaypath', N'Single', N'50', N'27', N'2', N'30', N'1', N'62000', N'8529403539')
INSERT [dbo].[student_hostelinfo] ([pk_id], [student_id], [student_name], [father_name], [mothername], [gender], [batch], [stream], [class], [roll_no], [date], [hostel_name], [type], [no_of_room], [available_room], [room_no], [seat], [no_of_student], [Charge], [mobile]) VALUES (13, N'ST456Ed', N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', N'Male', N'2016-2017', N'Art', N'Tweleth', N'1', N'4/7/2016', N'Veeer Singh', N'Single', N'40', N'36', N'1', N'40', N'1', N'70000', N'9254492522')
INSERT [dbo].[student_hostelinfo] ([pk_id], [student_id], [student_name], [father_name], [mothername], [gender], [batch], [stream], [class], [roll_no], [date], [hostel_name], [type], [no_of_room], [available_room], [room_no], [seat], [no_of_student], [Charge], [mobile]) VALUES (14, N'ST3434Ed', N'Faizan Khan', N'Ahmad Khan', N'Ruheen Khan', N'Male', N'2014-2015', N'Art', N'First', N'3', N'5/11/2016', N'Vijaypath', N'Single', N'50', N'22', N'21', N'30', N'1', N'62000', N'9034178486')
SET IDENTITY_INSERT [dbo].[student_hostelinfo] OFF
/****** Object:  Table [dbo].[student_complaint]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student_complaint](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[Student_name] [varchar](max) NULL,
	[roll_no] [int] NULL,
	[date] [varchar](max) NULL,
	[complaint] [varchar](max) NULL,
 CONSTRAINT [PK_student_complaint] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[student_complaint] ON
INSERT [dbo].[student_complaint] ([pk_id], [batch], [stream], [class], [section], [Student_name], [roll_no], [date], [complaint]) VALUES (1, N'2014-2015', N'Art', N'First', N'A', N'Ashwani Kumar', 1, N'2/9/2016 16:58:01', N'Behavior Not Good')
INSERT [dbo].[student_complaint] ([pk_id], [batch], [stream], [class], [section], [Student_name], [roll_no], [date], [complaint]) VALUES (3, N'2016-2017', N'Art', N'Tweleth', N'A', N'Kashin Chawla', 1, N'4/6/2016 5:56:03 PM', N'Test  Test Test Test Test ')
SET IDENTITY_INSERT [dbo].[student_complaint] OFF
/****** Object:  Table [dbo].[student_attandence]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student_attandence](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[day] [int] NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[roll_no] [int] NULL,
	[month] [varchar](max) NULL,
	[year] [varchar](max) NULL,
	[status] [varchar](max) NULL,
 CONSTRAINT [PK_student_attandence] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[student_attandence] ON
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (1, 1, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (2, 2, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (3, 3, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (4, 4, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (5, 5, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (6, 6, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (7, 7, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (8, 8, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (9, 9, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (10, 10, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (11, 11, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (12, 12, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (13, 13, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (14, 14, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (15, 15, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (16, 16, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (17, 17, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (18, 18, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (19, 19, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (20, 20, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (21, 21, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (22, 22, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (23, 23, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (24, 24, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (25, 25, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (26, 26, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (27, 27, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (28, 28, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (29, 29, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (30, 1, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (31, 2, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (32, 3, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (33, 4, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (34, 5, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (35, 6, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (36, 7, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (37, 8, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (38, 9, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (39, 10, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (40, 11, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (41, 12, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (42, 13, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (43, 14, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (44, 15, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (45, 16, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (46, 17, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (47, 18, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (48, 19, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (49, 20, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (50, 21, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (51, 22, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (52, 23, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (53, 24, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (54, 25, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (55, 26, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (56, 27, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (57, 28, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (58, 29, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (59, 1, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (60, 2, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (61, 3, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (62, 4, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (63, 5, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (64, 6, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (65, 7, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (66, 8, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (67, 9, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (68, 10, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (69, 11, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (70, 12, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (71, 13, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (72, 14, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (73, 15, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (74, 16, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (75, 17, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (76, 18, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (77, 19, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (78, 20, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (79, 21, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (80, 22, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (81, 23, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (82, 24, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (83, 25, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (84, 26, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (85, 27, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (86, 28, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (87, 29, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'2', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (88, 1, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (89, 2, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (90, 3, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (91, 4, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (92, 5, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (93, 6, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (94, 7, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (95, 8, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (96, 9, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (97, 10, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (98, 11, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (99, 12, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (100, 13, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
GO
print 'Processed 100 total records'
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (101, 14, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (102, 15, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (103, 16, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (104, 17, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (105, 18, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (106, 19, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (107, 20, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (108, 21, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (109, 22, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (110, 23, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (111, 24, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (112, 25, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (113, 26, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (114, 27, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (115, 28, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (116, 29, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (117, 30, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (118, 31, N'2014-2015', N'First', N'A', N'Art', N'Baldeep Sing', 1, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (119, 1, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (120, 2, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (121, 3, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (122, 4, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (123, 5, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Present')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (124, 6, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (125, 7, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (126, 8, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (127, 9, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (128, 10, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (129, 11, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (130, 12, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (131, 13, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (132, 14, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (133, 15, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (134, 16, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (135, 17, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (136, 18, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (137, 19, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (138, 20, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (139, 21, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (140, 22, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (141, 23, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (142, 24, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (143, 25, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (144, 26, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (145, 27, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (146, 28, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (147, 29, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (148, 30, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (149, 31, N'2014-2015', N'First', N'A', N'Art', N'Kashin Chawla', 2, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (150, 1, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (151, 2, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (152, 3, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (153, 4, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (154, 5, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (155, 6, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (156, 7, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (157, 8, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (158, 9, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (159, 10, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (160, 11, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (161, 12, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (162, 13, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (163, 14, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (164, 15, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (165, 16, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (166, 17, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (167, 18, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (168, 19, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (169, 20, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (170, 21, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (171, 22, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (172, 23, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (173, 24, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (174, 25, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (175, 26, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (176, 27, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (177, 28, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (178, 29, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (179, 30, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (180, 31, N'2014-2015', N'First', N'A', N'Art', N'Faizan Khan', 3, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (181, 1, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (182, 2, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (183, 3, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (184, 4, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (185, 5, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (186, 6, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (187, 7, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (188, 8, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (189, 9, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (190, 10, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (191, 11, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (192, 12, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (193, 13, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (194, 14, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (195, 15, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (196, 16, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (197, 17, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (198, 18, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (199, 19, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (200, 20, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (201, 21, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
GO
print 'Processed 200 total records'
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (202, 22, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (203, 23, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (204, 24, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (205, 25, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (206, 26, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (207, 27, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (208, 28, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (209, 29, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (210, 30, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (211, 31, N'2014-2015', N'First', N'A', N'Art', N'Rohan Roy', 4, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (212, 1, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (213, 2, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (214, 3, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (215, 4, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (216, 5, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (217, 6, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (218, 7, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (219, 8, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (220, 9, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (221, 10, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (222, 11, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (223, 12, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (224, 13, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (225, 14, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (226, 15, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (227, 16, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (228, 17, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (229, 18, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (230, 19, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (231, 20, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (232, 21, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (233, 22, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (234, 23, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (235, 24, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (236, 25, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (237, 26, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (238, 27, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (239, 28, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (240, 29, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (241, 30, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
INSERT [dbo].[student_attandence] ([pk_id], [day], [batch], [class], [section], [stream], [student_name], [roll_no], [month], [year], [status]) VALUES (242, 31, N'2014-2015', N'First', N'A', N'Art', N'fgdsrf', 5, N'3', N'2016', N'Absent')
SET IDENTITY_INSERT [dbo].[student_attandence] OFF
/****** Object:  Table [dbo].[studentinfo]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[studentinfo](
	[student_id] [int] IDENTITY(1,1) NOT NULL,
	[admission_no] [varchar](max) NULL,
	[admissiondate] [varchar](max) NULL,
	[bloodgroup] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[mother_name] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[gender] [varchar](max) NULL,
	[country] [varchar](max) NULL,
	[state] [varchar](max) NULL,
	[city] [varchar](max) NULL,
	[address1] [varchar](max) NULL,
	[phone] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[s_id] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[document_name] [varchar](max) NULL,
	[doc_image] [varchar](max) NULL,
	[type] [varchar](max) NULL,
 CONSTRAINT [PK_studentinfo] PRIMARY KEY CLUSTERED 
(
	[student_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[studentinfo] ON
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (1, N'1', N'2/9/2016', N'B+', N'Ashwani Kumar', N'Rajesh Kumar', N'Veera Kumar', N'2015-2016', N'Art', N'First', N'A', N'1', N'3/8/2011', N'Male', N'India', N'Haryana', N'Karnal', N'VPO Kunjpura', N'8529403539', N'sswtashwani@gmail.com', N'sswt', N'ST1368Ed', N'~/img/BALDEEP MUWAL ER.jpg', N'DMC', N'~/img/Industrial content.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (2, N'2', N'2/9/2016', N'AB+', N'Baldeep Sing', N'Ram Chander', N'Roshni Devi', N'2014-2015', N'Art', N'First', N'A', N'1', N'1/26/2010', N'Male', N'India', N'Haryana', N'Karnal', N'VPO Bhullan', N'9050219530', N'sswtbaldeepsingh66@gmail.com', N'sswt', N'ST456dEd', N'~/img/BALDEEP MUWAL ER.jpg', N'10th DMC', N'~/img/Industrial content.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (3, N'3', N'2/9/2016', N'AB+', N'Rahul Verma', N'Satish Verma', N'Sunita Verma', N'2015-2016', N'Commerce', N'Second', N'A', N'1', N'1/10/2010', N'Male', N'India', N'Haryana', N'Karnal', N'Hansi Road', N'8950120556', N'sswtrahulverma21@gmail.com', N'sswt', N'ST446Ed', N'~/img/BALDEEP MUWAL ER.jpg', N'10th DMC', N'~/img/Industrial content.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (4, N'4', N'2/9/2016', N'B+', N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', N'2014-2015', N'Art', N'First', N'A', N'2', N'8/4/2010', N'Male', N'India', N'Haryana', N'Ambala', N'131 Krishna Nagar', N'7404492522', N'sswtkashinchawla@gmail.com', N'sswt', N'ST436Ed', N'~/img/BALDEEP MUWAL ER.jpg', N'10th DMC', N'~/img/Industrial content.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (5, N'5', N'2/8/2016', N'AB', N'Rohit Joshi', N'Thakur Joshi', N'Reena Joshi', N'2015-2016', N'Commerce', N'Second', N'A', N'2', N'11/26/2010', N'Male', N'India', N'Haryana', N'Panipat', N'2820 Vikat Mohalla', N'8950120556', N'sswtrohitjoshi@gmail.com', N'sswt', N'ST434Ed', N'~/img/BALDEEP MUWAL ER.jpg', N'10th DMC', N'~/img/Industrial content.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (6, N'6', N'2/8/2016', N'O+', N'Faizan Khan', N'Ahmad Khan', N'Ruheen Khan', N'2014-2015', N'Art', N'First', N'A', N'3', N'12/1/2010', N'Male', N'India', N'Haryana', N'Ambala', N'Sec 6', N'9034178486', N'sswtfaizankhan@gmail.com', N'sswt', N'ST3434Ed', N'~/img/BALDEEP MUWAL ER.jpg', N'10th DMC', N'~/img/Industrial content.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (7, N'7', N'2/13/2016', N'B+', N'Kevin Chawla', N'Mahinder Chawla', N'Saroj Chawla', N'2013-2014', N'Commerce', N'First', N'A', N'2', N'2/13/2016', N'Male', N'India', N'Haryana', N'Karnal', N'121 Sadar Bazar', N'9050219530', N'sswtkashinchawla@gmail.com', N'Co3192Ed', N'ST1824Ed', N'~/img/1.jpg', N'DMC', N'~/img/Hindi Question IBPS Clerical (Prelims) Mock Test-19 (1).docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (8, N'8', N'2/13/2016', N'B+', N'Rohan Roy', N'Raj Roy', N'Niru Roy', N'2014-2015', N'Art', N'First', N'A', N'4', N'2/12/2016', N'Male', N'India', N'Haryana', N'Panipat', N'131', N'7404492522', N'sswtkashinchawla@gmal.com', N'Co2736Ed', N'ST1368Ed', N'~/img/M.Tech Thesis Design 2.jpg', N'DMC', N'~/img/sswt content plg.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (9, N'9', N'2/15/2016', N'A+', N'Kevin Chawla', N'Rajesh Kumar', N'Usha Rani', N'2015-2016', N'Art', N'Third', N'A', N'4', N'2/15/2016', N'Male', N'India', N'Haryana', N'Ambala', N'131 Krishna Nagar', N'9255265663', N'sswtbaldeepsingh66@gmail.com', N'Co2736Ed', N'ST1368Ed', N'~/img/123345.png', N'DMC', N'~/img/Industrial content.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (11, N'10', N'3/21/2016', N'A+', N'fgdsrf', N'rdsg', N'fsdf', N'2014-2015', N'Art', N'First', N'A', N'5', N'3/15/2016', N'Male', N'India', N'Haryana', N'Karnal', N'sfd', N'7404492522', N'hlgdkkashin@gmail.com', N'Co3192Ed', N'ST1824Ed', N'~/img/1 (Copy).jpg', N'DMC', N'~/img/CRM Module II-Cars-Insurance.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (13, N'10', N'3/16/2016', N'--Select Blood Group--', N'Rahul Sharma', N'efse', N'dsfase', N'2014-2015', N'Commerce', N'Third', N'A', N'5', N'2/29/2016', N'Male', N'Male', N'Male', N'Karnal', N'131 Krishna nagar', N'8950120556', N'sswtbaldeepsingh66@gmail.com', N'Co1368Ed', N'ST912Ed', N'~/img/3.jpg', N'DMC', N'~/img/CRM Module II-Cars-Insurance.docx', N'student')
INSERT [dbo].[studentinfo] ([student_id], [admission_no], [admissiondate], [bloodgroup], [student_name], [father_name], [mother_name], [batch], [stream], [class], [section], [roll_no], [dob], [gender], [country], [state], [city], [address1], [phone], [email], [password], [s_id], [image], [document_name], [doc_image], [type]) VALUES (14, N'10', N'4/6/2016', N'B+', N'Kashin Chawla', N'Mahinder Chawla', N'Saroj Chawla', N'2016-2017', N'Art', N'Tweleth', N'A', N'1', N'4/7/2016', N'Male', N'India', N'Haryana', N'Karnal', N'131 Krishna Nagar Karnal', N'9254492522', N'sswtkashinchawlaa@gmail.com', N'1234', N'ST456Ed', N'~/img/111.jpg', N'DMC', N'~/img/CRM Module II-Cars-Insurance.docx', N'student')
SET IDENTITY_INSERT [dbo].[studentinfo] OFF
/****** Object:  Table [dbo].[state]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[country_id] [varchar](200) NULL,
	[state_name] [varchar](200) NULL,
	[country_name] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[state] ON
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (1, N'65', N'Andhra Pradesh', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (2, N'65', N'Arunachal Pradesh', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (3, N'65', N'Assam', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (4, N'65', N'Bihar', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (5, N'65', N'Chhattisgarh', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (6, N'65', N'Goa', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (7, N'65', N'Gujarat', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (8, N'65', N'Haryana', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (9, N'65', N'Himachal Pradesh', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (10, N'65', N'Jammu and Kashmir', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (11, N'65', N'Jharkhand', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (12, N'65', N'Karnataka', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (13, N'65', N'Kerala', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (14, N'65', N'Madhya Pradesh', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (15, N'65', N'Maharashtra', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (16, N'65', N'Manipur', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (17, N'65', N'Meghalaya', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (18, N'65', N'Mizoram', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (19, N'65', N'Nagaland', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (20, N'65', N'Orissa', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (21, N'65', N'Punjab', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (22, N'65', N'Rajasthan', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (23, N'65', N'Sikkim', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (24, N'65', N'Tamil Nadu', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (25, N'65', N'Telangana ', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (26, N'65', N'Tripura', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (27, N'65', N'Union Territories', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (28, N'65', N'Uttar Pradesh', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (29, N'65', N'Uttarakhand', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (30, N'65', N'Uttaranchal', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (31, N'65', N'West Bengal', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (32, N'65', N'Delhi', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (37, N'65', N'Gujarat', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (36, N'65', N'punjab', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (39, N'65', N'Andhra Pradesh', N'India')
INSERT [dbo].[state] ([pk_id], [country_id], [state_name], [country_name]) VALUES (41, N'65', N'aa11', N'India')
SET IDENTITY_INSERT [dbo].[state] OFF
/****** Object:  Table [dbo].[student_leave]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student_leave](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[reason] [varchar](max) NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[student_leave] ON
INSERT [dbo].[student_leave] ([pk_id], [batch], [stream], [class], [section], [roll_no], [student_name], [date], [reason], [status]) VALUES (1, N'2015-2016', N'Art', N'First', N'A', N'1', N'Ashwani Kumar', N'3/1/2016', N'jghjkfre', N'Approved')
INSERT [dbo].[student_leave] ([pk_id], [batch], [stream], [class], [section], [roll_no], [student_name], [date], [reason], [status]) VALUES (4, N'2016-2017', N'Art', N'Tweleth', N'A', N'1', N'Kashin Chawla', N'4/7/2016', N'dfdfdfdgfdfgdfgfgdfgggggggggggggggggggggg', N'Pending')
SET IDENTITY_INSERT [dbo].[student_leave] OFF
/****** Object:  Table [dbo].[subject_info]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subject_info](
	[subject_id] [int] IDENTITY(1,1) NOT NULL,
	[subject_name] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[teacher] [varchar](max) NULL,
 CONSTRAINT [PK_subject_info] PRIMARY KEY CLUSTERED 
(
	[subject_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[subject_info] ON
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (1, N'Account', N'First', N'A', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (2, N'Sanskrit', N'First', N'A', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (3, N'English', N'First', N'A', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (4, N'Math', N'First', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (5, N'Homescience', N'First', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (6, N'Account', N'Second', N'A', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (7, N'Sanskrit', N'Second', N'A', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (8, N'English', N'Second', N'A', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (9, N'Math', N'Second', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (10, N'Homescience', N'Second', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (11, N'Account', N'Third', N'A', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (12, N'Sanskrit', N'Third', N'A', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (13, N'English', N'Third', N'A', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (14, N'Math', N'Third', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (15, N'Homescience', N'Third', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (16, N'Account', N'Fourth', N'A', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (17, N'Sanskrit', N'Fourth', N'A', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (18, N'English', N'Fourth', N'A', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (19, N'Math', N'Fourth', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (20, N'Homescience', N'Fourth', N'A', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (21, N'Account', N'First', N'B', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (22, N'Sanskrit', N'First', N'B', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (23, N'English', N'First', N'B', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (24, N'Math', N'First', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (25, N'Homescience', N'First', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (26, N'Account', N'Second', N'B', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (27, N'Sanskrit', N'Second', N'B', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (28, N'English', N'Second', N'B', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (29, N'Math', N'Second', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (30, N'Homescience', N'Second', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (31, N'Account', N'Third', N'B', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (32, N'Sanskrit', N'Third', N'B', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (33, N'English', N'Third', N'B', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (34, N'Math', N'Third', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (35, N'Homescience', N'Third', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (36, N'Account', N'Fourth', N'B', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (37, N'Sanskrit', N'Fourth', N'B', N'Kashin Chawla')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (38, N'English', N'Fourth', N'B', N'Baldeep Singh')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (39, N'Math', N'Fourth', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (40, N'Homescience', N'Fourth', N'B', N'Ashu Rana')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (41, N'Sanskrit', N'Tweleth', N'A', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (42, N'History', N'First', N'A', N'Rohit Joshi')
INSERT [dbo].[subject_info] ([subject_id], [subject_name], [class], [section], [teacher]) VALUES (43, N' Account ', N'First', N'A', N'Rohit Joshi')
SET IDENTITY_INSERT [dbo].[subject_info] OFF
/****** Object:  Table [dbo].[syllabus]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[syllabus](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[syllabus] [varchar](max) NULL,
 CONSTRAINT [PK_syllabus] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[syllabus] ON
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (1, N'2014-2015', N'Art', N'Fourth', N'Account', N'')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (3, N'2014-2015', N'Art', N'Fourth', N'Homescience', N'~/img/CRM Module II-Cars-Insurance.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (4, N'2014-2015', N'Art', N'First', N'Homescience', N'~/img/Cloud.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (5, N'2015-2016', N'Commerce', N'First', N'English', N'~/img/Industrial content.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (6, N'2015-2016', N'Commerce', N'First', N'Math', N'~/img/Cloud.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (7, N'2014-2015', N'Art', N'Third', N'Account', N'~/img/Industrial content.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (8, N'2014-2015', N'Art', N'First', N'Account', N'~/img/CRM Module II-Cars-Insurance.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (9, N'2013-2014', N'Commerce', N'First', N'Account', N'~/img/CRM Module II-Cars-Insurance.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (11, N'2016-2017', N'Art', N'Tweleth', N'Sanskrit', N'~/img/CRM Module II-Cars-Insurance.docx')
INSERT [dbo].[syllabus] ([pk_id], [batch], [stream], [class], [subject], [syllabus]) VALUES (12, N'2014-2015', N'Art', N'First', N'English', N'~/img/CRM Module II-Cars-Insurance.docx')
SET IDENTITY_INSERT [dbo].[syllabus] OFF
/****** Object:  Table [dbo].[suplier_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suplier_tbl](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[contact_person] [varchar](100) NULL,
	[mobile] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[tin_no] [varchar](100) NULL,
	[adress] [varchar](200) NULL,
	[description] [varchar](max) NULL,
 CONSTRAINT [PK_suplier_tbl] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[suplier_tbl] ON
INSERT [dbo].[suplier_tbl] ([pk_id], [name], [contact_person], [mobile], [email], [tin_no], [adress], [description]) VALUES (1, N'Rohit Joshi', N'Thakur Dass', N'8950219530', N'rhtjoshi@gmail.com', N'154818', N'sadar bazar karnal', N'Uniform maker')
INSERT [dbo].[suplier_tbl] ([pk_id], [name], [contact_person], [mobile], [email], [tin_no], [adress], [description]) VALUES (2, N'Rohit Joshi', N'Thakur Dass', N'8950219530', N'rhtjoshi@gmail.com', N'111111', N'sadar bazar karnal haryana', N'Uniform maker')
INSERT [dbo].[suplier_tbl] ([pk_id], [name], [contact_person], [mobile], [email], [tin_no], [adress], [description]) VALUES (5, N'Faizan', N'Rahul', N'784574554', N'sswtfaizan@gmail.com', N'873546', N'ghbdj', N'gfdf')
SET IDENTITY_INSERT [dbo].[suplier_tbl] OFF
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[Role_id] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_employee]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_employee](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](200) NULL,
	[LName] [varchar](200) NULL,
	[Email] [varchar](200) NULL,
	[Uname] [varchar](200) NULL,
	[Type] [varchar](200) NULL,
	[Password] [varchar](200) NULL,
	[RoleName] [varchar](200) NULL,
	[Address1] [varchar](max) NULL,
	[Mobile] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[Country] [varchar](200) NULL,
	[PCode] [varchar](200) NULL,
	[date] [varchar](200) NULL,
 CONSTRAINT [PK__tbl_empl__1543595E45BE5BA9] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_allow_priviledges]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_allow_priviledges](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NULL,
	[role_name] [varchar](max) NULL,
	[user_id] [int] NULL,
	[UserName] [varchar](max) NULL,
	[page_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teacher_leave]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher_leave](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[Teacher_id] [varchar](max) NULL,
	[Teacher_name] [varchar](max) NULL,
	[day] [varchar](max) NULL,
	[month] [varchar](max) NULL,
	[year] [varchar](max) NULL,
	[Reason] [varchar](max) NULL,
	[status] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[teacher_leave] ON
INSERT [dbo].[teacher_leave] ([pk_id], [Teacher_id], [Teacher_name], [day], [month], [year], [Reason], [status]) VALUES (1, N'TE768LE', N'Rohit Joshi', N'5', N'March', N'2016', N'Feeling not well', N'Approved')
INSERT [dbo].[teacher_leave] ([pk_id], [Teacher_id], [Teacher_name], [day], [month], [year], [Reason], [status]) VALUES (3, N'TE768LE', N'Rohit Joshi', N'7', N'March', N'2016', N'Feeling not well', N'Approved')
INSERT [dbo].[teacher_leave] ([pk_id], [Teacher_id], [Teacher_name], [day], [month], [year], [Reason], [status]) VALUES (4, N'TE1024LE', N'Kashin Chawla ', N'7', N'March', N'2016', N'Feeling not well', N'Approved')
INSERT [dbo].[teacher_leave] ([pk_id], [Teacher_id], [Teacher_name], [day], [month], [year], [Reason], [status]) VALUES (5, N'TE768LE', N'Rohit Joshi', N'9', N'March', N'2016', N'Feeling not well', N'Approved')
INSERT [dbo].[teacher_leave] ([pk_id], [Teacher_id], [Teacher_name], [day], [month], [year], [Reason], [status]) VALUES (6, N'TE768LE', N'Rohit Joshi', N'11', N'March', N'2016', N'Feeling not well', N'Approved')
INSERT [dbo].[teacher_leave] ([pk_id], [Teacher_id], [Teacher_name], [day], [month], [year], [Reason], [status]) VALUES (8, N'TE512LE', N'Rahul Garg', N'6', N'April', N'2016', N'vhkjhvxkxc', N'Approved')
SET IDENTITY_INSERT [dbo].[teacher_leave] OFF
/****** Object:  Table [dbo].[teacher_info]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher_info](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_no] [varchar](max) NULL,
	[joining_date] [varchar](max) NULL,
	[teacher_name] [varchar](max) NULL,
	[designation] [varchar](max) NULL,
	[father_name] [varchar](max) NULL,
	[gender] [varchar](max) NULL,
	[dob] [varchar](max) NULL,
	[country] [varchar](max) NULL,
	[state] [varchar](max) NULL,
	[city] [varchar](max) NULL,
	[address1] [varchar](max) NULL,
	[mobile] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[maritial_status] [varchar](max) NULL,
	[blood_group] [varchar](max) NULL,
	[total_exp_year] [varchar](max) NULL,
	[total_exp_month] [varchar](max) NULL,
	[experience_detail] [varchar](max) NULL,
	[salary] [varchar](max) NULL,
	[password] [varchar](max) NULL,
	[teacher_tid] [varchar](max) NULL,
	[image] [varchar](max) NULL,
	[type] [varchar](max) NULL,
 CONSTRAINT [PK_teacher_info] PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[teacher_info] ON
INSERT [dbo].[teacher_info] ([teacher_id], [teacher_no], [joining_date], [teacher_name], [designation], [father_name], [gender], [dob], [country], [state], [city], [address1], [mobile], [email], [maritial_status], [blood_group], [total_exp_year], [total_exp_month], [experience_detail], [salary], [password], [teacher_tid], [image], [type]) VALUES (1, N'1', N'2/2/2016', N'Rohit Joshi', N'Senior Lecturer', N'Thakur Joshi', N'Male', N'11/26/1989', N'India', N'Haryana', N'Faridabad', N'Sadar Bazar', N'8950120556', N'sswtrohit1@gmail.com', N'Married', N'AB+', N'2', N'5', N'Experience in computer', N'15000', N'sswt', N'TE768LE', N'~/img/ff07d742-1676-404d-ba70-b2a37b6671dd.jpg', N'teacher')
INSERT [dbo].[teacher_info] ([teacher_id], [teacher_no], [joining_date], [teacher_name], [designation], [father_name], [gender], [dob], [country], [state], [city], [address1], [mobile], [email], [maritial_status], [blood_group], [total_exp_year], [total_exp_month], [experience_detail], [salary], [password], [teacher_tid], [image], [type]) VALUES (2, N'2', N'2/9/2016', N'Kashin Chawla', NULL, N'Mahinder Chawla', N'Male', N'8/4/1992', N'India', N'Haryana', NULL, N'131,Krishna Nagar', N'7404492522', N'sswtkashinchawla@gmail.com', N'Unmarried', N'B+', N'1', N'0', N'Experience in Punjabi', N'13000', N'sswt', N'TE1024LE', N'~/img/ff07d742-1676-404d-ba70-b2a37b6671dd.jpg', N'teacher')
INSERT [dbo].[teacher_info] ([teacher_id], [teacher_no], [joining_date], [teacher_name], [designation], [father_name], [gender], [dob], [country], [state], [city], [address1], [mobile], [email], [maritial_status], [blood_group], [total_exp_year], [total_exp_month], [experience_detail], [salary], [password], [teacher_tid], [image], [type]) VALUES (3, N'3', N'2/9/2016', N'Baldeep Singh', NULL, N'Ram Chander', N'Male', N'2/4/2016', N'India', N'Haryana', NULL, N'VPO Bhullan', N'8574165414', N'sswtbaldeepsingh66@gmail.com', N'Married', N'B+', N'3', N'2', N'Experince in English', N'18000', N'sswt', N'TE512LE', N'~/img/12.jpg', N'teacher')
INSERT [dbo].[teacher_info] ([teacher_id], [teacher_no], [joining_date], [teacher_name], [designation], [father_name], [gender], [dob], [country], [state], [city], [address1], [mobile], [email], [maritial_status], [blood_group], [total_exp_year], [total_exp_month], [experience_detail], [salary], [password], [teacher_tid], [image], [type]) VALUES (4, N'4', N'2/9/2016', N'Ashu Rana', NULL, N'Deepak Rana', N'Male', N'6/23/2015', N'India', N'Haryana', NULL, N'#2820 Vikat Mohalla', N'9050219530', N'sswtkashinchawla@gmail.com', N'Married', N'B+', N'1', N'2', N'Experince in English', N'13000', N'sswt', N'TE1024LE', N'~/img/44cbe015-c56e-4217-870d-6f03d7511b7f.jpg', N'teacher')
INSERT [dbo].[teacher_info] ([teacher_id], [teacher_no], [joining_date], [teacher_name], [designation], [father_name], [gender], [dob], [country], [state], [city], [address1], [mobile], [email], [maritial_status], [blood_group], [total_exp_year], [total_exp_month], [experience_detail], [salary], [password], [teacher_tid], [image], [type]) VALUES (5, N'5', N'2/9/2016', N'Ram Pal', NULL, N'Sohan Lal', N'Male', N'2/10/2016', N'India', N'Haryana', NULL, N'#16-B Prem Nagr', N'9050219530', N'sswtbaldeepsingh66@gmail.com', N'Married', N'B+', N'1', N'2', N'Experience in computer', N'15000', N'sswt', N'TE256LE', N'~/img/logo 3.jpg', N'teacher')
INSERT [dbo].[teacher_info] ([teacher_id], [teacher_no], [joining_date], [teacher_name], [designation], [father_name], [gender], [dob], [country], [state], [city], [address1], [mobile], [email], [maritial_status], [blood_group], [total_exp_year], [total_exp_month], [experience_detail], [salary], [password], [teacher_tid], [image], [type]) VALUES (7, N'6', N'4/6/2016', N'Rahul Garg', N'Sanskrit', N'Vinod Garg', N'Male', N'6/11/2016', N'India', N'Haryana', N'Karnal', N'SCO 13 Mugal Canal', N'7404492522', N'sswtrohit@gmail.com', N'Married', N'B+', N'4', N'2', N'Experience in computer', N'19500', N'sswt', N'TE512LE', N'~/img/3.jpg', N'teacher')
SET IDENTITY_INSERT [dbo].[teacher_info] OFF
/****** Object:  Table [dbo].[timetable]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[timetable](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[batch] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[teacher_name] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[day] [varchar](max) NULL,
	[startingtime] [varchar](max) NULL,
	[endingtime] [varchar](max) NULL,
 CONSTRAINT [PK_timetable] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[timetable] ON
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (1, N'2014-2015', N'Art', N'First', N'A', N'Rohit Joshi', N'Account', N'Monday', N'9:00AM', N'10:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (2, N'2014-2015', N'Art', N'First', N'A', N'Kashin Chawla', N'Sanskrit', N'Monday', N'10:00AM', N'11:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (3, N'2014-2015', N'Art', N'First', N'A', N'Baldeep Singh', N'English', N'Monday', N'11:00AM', N'12:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (4, N'2014-2015', N'Art', N'First', N'A', N'Ashu Rana', N'Math', N'Monday', N'12:00PM', N'1:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (5, N'2014-2015', N'Art', N'First', N'A', N'Ram Pal', N'Homescience', N'Monday', N'1:00PM', N'2:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (6, N'2014-2015', N'Art', N'First', N'A', N'Rohit Joshi', N'English', N'Tuesday', N'9:00AM', N'10:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (7, N'2014-2015', N'Art', N'First', N'A', N'Kashin Chawla', N'Math', N'Tuesday', N'10:00AM', N'11:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (8, N'2014-2015', N'Art', N'First', N'A', N'Baldeep Singh', N'Account', N'Tuesday', N'11:00AM', N'12:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (9, N'2014-2015', N'Art', N'First', N'A', N'Ashu Rana', N'Sanskrit', N'Tuesday', N'12:00PM', N'1:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (10, N'2014-2015', N'Art', N'First', N'A', N'Ram Pal', N'Homescience', N'Tuesday', N'1:00PM', N'2:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (11, N'2014-2015', N'Art', N'First', N'A', N'Rohit Joshi', N'Account', N'Wednesday', N'9:00AM', N'10:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (12, N'2014-2015', N'Art', N'First', N'A', N'Kashin Chawla', N'Sanskrit', N'Wednesday', N'10:00AM', N'11:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (13, N'2014-2015', N'Art', N'First', N'A', N'Baldeep Singh', N'English', N'Wednesday', N'11:00AM', N'12:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (14, N'2014-2015', N'Art', N'First', N'A', N'Ashu Rana', N'Math', N'Wednesday', N'12:00PM', N'1:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (15, N'2014-2015', N'Art', N'First', N'A', N'Ram Pal', N'Homescience', N'Wednesday', N'1:00PM', N'2:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (16, N'2014-2015', N'Art', N'First', N'A', N'Rohit Joshi', N'English', N'Thrusday', N'9:00AM', N'10:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (17, N'2014-2015', N'Art', N'First', N'A', N'Kashin Chawla', N'Math', N'Thrusday', N'10:00AM', N'11:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (18, N'2014-2015', N'Art', N'First', N'A', N'Baldeep Singh', N'Account', N'Thrusday', N'11:00AM', N'12:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (19, N'2014-2015', N'Art', N'First', N'A', N'Ashu Rana', N'Sanskrit', N'Thrusday', N'12:00PM', N'1:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (20, N'2014-2015', N'Art', N'First', N'A', N'Ram Pal', N'Homescience', N'Thrusday', N'1:00PM', N'2:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (21, N'2013-2014', N'Commerce', N'Fourth', N'A', N'Rohit Joshi', N'Account', N'Sunday', N'10:00AM', N'11:00PM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (22, N'2016-2017', N'Art', N'Tweleth', N'A', N'Rohit Joshi', N'Sanskrit', N'Monday', N'12:00AM', N'1:00AM')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (23, N'2014-2015', N'Art', N'First', N'A', N'Rohit Joshi', N'Account', N'Sunday', N'11:00', N'2:00')
INSERT [dbo].[timetable] ([pk_id], [batch], [stream], [class], [section], [teacher_name], [subject], [day], [startingtime], [endingtime]) VALUES (24, N'2014-2015', N'Art', N'First', N'A', N'Rohit Joshi', N'Sanskrit', N'Monday', N'1:00', N'2:00')
SET IDENTITY_INSERT [dbo].[timetable] OFF
/****** Object:  Table [dbo].[teacherdailyattendance]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacherdailyattendance](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_id] [varchar](max) NULL,
	[teacher_name] [varchar](max) NULL,
	[date] [varchar](max) NULL,
	[month] [varchar](max) NULL,
	[year] [varchar](max) NULL,
	[status] [varchar](max) NULL,
 CONSTRAINT [PK_teacherdailyattendance] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[teacherdailyattendance] ON
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (62, N'TE768LE', N'Rohit Joshi', N'1', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (63, N'TE1024LE', N'Kashin Chawla', N'1', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (64, N'TE512LE', N'Baldeep Singh', N'1', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (65, N'TE1024LE', N'Ashu Rana', N'1', N'March', N'2016', N'Absent')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (66, N'TE256LE', N'Ram Pal', N'1', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (72, N'TE768LE', N'Rohit Joshi', N'2', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (73, N'TE1024LE', N'Kashin Chawla', N'2', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (74, N'TE512LE', N'Baldeep Singh', N'2', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (75, N'TE1024LE', N'Ashu Rana', N'2', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (76, N'TE256LE', N'Ram Pal', N'2', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (77, N'TE768LE', N'Rohit Joshi', N'3', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (78, N'TE1024LE', N'Kashin Chawla', N'3', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (79, N'TE512LE', N'Baldeep Singh', N'3', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (80, N'TE1024LE', N'Ashu Rana', N'3', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (81, N'TE256LE', N'Ram Pal', N'3', N'March', N'2016', N'Absent')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (82, N'TE768LE', N'Rohit Joshi', N'4', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (83, N'TE1024LE', N'Kashin Chawla', N'4', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (84, N'TE512LE', N'Baldeep Singh', N'4', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (85, N'TE1024LE', N'Ashu Rana', N'4', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (86, N'TE256LE', N'Ram Pal', N'4', N'March', N'2016', N'Absent')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (87, N'TE768LE', N'Rohit Joshi', N'5', N'March', N'2016', N'Absent')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (88, N'TE1024LE', N'Kashin Chawla', N'5', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (89, N'TE512LE', N'Baldeep Singh', N'5', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (90, N'TE1024LE', N'Ashu Rana', N'5', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (91, N'TE256LE', N'Ram Pal', N'5', N'March', N'2016', N'Absent')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (92, N'TE768LE', N'Rohit Joshi', N'6', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (93, N'TE1024LE', N'Kashin Chawla', N'6', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (94, N'TE512LE', N'Baldeep Singh', N'6', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (95, N'TE1024LE', N'Ashu Rana', N'6', N'March', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (96, N'TE256LE', N'Ram Pal', N'6', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (97, N'TE768LE', N'Rohit Joshi', N'7', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (98, N'TE768LE', N'Rohit Joshi', N'8', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (99, N'TE768LE', N'Rohit Joshi', N'9', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (100, N'TE768LE', N'Rohit Joshi', N'10', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (101, N'TE768LE', N'Rohit Joshi', N'11', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (102, N'TE768LE', N'Rohit Joshi', N'12', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (103, N'TE768LE', N'Rohit Joshi', N'13', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (104, N'TE768LE', N'Rohit Joshi', N'14', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (105, N'TE768LE', N'Rohit Joshi', N'15', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (106, N'TE768LE', N'Rohit Joshi', N'16', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (107, N'TE768LE', N'Rohit Joshi', N'17', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (108, N'TE768LE', N'Rohit Joshi', N'18', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (109, N'TE768LE', N'Rohit Joshi', N'19', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (110, N'TE768LE', N'Rohit Joshi', N'20', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (111, N'TE768LE', N'Rohit Joshi', N'21', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (112, N'TE768LE', N'Rohit Joshi', N'22', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (113, N'TE768LE', N'Rohit Joshi', N'23', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (114, N'TE768LE', N'Rohit Joshi', N'24', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (115, N'TE768LE', N'Rohit Joshi', N'25', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (116, N'TE768LE', N'Rohit Joshi', N'26', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (117, N'TE768LE', N'Rohit Joshi', N'27', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (118, N'TE768LE', N'Rohit Joshi', N'28', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (119, N'TE768LE', N'Rohit Joshi', N'29', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (120, N'TE768LE', N'Rohit Joshi', N'30', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (121, N'TE768LE', N'Rohit Joshi', N'2', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (122, N'TE1024LE', N'Kashin Chawla', N'2', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (123, N'TE512LE', N'Baldeep Singh', N'2', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (124, N'TE1024LE', N'Ashu Rana', N'2', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (125, N'TE256LE', N'Ram Pal', N'2', N'March', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (126, N'TE768LE', N'Rohit Joshi', N'6', N'April', N'2016', N'Leave')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (127, N'TE1024LE', N'Kashin Chawla', N'6', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (128, N'TE512LE', N'Baldeep Singh', N'6', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (129, N'TE1024LE', N'Ashu Rana', N'6', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (130, N'TE256LE', N'Ram Pal', N'6', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (131, N'TE512LE', N'Rahul Garg', N'6', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (132, N'TE768LE', N'Rohit Joshi', N'4', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (133, N'TE1024LE', N'Kashin Chawla', N'4', N'April', N'2016', N'Absent')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (134, N'TE512LE', N'Baldeep Singh', N'4', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (135, N'TE1024LE', N'Ashu Rana', N'4', N'April', N'2016', N'Absent')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (136, N'TE256LE', N'Ram Pal', N'4', N'April', N'2016', N'Present')
INSERT [dbo].[teacherdailyattendance] ([pk_id], [teacher_id], [teacher_name], [date], [month], [year], [status]) VALUES (137, N'TE512LE', N'Rahul Garg', N'4', N'April', N'2016', N'Present')
SET IDENTITY_INSERT [dbo].[teacherdailyattendance] OFF
/****** Object:  Table [dbo].[teacher_review]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher_review](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_name] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[roll_no] [int] NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[review_date] [varchar](max) NULL,
	[review] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teacher_day_tbl]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher_day_tbl](
	[day_id] [int] IDENTITY(1,1) NOT NULL,
	[day] [int] NULL,
	[teacher_name] [varchar](max) NULL,
	[teacher_tid] [varchar](max) NULL,
 CONSTRAINT [PK_teacher_day_tbl] PRIMARY KEY CLUSTERED 
(
	[day_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[teacher_day_tbl] ON
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (1, 1, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (2, 2, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (3, 3, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (4, 4, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (5, 5, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (6, 6, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (7, 7, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (8, 8, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (9, 9, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (10, 10, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (11, 11, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (12, 12, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (13, 13, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (14, 14, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (15, 15, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (16, 16, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (17, 17, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (18, 18, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (19, 19, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (20, 20, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (21, 21, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (22, 22, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (23, 23, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (24, 24, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (25, 25, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (26, 26, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (27, 27, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (28, 28, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (29, 29, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (30, 30, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (31, 31, N'Rohit Joshi', N'TE768LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (32, 1, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (33, 2, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (34, 3, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (35, 4, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (36, 5, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (37, 6, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (38, 7, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (39, 8, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (40, 9, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (41, 10, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (42, 11, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (43, 12, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (44, 13, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (45, 14, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (46, 15, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (47, 16, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (48, 17, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (49, 18, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (50, 19, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (51, 20, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (52, 21, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (53, 22, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (54, 23, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (55, 24, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (56, 25, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (57, 26, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (58, 27, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (59, 28, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (60, 29, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (61, 30, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (62, 31, N'Kashin Chawla', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (63, 1, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (64, 2, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (65, 3, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (66, 4, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (67, 5, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (68, 6, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (69, 7, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (70, 8, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (71, 9, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (72, 10, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (73, 11, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (74, 12, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (75, 13, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (76, 14, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (77, 15, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (78, 16, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (79, 17, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (80, 18, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (81, 19, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (82, 20, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (83, 21, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (84, 22, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (85, 23, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (86, 24, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (87, 25, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (88, 26, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (89, 27, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (90, 28, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (91, 29, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (92, 30, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (93, 31, N'Baldeep Singh', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (94, 1, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (95, 2, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (96, 3, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (97, 4, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (98, 5, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (99, 6, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (100, 7, N'Ashu Rana', N'TE1024LE')
GO
print 'Processed 100 total records'
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (101, 8, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (102, 9, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (103, 10, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (104, 11, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (105, 12, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (106, 13, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (107, 14, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (108, 15, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (109, 16, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (110, 17, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (111, 18, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (112, 19, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (113, 20, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (114, 21, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (115, 22, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (116, 23, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (117, 24, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (118, 25, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (119, 26, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (120, 27, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (121, 28, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (122, 29, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (123, 30, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (124, 31, N'Ashu Rana', N'TE1024LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (125, 1, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (126, 2, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (127, 3, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (128, 4, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (129, 5, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (130, 6, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (131, 7, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (132, 8, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (133, 9, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (134, 10, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (135, 11, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (136, 12, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (137, 13, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (138, 14, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (139, 15, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (140, 16, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (141, 17, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (142, 18, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (143, 19, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (144, 20, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (145, 21, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (146, 22, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (147, 23, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (148, 24, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (149, 25, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (150, 26, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (151, 27, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (152, 28, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (153, 29, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (154, 30, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (155, 31, N'Ram Pal', N'TE256LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (156, 1, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (157, 2, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (158, 3, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (159, 4, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (160, 5, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (161, 6, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (162, 7, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (163, 8, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (164, 9, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (165, 10, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (166, 11, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (167, 12, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (168, 13, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (169, 14, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (170, 15, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (171, 16, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (172, 17, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (173, 18, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (174, 19, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (175, 20, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (176, 21, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (177, 22, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (178, 23, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (179, 24, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (180, 25, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (181, 26, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (182, 27, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (183, 28, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (184, 29, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (185, 30, N'Rahul Garg', N'TE512LE')
INSERT [dbo].[teacher_day_tbl] ([day_id], [day], [teacher_name], [teacher_tid]) VALUES (186, 31, N'Rahul Garg', N'TE512LE')
SET IDENTITY_INSERT [dbo].[teacher_day_tbl] OFF
/****** Object:  Table [dbo].[teacher_attandence]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teacher_attandence](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[day] [int] NULL,
	[teacher_name] [varchar](max) NULL,
	[teacher_tid] [varchar](max) NULL,
	[month] [varchar](max) NULL,
	[year] [varchar](max) NULL,
	[status] [varchar](max) NULL,
 CONSTRAINT [PK_teacher_attandence] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[teacher_attandence] ON
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (1, 1, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (2, 2, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (3, 3, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (4, 4, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (5, 5, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (6, 6, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (7, 7, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (8, 8, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (9, 9, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (10, 10, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (11, 11, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (12, 12, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (13, 13, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (14, 14, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (15, 15, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (16, 16, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (17, 17, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (18, 18, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (19, 19, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (20, 20, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (21, 21, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (22, 22, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (23, 23, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (24, 24, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (25, 25, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (26, 26, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (27, 27, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (28, 28, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (29, 29, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (30, 1, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (31, 2, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (32, 3, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (33, 4, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (34, 5, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (35, 6, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (36, 7, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (37, 8, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (38, 9, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (39, 10, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (40, 11, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (41, 12, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (42, 13, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (43, 14, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (44, 15, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (45, 16, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (46, 17, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (47, 18, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (48, 19, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (49, 20, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (50, 21, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (51, 22, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (52, 23, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (53, 24, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (54, 25, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (55, 26, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (56, 27, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (57, 28, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (58, 29, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (59, 1, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (60, 2, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (61, 3, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (62, 4, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (63, 5, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (64, 6, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (65, 7, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (66, 8, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (67, 9, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (68, 10, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (69, 11, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (70, 12, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (71, 13, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (72, 14, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (73, 15, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (74, 16, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (75, 17, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (76, 18, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (77, 19, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (78, 20, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (79, 21, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (80, 22, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (81, 23, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (82, 24, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (83, 25, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (84, 26, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (85, 27, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (86, 28, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (87, 29, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (88, 1, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (89, 2, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (90, 3, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (91, 4, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (92, 5, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (93, 6, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (94, 7, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (95, 8, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (96, 9, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (97, 10, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (98, 11, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (99, 12, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (100, 13, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
GO
print 'Processed 100 total records'
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (101, 14, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (102, 15, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (103, 16, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (104, 17, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (105, 18, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (106, 19, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (107, 20, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (108, 21, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (109, 22, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (110, 23, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (111, 24, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (112, 25, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (113, 26, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (114, 27, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (115, 28, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (116, 29, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (117, 1, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (118, 2, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (119, 3, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (120, 4, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (121, 5, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (122, 6, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (123, 7, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (124, 8, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (125, 9, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (126, 10, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (127, 11, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (128, 12, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (129, 13, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (130, 14, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (131, 15, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (132, 16, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (133, 17, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (134, 18, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (135, 19, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (136, 20, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (137, 21, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (138, 22, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (139, 23, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (140, 24, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (141, 25, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (142, 26, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (143, 27, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (144, 28, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (145, 29, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (146, 1, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (147, 2, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (148, 3, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (149, 4, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (150, 5, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (151, 6, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (152, 7, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (153, 8, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (154, 9, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (155, 10, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (156, 11, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (157, 12, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (158, 13, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (159, 14, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (160, 15, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (161, 16, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (162, 17, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (163, 18, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (164, 19, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (165, 20, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (166, 21, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (167, 22, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (168, 23, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (169, 24, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (170, 25, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (171, 26, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (172, 27, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (173, 28, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (174, 29, N'Rohit Joshi', N'TE768LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (175, 1, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (176, 2, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (177, 3, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (178, 4, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (179, 5, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (180, 6, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (181, 7, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (182, 8, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (183, 9, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (184, 10, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (185, 11, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (186, 12, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (187, 13, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (188, 14, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (189, 15, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (190, 16, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (191, 17, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (192, 18, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (193, 19, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (194, 20, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (195, 21, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (196, 22, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (197, 23, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (198, 24, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (199, 25, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (200, 26, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (201, 27, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
GO
print 'Processed 200 total records'
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (202, 28, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (203, 29, N'Kashin Chawla', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (204, 1, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (205, 2, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (206, 3, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (207, 4, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (208, 5, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (209, 6, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (210, 7, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (211, 8, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (212, 9, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (213, 10, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (214, 11, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (215, 12, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (216, 13, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (217, 14, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (218, 15, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (219, 16, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (220, 17, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (221, 18, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (222, 19, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (223, 20, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (224, 21, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (225, 22, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (226, 23, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (227, 24, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (228, 25, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (229, 26, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (230, 27, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (231, 28, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (232, 29, N'Baldeep Singh', N'TE512LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (233, 1, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (234, 2, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (235, 3, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (236, 4, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (237, 5, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (238, 6, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (239, 7, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (240, 8, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (241, 9, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (242, 10, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (243, 11, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (244, 12, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (245, 13, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (246, 14, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (247, 15, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (248, 16, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (249, 17, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (250, 18, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (251, 19, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (252, 20, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (253, 21, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (254, 22, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (255, 23, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (256, 24, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (257, 25, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (258, 26, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (259, 27, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (260, 28, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (261, 29, N'Ashu Rana', N'TE1024LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (262, 1, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (263, 2, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (264, 3, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (265, 4, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (266, 5, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (267, 6, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (268, 7, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (269, 8, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (270, 9, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (271, 10, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (272, 11, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (273, 12, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (274, 13, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (275, 14, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (276, 15, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (277, 16, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (278, 17, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (279, 18, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (280, 19, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (281, 20, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (282, 21, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (283, 22, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (284, 23, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (285, 24, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (286, 25, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (287, 26, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (288, 27, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (289, 28, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (290, 29, N'Ram Pal', N'TE256LE', N'2', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (291, 1, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (292, 2, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (293, 3, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (294, 4, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (295, 5, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (296, 6, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (297, 7, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (298, 8, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (299, 9, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (300, 10, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (301, 11, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (302, 12, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
GO
print 'Processed 300 total records'
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (303, 13, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (304, 14, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (305, 15, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (306, 16, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (307, 17, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (308, 18, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (309, 19, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (310, 20, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (311, 21, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (312, 22, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (313, 23, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (314, 24, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (315, 25, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (316, 26, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (317, 27, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (318, 28, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (319, 29, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (320, 30, N'Rohit Joshi', N'TE768LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (321, 1, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (322, 2, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (323, 3, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (324, 4, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (325, 5, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (326, 6, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (327, 7, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (328, 8, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (329, 9, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (330, 10, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (331, 11, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (332, 12, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (333, 13, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (334, 14, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (335, 15, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (336, 16, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (337, 17, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (338, 18, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (339, 19, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (340, 20, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (341, 21, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (342, 22, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (343, 23, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (344, 24, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (345, 25, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (346, 26, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (347, 27, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (348, 28, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (349, 29, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (350, 30, N'Kashin Chawla', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (351, 1, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (352, 2, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (353, 3, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (354, 4, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (355, 5, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (356, 6, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (357, 7, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (358, 8, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (359, 9, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (360, 10, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (361, 11, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (362, 12, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (363, 13, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (364, 14, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (365, 15, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (366, 16, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (367, 17, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (368, 18, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (369, 19, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (370, 20, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (371, 21, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (372, 22, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (373, 23, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (374, 24, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (375, 25, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (376, 26, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (377, 27, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (378, 28, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (379, 29, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (380, 30, N'Baldeep Singh', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (381, 1, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (382, 2, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (383, 3, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (384, 4, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (385, 5, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (386, 6, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (387, 7, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (388, 8, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (389, 9, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (390, 10, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (391, 11, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (392, 12, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (393, 13, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (394, 14, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (395, 15, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (396, 16, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (397, 17, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (398, 18, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (399, 19, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (400, 20, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (401, 21, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (402, 22, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (403, 23, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
GO
print 'Processed 400 total records'
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (404, 24, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (405, 25, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (406, 26, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (407, 27, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (408, 28, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (409, 29, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (410, 30, N'Ashu Rana', N'TE1024LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (411, 1, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (412, 2, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (413, 3, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (414, 4, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (415, 5, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (416, 6, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (417, 7, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (418, 8, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (419, 9, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (420, 10, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (421, 11, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (422, 12, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (423, 13, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (424, 14, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (425, 15, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (426, 16, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (427, 17, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (428, 18, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (429, 19, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (430, 20, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (431, 21, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (432, 22, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (433, 23, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (434, 24, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (435, 25, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (436, 26, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (437, 27, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (438, 28, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (439, 29, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (440, 30, N'Ram Pal', N'TE256LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (441, 1, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (442, 2, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (443, 3, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (444, 4, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (445, 5, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (446, 6, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (447, 7, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (448, 8, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (449, 9, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (450, 10, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (451, 11, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (452, 12, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (453, 13, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (454, 14, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (455, 15, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (456, 16, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (457, 17, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (458, 18, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (459, 19, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (460, 20, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (461, 21, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (462, 22, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (463, 23, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (464, 24, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (465, 25, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (466, 26, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (467, 27, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (468, 28, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (469, 29, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Present')
INSERT [dbo].[teacher_attandence] ([pk_id], [day], [teacher_name], [teacher_tid], [month], [year], [status]) VALUES (470, 30, N'Rahul Garg', N'TE512LE', N'4', N'2016', N'Absent')
SET IDENTITY_INSERT [dbo].[teacher_attandence] OFF
/****** Object:  Table [dbo].[vendor]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vendor](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NULL,
	[contact_no] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[address] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[vendor] ON
INSERT [dbo].[vendor] ([pk_id], [name], [contact_no], [email], [address]) VALUES (1, N'Kashin', N'7404492522', N'sswtkashinchawla@gmail.com', N'SCO 13-14,2nd Floor Mugal Canal Karnal(132001)')
INSERT [dbo].[vendor] ([pk_id], [name], [contact_no], [email], [address]) VALUES (2, N'Rahul', N'9254546542', N'sswtrahulverma21@gmail.com', N'Hansi Chownk Gali no 9 Karnal(132001)')
INSERT [dbo].[vendor] ([pk_id], [name], [contact_no], [email], [address]) VALUES (4, N'Faizan Khan', N'8945512565', N'sswtfaizan@gmail.com', N'131,Krishna Nagar Karnal')
SET IDENTITY_INSERT [dbo].[vendor] OFF
/****** Object:  Table [dbo].[return_book_data]    Script Date: 07/01/2016 14:05:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[return_book_data](
	[return_id] [int] IDENTITY(1,1) NOT NULL,
	[isbn_no] [varchar](max) NULL,
	[book_name] [varchar](max) NULL,
	[book_category] [varchar](max) NULL,
	[author] [varchar](max) NULL,
	[edition] [varchar](max) NULL,
	[book_vendor] [varchar](max) NULL,
	[holder_type] [varchar](max) NULL,
	[card_no] [varchar](max) NULL,
	[teacher_name] [varchar](max) NULL,
	[student_name] [varchar](max) NULL,
	[batch] [varchar](max) NULL,
	[class] [varchar](max) NULL,
	[section] [varchar](max) NULL,
	[roll_no] [varchar](max) NULL,
	[stream] [varchar](max) NULL,
	[cope] [varchar](max) NULL,
	[issue_date] [varchar](max) NULL,
	[return_date] [varchar](max) NULL,
	[fine_day] [varchar](max) NULL,
	[fine] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[return_book_data] ON
INSERT [dbo].[return_book_data] ([return_id], [isbn_no], [book_name], [book_category], [author], [edition], [book_vendor], [holder_type], [card_no], [teacher_name], [student_name], [batch], [class], [section], [roll_no], [stream], [cope], [issue_date], [return_date], [fine_day], [fine]) VALUES (1, N'4544543212', N'Numerical and Statistical Computing', N'Technology', N'Hajime Sorayama', N'2nd Edition', N'Kashin', N'Student', N'14274068', N'', N'', N'2015-2016', N'First', N'A', N'1', N'Art', N'1', N'2/9/2016', N'2/9/2016', N'0', N'0')
INSERT [dbo].[return_book_data] ([return_id], [isbn_no], [book_name], [book_category], [author], [edition], [book_vendor], [holder_type], [card_no], [teacher_name], [student_name], [batch], [class], [section], [roll_no], [stream], [cope], [issue_date], [return_date], [fine_day], [fine]) VALUES (2, N'4544543212', N'Numerical and Statistical Computing', N'Technology', N'Hajime Sorayama', N'2nd Edition', N'Kashin', N'Employee', N'14228390', N'', N',', N',', N',', N',', N',', N',', N'1', N'3/3/2016', N'25/03/2016', N'8', N'16')
INSERT [dbo].[return_book_data] ([return_id], [isbn_no], [book_name], [book_category], [author], [edition], [book_vendor], [holder_type], [card_no], [teacher_name], [student_name], [batch], [class], [section], [roll_no], [stream], [cope], [issue_date], [return_date], [fine_day], [fine]) VALUES (3, N'45311802412 ', N'Data Base Management System', N'Technology', N'JAMES MARTIN', N'THIRD EDITION', N'Kashin', N'Student', N'14319746', N'', N'', N'2014-2015', N'First', N'A', N'2', N'Art', N'1', N'3/3/2016', N'18/03/2016', N'1', N'2')
INSERT [dbo].[return_book_data] ([return_id], [isbn_no], [book_name], [book_category], [author], [edition], [book_vendor], [holder_type], [card_no], [teacher_name], [student_name], [batch], [class], [section], [roll_no], [stream], [cope], [issue_date], [return_date], [fine_day], [fine]) VALUES (4, N'45222716012 ', N'Batman', N'Comics', N'Luis Frerro', N'2nd', N'Faizan Khan', N'Student', N'14456782', N'', N'', N'2016-2017', N'Tweleth', N'A', N'1', N'Art', N'1', N'06/04/2016', N'04/30/2016', N'42', N'84')
INSERT [dbo].[return_book_data] ([return_id], [isbn_no], [book_name], [book_category], [author], [edition], [book_vendor], [holder_type], [card_no], [teacher_name], [student_name], [batch], [class], [section], [roll_no], [stream], [cope], [issue_date], [return_date], [fine_day], [fine]) VALUES (5, N'45222716012', N'Batman', N'Comics', N'Luis Frerro', N'2nd', N'Faizan Khan', N'Student', N'1445678', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[return_book_data] ([return_id], [isbn_no], [book_name], [book_category], [author], [edition], [book_vendor], [holder_type], [card_no], [teacher_name], [student_name], [batch], [class], [section], [roll_no], [stream], [cope], [issue_date], [return_date], [fine_day], [fine]) VALUES (6, N'45222716012', N'Batman', N'Comics', N'Luis Frerro', N'2nd', N'Faizan Khan', N'Student', N'14456782', N'', N'', N'2016-2017', N'Tweleth', N'A', N'1', N'Art', N'1', N'06/04/2016', N'05/11/2016', N'23', N'46')
INSERT [dbo].[return_book_data] ([return_id], [isbn_no], [book_name], [book_category], [author], [edition], [book_vendor], [holder_type], [card_no], [teacher_name], [student_name], [batch], [class], [section], [roll_no], [stream], [cope], [issue_date], [return_date], [fine_day], [fine]) VALUES (7, N'45311802412', N'Data Base Management System', N'Technology', N'JAMES MARTIN', N'THIRD EDITION', N'Kashin', N'Employee', N'14228390', N'', N'', N'', N'', N'', N'', N'', N'1', N'3/3/2016', N'05/17/2016', N'31', N'62')
SET IDENTITY_INSERT [dbo].[return_book_data] OFF
/****** Object:  StoredProcedure [dbo].[admin_add_complaint_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[admin_add_complaint_dlt_proc]
@action varchar(max),
@pk_id int
AS
if @action='delete'
begin
delete from admin_add_complaint where pk_id=@pk_id
end

if @action='show'
begin
select * from admin_add_complaint
end

if @action='select'
begin
select * from admin_add_complaint where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[vendor_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[vendor_proc]
@action varchar(max),
@pk_id int,
@name varchar(max),
@contact_no varchar(max),
@email varchar(max),
@address  varchar(max)

AS

if @action='insert'
begin
insert into vendor values(@name,@contact_no,@email,@address)
end

if @action='update'
begin
update vendor set name=@name,contact_no=@contact_no,email=@email,address=@address where pk_id=@pk_id
end

if @action='vendors'
begin
Select count(*) as count from vendor
end

if @action='exist'
begin
select * from vendor where name=@name and email=@email 
end
GO
/****** Object:  StoredProcedure [dbo].[vendor_event_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[vendor_event_proc]
@action varchar(max),
@pk_id int
AS

if @action='select'
begin
select * from vendor where pk_id=@pk_id
end

if @action='show'
begin
select * from vendor
end

if @action='delete'
begin
delete from vendor where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[quizsection_dlt]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[quizsection_dlt]
@action varchar(max)
,@pk_id int
as
if @action='select'
begin
select * from quiz_section where pk_id=@pk_id
end
if @action='show'
begin
select * from quiz_section
end

if @action='delete'
begin
delete from quiz_section where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[quizsection]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[quizsection]
@action varchar(max)
,@pk_id int
,@section varchar(max)
as
if @action='insert'
begin
insert into quiz_section values(@section)
end

if @action='update'
begin
update quiz_section set section=@section where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[timetable_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[timetable_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from timetable where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from timetable where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from timetable 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[timetable_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[timetable_proc]
@action varchar(10)
,@pk_id int
,@batch varchar(max)
,@stream varchar(max)
,@class varchar(max)
,@section varchar(max)
,@teacher_name varchar(max)
,@subject varchar(max)
,@day varchar(max)
,@startingtime varchar(max)
,@endingtime varchar(max)

as

		-----insert
		if @action='insert'
		begin
		insert into timetable values(@batch,@stream,@class,@section,@teacher_name,@subject,@day,@startingtime,@endingtime)
		end
		
		-----update
		if @action='Update'
		begin
		Update timetable set @batch=batch,stream=@stream,class=@class,section=@section,teacher_name=@teacher_name,subject=@subject,day=@day,startingtime=@startingtime,endingtime=@endingtime where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[teacher_attanddlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[teacher_attanddlt_proc]
@action varchar(max),
@pk_id int

AS

if @action='deete'
begin
delete from teacher_attandence where pk_id=@pk_id
end

if @action='show'
begin
select * from teacher_attandence
end

if @action='select'
begin
select * from teacher_attandence where pk_id=@pk_id
end
GO
/****** Object:  View [dbo].[teach_tdaytbl_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[teach_tdaytbl_view]
AS 
SELECT  teacher_day_tbl.day,teacher_day_tbl.teacher_name,teacher_day_tbl.teacher_tid,
teacher_info.email,teacher_info.password
 from dbo.teacher_day_tbl    
  INNER JOIN

 dbo.teacher_info
 ON dbo.teacher_day_tbl.teacher_name=dbo.teacher_info.teacher_name
GO
/****** Object:  StoredProcedure [dbo].[teacher_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[teacher_proc]
@action varchar(max),
@teacher_id int,
@teacher_no varchar(max),
@joining_date varchar(max),
@designation varchar(max),
@teacher_name varchar(max),
@father_name varchar(max),
@gender varchar(max),
@dob varchar(max),
@country varchar(max),
@state varchar(max),
@city varchar(max),
@address1 varchar(max),
@mobile varchar(max),
@email varchar(max),
@maritial_status varchar(max),
@blood_group varchar(max),
@total_exp_year varchar(max),
@total_exp_month varchar(max),
@experience_detail varchar(max),
@salary varchar(max),
@password varchar(max),
@teacher_tid varchar(max),
@image varchar(max),
@type varchar(max)
AS
if @action='insert'
begin
    insert into teacher_info values(@teacher_no,@joining_date,@teacher_name,@designation,@father_name,@gender,@dob,@country,@state,@city,@address1,@mobile,@email,@maritial_status,@blood_group,@total_exp_year,@total_exp_month,@experience_detail,@salary,@password,@teacher_tid,@image,@type)
end

if @action='update'
begin
    update teacher_info set teacher_no=@teacher_no,joining_date=@joining_date,teacher_name=@teacher_name,designation=@designation,father_name=@father_name,gender=@gender,dob=@dob,country=@country,state=@state,city=@city
    ,address1=@address1,mobile=@mobile,email=@email,maritial_status=@maritial_status,blood_group=@blood_group,total_exp_year=@total_exp_year,total_exp_month=@total_exp_month,
    experience_detail=@experience_detail,salary=@salary,password=@password,teacher_tid=@teacher_tid,image=@image where teacher_id=@teacher_id
end
GO
/****** Object:  StoredProcedure [dbo].[teacher_leave_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[teacher_leave_proc]
@action varchar(max),
@pk_id int,
@Teacher_id varchar(max),
@Teacher_name varchar(max),
@day varchar(max),
@month varchar(max),
@year varchar(max),
@Reason varchar(max),
@status varchar(max)

AS

if @action='insert'
begin
insert into teacher_leave values(@Teacher_id,@Teacher_name,@day,@month,@year,@Reason,@status)
end

if @action='update'
begin
update teacher_leave set Teacher_id=@Teacher_id,Teacher_name=@Teacher_name,day=@day,month=@month,year=@year,Reason=@Reason, status=@status where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[teacher_leave_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[teacher_leave_dlt_proc]
@action varchar(max),
@pk_id int

AS
if @action='delete'
begin
delete from teacher_leave where pk_id=@pk_id
end

if @action='show'
begin
select * from teacher_leave
end

if @action='select'
begin
select * from teacher_leave where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[teacher_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[teacher_dlt_proc]
@action varchar(max),
@teacher_id int
AS
if @action='select'
begin
select * from teacher_info where teacher_id=@teacher_id
end

if @action='show'
begin
select * from teacher_info
end

if @action='delete'
begin
delete from teacher_info where teacher_id=@teacher_id
end
GO
/****** Object:  StoredProcedure [dbo].[syllabus_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[syllabus_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@class varchar(max),
@subject varchar(max),
@syllabus varchar(max)
AS
if @action='insert'
begin
insert into syllabus values(@batch,@stream,@class,@subject,@syllabus)
end

if @action='update'
begin
update syllabus set batch=@batch,stream=@stream, class=@class,subject=@subject,syllabus=@syllabus where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[syllabus_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[syllabus_dlt_proc]
@action varchar(max),
@pk_id int
AS
if @action='delete'
begin
delete from syllabus where pk_id=@pk_id
end

if @action='show'
begin
select * from syllabus
end

if @action='select'
begin
select * from syllabus where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[suplier_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[suplier_proc]
@action varchar(50),
@pk_id int,
@name varchar(100),
@contact_person varchar(100),
@mobile varchar(100),
@email varchar(100),
@tin_no varchar(100),
@adress varchar(200),
@description varchar(max)

as
if @action='insert'
begin
insert into suplier_tbl values(@name,@contact_person,@mobile,@email,@tin_no,@adress,@description)
end

if @action='update'
begin
update suplier_tbl set name=@name,contact_person=@contact_person,mobile=@mobile,email=@email,tin_no=@tin_no,adress=@adress,description=@description where pk_id=@pk_id
end
if @action='supplrexist'
begin
select * from suplier_tbl where name=@name and email=@email 
end
GO
/****** Object:  StoredProcedure [dbo].[suplier_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[suplier_dlt_proc]
@action varchar(50),
@pk_id int

as 
if @action='select'
begin
select * from suplier_tbl where pk_id=@pk_id
end

if @action='show'
begin
select * from suplier_tbl
end

if @action='delete'
begin
delete from suplier_tbl where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[subject_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[subject_proc]
@action varchar(MAX),
@subject_id int,
@subject_name varchar(MAX),
@class varchar(MAX),
@section varchar(MAX),
@teacher varchar(MAX)

AS
if @action='insert'
begin
insert into subject_info values(@subject_name,@class,@section,@teacher) 
end

if @action='update'
begin
update subject_info set subject_name=@subject_name,class=@class,section=@section,teacher=@teacher where subject_id=@subject_id
end
if @action='Subject'
begin
select * from subject_info where subject_name=@subject_name and class=@class and section=@section
end

if @action='class'
begin
select distinct class_name from class_info
end

if @action='section'
begin
select distinct section_name from section where class=@class
end

if @action='teacher'
begin
select * from teacher_info
end
GO
/****** Object:  StoredProcedure [dbo].[subject_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[subject_dlt_proc]
@action varchar(max),
@subject_id int

AS

if @action='delete'
begin
delete from subject_info where subject_id=@subject_id
end

if @action='show'
begin
select * from subject_info
end

if @action='select'
begin
select * from subject_info where subject_id=@subject_id
end
GO
/****** Object:  View [dbo].[stuinfo_comp_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[stuinfo_comp_view]
as
select student_complaint.student_name,student_complaint.roll_no,student_complaint.class,student_complaint.section,student_complaint.complaint,student_complaint.date,
       studentinfo.email,studentinfo.password
       
       from student_complaint
       INNER JOIN
       studentinfo
       on student_complaint.student_name=studentinfo.student_name
GO
/****** Object:  StoredProcedure [dbo].[studentinfo_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[studentinfo_procevent]
@action varchar(10)
,@student_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from studentinfo where student_id=@student_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from studentinfo where student_id=@student_id order by student_id
     end
     if @action='show'
     begin
     select * from studentinfo 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[studentinfo_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[studentinfo_proc]
@action varchar(max)
,@student_id int
,@admission_no varchar(max)
,@admissiondate varchar(max)
,@bloodgroup varchar(max)
,@student_name varchar(max)
,@father_name varchar(max)
,@mother_name varchar(max)
,@batch varchar(50)
,@stream varchar(50) 
,@class varchar(max)
,@section varchar(max)
,@roll_no varchar(max)
,@dob varchar(max)
,@gender varchar(max)
,@country varchar(max)
,@state varchar(max)
,@city varchar(max)
,@address1 varchar(max)
,@phone varchar(max)
,@email varchar(max)
,@password varchar(max)
,@s_id varchar(max)
,@image varchar(max)
,@document_name varchar(max)
,@doc_image varchar(max)
,@type varchar(max)

as

		-----insert
		if @action='insert'
		begin
		insert into studentinfo values(@admission_no,@admissiondate,@bloodgroup,@student_name,@father_name,@mother_name,@batch,@stream,@class,@section, @roll_no,@dob,@gender,@country,@state,@city,@address1,@phone,@email,@password,@s_id,@image,@document_name,@doc_image,@type)
		end
		
		-----update
		if @action='Update'
		begin
		Update studentinfo set admission_no=@admission_no,admissiondate=@admissiondate,bloodgroup=@bloodgroup,student_name=@student_name,father_name=@father_name,mother_name=@mother_name,batch=@batch,stream=@stream,class=@class,section=@section, roll_no=@roll_no, dob=@dob,gender=@gender,country=@country,state=@state,city=@city,
		address1=@address1,phone=@phone,email=@email,password=@password,s_id=@s_id,image=@image,document_name=@document_name,doc_image=@doc_image where student_id=@student_id
		end
		
		if @action='class'
		begin
		Select distinct city from studentinfo
		end
		if @action='total'
		begin
		Select count(*) as count from studentinfo where city=@city
		end
		
		if @action='classes'
		begin
		Select Distinct class from studentinfo where batch=@batch
		end
		
		if @action='Section'
		begin
		Select Distinct section from studentinfo where batch=@batch and class=@class
		end
		
		if @action='stream'
		begin
		Select Distinct stream from studentinfo where batch=@batch and class=@class and section=@section
		end
		
		if @action='roll'
		begin
		Select * from studentinfo where batch=@batch and class=@class and section=@section and stream=@stream 
		end
		
		if @action='rollchange'
		begin
		Select * from studentinfo where batch=@batch and class=@class and section=@section and stream=@stream and roll_no=@roll_no
		end
GO
/****** Object:  StoredProcedure [dbo].[student_hostelinfo_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[student_hostelinfo_procevent]
@action varchar(10)
,@pk_id  int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from student_hostelinfo where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from student_hostelinfo where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from student_hostelinfo 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[student_hostelinfo_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[student_hostelinfo_proc]
@action varchar(max)
,@pk_id int
,@student_id varchar(max)
,@student_name varchar(max)
,@father_name varchar(max)
,@mothername varchar(max)
,@gender varchar(max)
,@batch varchar(max)
,@stream varchar(max)
,@class varchar(max) 
,@roll_no varchar(max)
,@date varchar(max)
,@hostel_name varchar(max)
,@type varchar(max)
,@no_of_room varchar(max)
,@available_room varchar(max)
,@room_no varchar(max)
,@seat varchar(max)
,@no_of_student varchar(max)
,@Charge varchar(max)
,@mobile varchar(max)

as

		-----insert
		if @action='insert'
		begin
		insert into student_hostelinfo values(@student_id,@student_name,@father_name,@mothername,@gender,@batch,@stream,@class,@roll_no,@date,@hostel_name,@type,@no_of_room,@available_room,@room_no,@seat,@no_of_student,@Charge,@mobile)
		end
		
		-----update
		if @action='Update'
		begin
		Update student_hostelinfo set student_id=@student_id,student_name=@student_name,father_name=@father_name,mothername=@mothername,gender=@gender,batch=@batch,stream=@stream,class=@class,roll_no=@roll_no,date=@date, hostel_name=@hostel_name,type=@type,no_of_room=@no_of_room,available_room=@available_room,room_no=@room_no,seat=@seat,no_of_student=@no_of_student,Charge=@Charge, mobile=@mobile
		 where pk_id=@pk_id
		end
		
		if @action='hostelstudent'
		begin
		Select count(*) as count from student_hostelinfo
		end
GO
/****** Object:  View [dbo].[student_hostelinfo_fees_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[student_hostelinfo_fees_view]
AS 
SELECT  student_hostelinfo.student_id,student_hostelinfo.student_name,student_hostelinfo.father_name,student_hostelinfo.mothername,student_hostelinfo.gender,student_hostelinfo.batch,student_hostelinfo.stream,student_hostelinfo.class,student_hostelinfo.roll_no,student_hostelinfo.date,student_hostelinfo.hostel_name,student_hostelinfo.type,student_hostelinfo.no_of_room,student_hostelinfo.available_room,student_hostelinfo.room_no,student_hostelinfo.seat,student_hostelinfo.no_of_student,student_hostelinfo.Charge,student_hostelinfo.mobile
 ,hostel_fee.date_of_pay,hostel_fee.hostel_fee,hostel_fee.amount_type,hostel_fee.amount_pay,hostel_fee.remaining,hostel_fee.status
 from dbo.student_hostelinfo    
  INNER JOIN
  
 dbo.hostel_fee 
 ON dbo.student_hostelinfo.student_name=dbo.hostel_fee.student_name
GO
/****** Object:  StoredProcedure [dbo].[SLC_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SLC_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from SLC where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from SLC where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from SLC 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[SLC_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SLC_proc]
@action varchar(10)
,@pk_id int
,@school_name varchar(max)
,@student_name varchar(max)
,@father_name varchar(max)
,@admission_date varchar(max)
,@class varchar(max)
,@dob varchar(max)
,@date_of_application varchar(max)
,@date_of_issue varchar(max)
,@reason varchar(max)
as

		-----insert
		if @action='insert'
		begin
		insert into SLC values(@school_name,@student_name,@father_name,@admission_date,@class,@dob,@date_of_application,@date_of_issue,@reason)
		end
		
		-----update
		if @action='Update'
		begin
		Update SLC set school_name=@school_name,student_name=@student_name,father_name=@father_name,admission_date=@admission_date,class=@class,dob=@dob,date_of_application=@date_of_application,date_of_issue=@date_of_issue,reason=@reason where pk_id=@pk_id
		end
		
		if @action='father'
		begin
		select *  from studentinfo where student_name=@student_name
		end
			
		if @action='admission'
		begin
		select * from studentinfo where student_name='Ashwani Kumar' and father_name='Rajesh Kumar'
		end
GO
/****** Object:  View [dbo].[studentcomplaint_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[studentcomplaint_view] 
as
select studentinfo.batch,studentinfo.class,studentinfo.section,studentinfo.stream,studentinfo.student_name,studentinfo.roll_no
,parentinfo.firstname,parentinfo.mobilephone,parentinfo.email,parentinfo.password 
from studentinfo
Inner join
parentinfo
on studentinfo.student_name=parentinfo.student_name
GO
/****** Object:  View [dbo].[student_marks]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[student_marks]
as
Select addmarks.examterm,addmarks.class,addmarks.section,addmarks.student_name,addmarks.roll_no,addmarks.subject,addmarks.comment,addmarks.maximum_marks,addmarks.obtain_marks,
studentinfo.email,studentinfo.password
from addmarks
INNER JOIN
studentinfo
ON addmarks.roll_no=studentinfo.roll_no
GO
/****** Object:  StoredProcedure [dbo].[student_leave_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[student_leave_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@class varchar(MAX),
@section varchar(max),
@roll_no varchar(max),
@student_name varchar(max),
@date varchar(max),
@reason varchar(max),
@status varchar(max)
AS
if @action='insert'
begin
insert into student_leave values(@batch,@stream,@class,@section,@roll_no,@student_name,@date,@reason,@status)
end

if @action='update'
begin
update student_leave set batch=@batch,stream=@stream,class=@class,section=@section,roll_no=@roll_no,student_name=@student_name,date=@date,reason=@reason,status=@status where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[student_leave_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[student_leave_dlt_proc]
@action varchar(max),
@pk_id int

AS
if @action='delete'
begin
delete from student_leave where pk_id=@pk_id
end

if @action='show'
begin
select * from student_leave
end

if @action='select'
begin
select * from student_leave where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[student_attanddlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[student_attanddlt_proc]
@action varchar(max),
@pk_id int
AS

if @action='delete'
begin
delete from student_attandence where pk_id=@pk_id
end

if @action='show'
begin
select * from student_attandence
end

if @action='select'
begin
select * from student_attandence where pk_id=@pk_id
end
GO
/****** Object:  View [dbo].[stuatten_search_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[stuatten_search_view]
AS 
SELECT  student_attandence.day,student_attandence.roll_no,student_attandence.student_name,student_attandence.class,student_attandence.section,student_attandence.month,student_attandence.year,student_attandence.status,
studentinfo.email,studentinfo.password
 from dbo.student_attandence    
  INNER JOIN

 dbo.studentinfo
 ON dbo.student_attandence.student_name=dbo.studentinfo.student_name
GO
/****** Object:  StoredProcedure [dbo].[section_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[section_procevent]
@action varchar(10)
,@section_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from section where section_id=@section_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from section where section_id=@section_id order by section_id
     end
     if @action='show'
     begin
     select * from section 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[section_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[section_proc]
@action varchar(10)
,@section_id int
,@batch varchar(50)
,@class varchar(max)
,@section_name varchar(max)


as

		-----insert
		if @action='insert'
		begin
		insert into section values(@batch,@class,@section_name)
		end
		
		-----update
		if @action='Update'
		begin
		Update section set batch=@batch,class=@class,section_name=@section_name where section_id=@section_id
		end
		
		if @action='batch'
		begin
		select * from batch_tbl
		end
		
		if @action='class'
		begin
		select distinct class_name from class_info
		end
		
		if @action='exist'
		begin
		select * from section where batch=@batch and class=@class and section_name=@section_name
		end
GO
/****** Object:  StoredProcedure [dbo].[school_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[school_dlt_proc]
@action varchar(50),
@pk_id int
as
if @action='select'
begin
select * from school_info where pk_id=@pk_id
end

if @action='show'
begin
select * from school_info
end

if @action='delete'
begin
delete from school_info where pk_id=@pk_id
end
GO
/****** Object:  View [dbo].[search_teach_atten]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[search_teach_atten]
AS 
SELECT  teacher_attandence.day,teacher_attandence.teacher_name,teacher_attandence.teacher_tid,teacher_attandence.month,teacher_attandence.year,teacher_attandence.status
 ,teacher_info.email,teacher_info.password
 from dbo.teacher_attandence    
  INNER JOIN
  
 dbo.teacher_info 
 ON dbo.teacher_attandence.teacher_name=dbo.teacher_info.teacher_name
GO
/****** Object:  View [dbo].[search_salary]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[search_salary]
as
 select teacher_info.email,teacher_info.password,salary_tbl.teacher_name,salary_tbl.teacher_tid,salary_tbl.year,salary_tbl.month,
        salary_tbl.salary,salary_tbl.holiday,salary_tbl.paid
        from
        teacher_info inner join salary_tbl
        on salary_tbl.teacher_name=teacher_info.teacher_name
        where salary_tbl.teacher_name=teacher_info.teacher_name
GO
/****** Object:  StoredProcedure [dbo].[school_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[school_proc]
@action varchar(50),
@pk_id int,
@school_name varchar(100),
@image varchar(max)
as
if @action='insert'
begin
insert into school_info values(@school_name,@image)
end

if @action='update'
begin
update school_info set school_name=@school_name,image=@image where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[salary_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[salary_proc]
@action varchar(50),
@pk_id int,
@teacher_name varchar(max),
@teacher_tid varchar(max),
@year varchar(max),
@month varchar(max),
@date date,
@salary varchar(max),
@holiday varchar(max),
@paid int

as
if @action='insert'
begin
      insert into salary_tbl values(@teacher_name,@teacher_tid,@year,@month,@date,@salary,@holiday,@paid)
end
GO
/****** Object:  StoredProcedure [dbo].[review_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[review_proc]
@action varchar(max),
@pk_id int,
@teacher_name varchar(max),
@student_name varchar(max),
@roll_no int,
@class varchar(max),
@section varchar(max),
@review_date varchar(max),
@review varchar(max)

AS

if @action='insert'
begin
insert into teacher_review values(@teacher_name,@student_name,@roll_no,@class,@section,@review_date,@review)
end

if @action='update'
begin
update teacher_review set teacher_name=@teacher_name,student_name=@student_name,roll_no=@roll_no,class=@class,section=@section,review_date=@review_date,review=@review where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[review_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[review_dlt_proc]
@action varchar(max),
@pk_id int

AS

if @action='insert'
begin
delete from teacher_review where pk_id=@pk_id
end

if @action='show'
begin
select * from teacher_review
end

if @action='select'
begin
select * from teacher_review where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[quiz_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[quiz_proc]
@action varchar(max),
@ques_id int,
@subject varchar(max),
@question varchar(max),
@option1 varchar(max),
@option2 varchar(max),
@option3 varchar(max),
@option4 varchar(max),
@option5 varchar(max),
@correctoption varchar(max)

AS

if @action='insert'
begin
insert into quiz values(@subject,@question,@option1,@option2,@option3,@option4,@option5,@correctoption)
end

if @action='update'
begin
update quiz set subject=@subject,question=@question,option1=@option1,option2=@option2,option3=@option3,option4=@option4,option5=@option5,correctoption=@correctoption where ques_id=@ques_id
end
GO
/****** Object:  StoredProcedure [dbo].[quiz_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[quiz_dlt_proc]
@action varchar(max),
@ques_id int

AS

if @action='delete'
begin
delete from quiz where ques_id=@ques_id
end

if @action='show'
begin
select * from quiz
end

if @action='select'
begin
select * from quiz where ques_id=@ques_id
end
GO
/****** Object:  StoredProcedure [dbo].[complaint_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[complaint_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@class varchar(max),
@section varchar(max),
@Student_name varchar(max),
@roll_no int,
@date varchar(max),
@complaint varchar(max)


AS

if @action='insert'
begin
insert into student_complaint values(@batch,@stream,@class,@section,@Student_name,@roll_no,@date,@complaint)
end

if @action='update'
begin
update student_complaint set batch=@batch,stream=@stream,class=@class,section=@section,Student_name=@Student_name,roll_no=@roll_no,date=@date,complaint=@complaint where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[complaint_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[complaint_dlt_proc]
@action varchar(max),
@pk_id int
AS
if @action='delete'
begin
delete from student_complaint where pk_id=@pk_id
end

if @action='show'
begin
select * from student_complaint
end

if @action='select'
begin
select * from student_complaint where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[class_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[class_proc]
@action varchar(max),
@class_id int,
@batch varchar(50),
@class_name varchar(max)

AS
if @action='insert'
begin
insert into class_info values(@batch,@class_name)
end

if @action='update'
begin
update class_info set batch=@batch,class_name=@class_name where class_id=@class_id
end


if @action='class'
begin
Select * from insert_class
end

if @action='batch'
begin
select * from batch_tbl
end

if @action='classexist'
begin
select * from class_info where batch=@batch and class_name=@class_name
end
GO
/****** Object:  StoredProcedure [dbo].[class_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[class_dlt_proc]
@action varchar(max),
@class_id int

AS
if @action='delete'
begin
delete from class_info where class_id=@class_id
end

if @action='show'
begin
select * from class_info
end

if @action='show1'
begin
select distinct class_name from class_info
end 

if @action='select'
begin
select * from class_info where class_id=@class_id
end
GO
/****** Object:  StoredProcedure [dbo].[charactercertificate_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[charactercertificate_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from charactercertificate where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from charactercertificate where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from charactercertificate 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[charactercertificate_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[charactercertificate_proc]
@action varchar(10)
,@pk_id int
,@school_name varchar(max)
,@student_name varchar(max)
,@father_name varchar(max)
,@class varchar(max)
,@marks varchar(max)
,@date varchar(max)
,@status varchar(max)
as

		-----insert
		if @action='insert'
		begin
		insert into charactercertificate values(@school_name,@student_name,@father_name,@class,@marks,@date,@status)
		end
		
		-----update
		if @action='Update'
		begin
		Update charactercertificate set school_name=@school_name,student_name=@student_name,father_name=@father_name,class=@class,marks=@marks,date=@date where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[bus_timing_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bus_timing_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from bus_timing where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from bus_timing where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from bus_timing 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[bus_timing_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bus_timing_proc]
@action varchar(10)
,@pk_id int
,@route_name varchar(max)
,@station_name varchar(max)
,@bus_no varchar(max)
,@Pickup_time varchar(max)
,@drop_time varchar(max)





as

		-----insert
		if @action='insert'
		begin
		insert into bus_timing values(@route_name,@station_name,@bus_no,@Pickup_time,@drop_time)
		end
		
		-----update
		if @action='Update'
		begin
		Update bus_timing set route_name=@route_name,station_name=@station_name,bus_no=@bus_no,Pickup_time=@Pickup_time,drop_time=@drop_time where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[Book_status_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Book_status_proc]
@action varchar(max),
@pk_id int,
@name varchar(max),
@detail  varchar(max)

AS

if @action='insert'
begin
insert into Book_status values(@name,@detail)
end

if @action='update'
begin
update Book_status set name=@name,detail=@detail where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[Book_status_event_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Book_status_event_proc]
@action varchar(max),
@pk_id int
AS

if @action='select'
begin
select * from Book_status where pk_id=@pk_id
end

if @action='show'
begin
select * from Book_status
end

if @action='delete'
begin
delete from Book_status where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[book_category_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[book_category_proc]
@action varchar(max),
@pk_id int,
@name varchar(max)

AS

if @action='insert'
begin
insert into book_category values(@name)
end

if @action='update'
begin
update book_category set name=@name where pk_id=@pk_id
end

if @action='exist'
begin
Select * from book_category where name=@name
end
GO
/****** Object:  StoredProcedure [dbo].[book_category_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[book_category_dlt_proc]
@action varchar(max),
@pk_id int
AS

if @action='select'
begin
select * from book_category where pk_id=@pk_id
end

if @action='show'
begin
select * from book_category
end

if @action='delete'
begin
delete from book_category where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[bonafied_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bonafied_procevent]
@action varchar(100),
@pk_id int
as
if @action='select'
begin
select * from bonafied_tbl where pk_id=@pk_id
end

if @action='show'
begin
select * from bonafied_tbl
end

if @action='delete'
begin
delete from bonafied_tbl where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[bonafied_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[bonafied_proc]
@action varchar(100),
@pk_id int,
@school_name varchar(200),
@student_name varchar(200),
@father_name varchar(200),
@clas varchar(200),
@fee varchar(200),
@date varchar(200)
as
if @action='insert'
begin
insert into bonafied_tbl values(@school_name,@student_name,@father_name,@clas,@fee,@date)
end

if @action='update'
begin
update bonafied_tbl set school_name=@school_name,student_name=@student_name,father_name=@father_name,clas=@clas,fee=@fee,date=@date where pk_id=@pk_id
end
if @action='father'
begin
select distinct father_name from bonafied_tbl where student_name=@student_name
end
if @action='bonafied'
begin
select * from bonafied_tbl where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[batch_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[batch_proc]
@action varchar(50),
@batch_id int,
@batch varchar(50)
 as
 if @action='insert'
 begin
 insert into batch_tbl values(@batch)
 end
 
 if @action='update'
 begin
 update batch_tbl set batch=@batch where batch_id=@batch_id
 end
  if @action='exist'
  begin
  select * from batch_tbl where batch=@batch
  end
if @action='batchs'
begin
Select * from batch_tbl
end
GO
/****** Object:  StoredProcedure [dbo].[batch_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[batch_dlt_proc]
@action varchar(50),
@batch_id int
as
if @action='select'
begin
 select * from batch_tbl where batch_id=@batch_id
end

if @action='show'
begin
 select * from batch_tbl 
end

if @action='delete'
begin
 delete from batch_tbl where batch_id=@batch_id
end
GO
/****** Object:  StoredProcedure [dbo].[allocatestationstudent_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[allocatestationstudent_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@class varchar(max),
@section varchar(max),
@stream varchar(max),
@roll_no varchar(max),
@student_name varchar(max),
@route varchar(max),
@station varchar(max),
@bus_no varchar(max),
@way_side varchar(max),
@fee varchar(max),
@pay_fee varchar(max),
@remaining varchar(max)

AS
if @action='insert'
begin
insert into allocatestationstudent values(@batch,@class,@section,@stream,@roll_no,@student_name,@route,@station,@bus_no,@way_side,@fee,@pay_fee,@remaining)
end

if @action='update'
begin
update allocatestationstudent set batch=@batch,class=@class,section=@section,stream=@stream,roll_no=@roll_no,student_name=@student_name,route=@route,station=@station,bus_no=@bus_no,way_side=@way_side,fee=@fee,pay_fee=@pay_fee,remaining=@remaining where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[allocatestationstudent_event_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[allocatestationstudent_event_proc]
@action varchar(max),
@pk_id int

AS
if @action='delete'
begin
delete from allocatestationstudent where pk_id=@pk_id
end

if @action='show'
begin
select * from allocatestationstudent
end

if @action='select'
begin
select * from allocatestationstudent where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[allempdetail_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[allempdetail_proc]
@action varchar(max),
@pk_id int,
@type varchar(max),
@emp_no varchar(max),
@designation varchar(max),
@doj varchar(max),
@emp_name varchar(max),
@father_name varchar(max),
@gender varchar(max),
@dob varchar(max),
@country varchar(max),
@state varchar(max),
@city varchar(max),
@address varchar(max),
@mobile varchar(max),
@email varchar(max),
@maritial_status varchar(max),
@blood_group varchar(max),
@total_experience_year varchar(max),
@total_exp_month varchar(max),
@experiencedetail varchar(max),
@salary varchar(max),
@password varchar(max),
@emp_id varchar(max),
@image varchar(max)

AS
if @action='insert'
begin
    insert into allempdetail values(@type,@emp_no,@designation,@doj,@emp_name,@father_name,@gender,@dob,@country,@state,@city,@address,@mobile,@email,@maritial_status,@blood_group,@total_experience_year,@total_exp_month,@experiencedetail,@salary,@password,@emp_id,@image)
end

if @action='update'
begin
    update allempdetail set type=@type,emp_no=@emp_no,designation=@designation,doj=@doj,emp_name=@emp_name,father_name=@father_name,gender=@gender,dob=@dob,country=@country,state=@state,city=@city
    ,address=@address,mobile=@mobile,email=@email,maritial_status=@maritial_status,blood_group=@blood_group,total_experience_year=@total_experience_year,total_exp_month=@total_exp_month,
    experiencedetail=@experiencedetail,salary=@salary,password=@password,emp_id=@emp_id,image=@image where pk_id=@pk_id
end

if @action='allemppass'
begin

select * from allempdetail where password=@password and type=@type
end

if @action='updatepass'
begin

update allempdetail set password =@password where pk_id=@pk_id
end

if @action='exist'
begin
select * from allempdetail where emp_name=@emp_name and father_name=@father_name and email=@email
end

if @action='Country'
begin
select * from country
End
if @action='state'
begin
Select * from state where country_name=@country 
End

if @action='city'
begin
Select * from city where country=@country and state=@state
End
GO
/****** Object:  StoredProcedure [dbo].[allempdetail_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[allempdetail_dlt_proc]
@action varchar(max),
@pk_id int
AS
if @action='select'
begin
select * from allempdetail where pk_id=@pk_id
end

if @action='show'
begin
select * from allempdetail
end

if @action='delete'
begin
delete from allempdetail where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[adminlogin_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[adminlogin_proc]
@action varchar(max),
@pk_id int,
@username varchar(max),
@password varchar(max),
@type varchar(max)

AS

if @action='insert'
begin
insert into admin_login values(@username,@password,@type)
end

if @action='update'
begin
update admin_login set password=@password where pk_id=@pk_id
end

if 
@action='passchange'
begin
select * from admin_login where password=@password
end
GO
/****** Object:  StoredProcedure [dbo].[adduser_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[adduser_proc]
(
@action varchar(max),
@pk_id int,
@FName varchar(200),
@LName varchar(200),
@Email varchar(200),
@Uname varchar(200),
@Type varchar(200),
@Password varchar(200),
@RoleName varchar(200),
@Address1 varchar(200),
@Mobile varchar(200),
@City varchar(200),
@State varchar(200),
@Country varchar(200),
@PCode varchar(200),
@date varchar(200)
)
as
if @action='insert'
begin
insert into tbl_Employee values(@FName,@LName,@Email,@Uname,@Type,@Password,@RoleName,@Address1,@Mobile,@City,@State,@Country,@PCode,@date)
end
if @action='username_check'
begin
select  Uname from tbl_Employee where Uname=@Uname
end

if @action='password_check'
begin
select  Password from tbl_Employee where Password=@Password
end

if @action='mobno_check'
begin
select Mobile from tbl_Employee where Mobile=@Mobile
end

if @action='userlogin_check'
begin
select * from tbl_Employee where Uname=@Uname  and Password=@Password
end

if @Action='update'

begin
update tbl_Employee set FName=@FName,LName= @LName,Email= @Email,Uname= @Uname,Type=@Type,Password= @Password,
RoleName= @RoleName,Address1= @Address1,Mobile= @Mobile,City= @City,State= @State,Country= @Country,PCode= @PCode where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[addmarks_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addmarks_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@examterm varchar(max),
@class varchar(max),
@section varchar(max),
@subject varchar(max),
@student_name varchar(max),
@roll_no varchar(max),
@obtain_marks varchar(max),
@maximum_marks varchar(max),
@comment varchar(max)
as
if @action='insert'
begin
insert into addmarks values(@batch,@stream,@examterm,@class,@section,@subject,@student_name,@roll_no,@obtain_marks,@maximum_marks,@comment)
end

if @action='update'
begin
update addmarks set batch=@batch,stream=@stream, examterm=@examterm,class=@class,section=@section,subject=@subject,student_name=@student_name,roll_no=@roll_no,obtain_marks=@obtain_marks,@maximum_marks=@maximum_marks,comment=@comment where pk_id=@pk_id
end

if @action='class'
begin
select distinct class_name from class_info
end

if @action='examterm'
begin
select distinct examterm from examterm
end

if @action='section'
begin
select distinct section_name  from section where class=@class
end
if @action='subject'
begin
select * from subject_info where class=@class and section=@section
end

if @action='student'
begin
select * from studentinfo where class=@class and section=@section and batch=@batch
end

if @action='studentinfo'
begin
select * from studentinfo where student_name=@student_name and batch=@batch
end

if @action='batch'
begin
Select * from batch_tbl
end

if @action='stream'
begin
Select Distinct stream from studentinfo where batch=@batch
end
GO
/****** Object:  StoredProcedure [dbo].[addmarks_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addmarks_dlt_proc]
@action varchar(max),
@pk_id int

as
if @action='select'
begin
select * from addmarks where pk_id=@pk_id
end

if @action='show'
begin
select * from addmarks
end

if @action='delete'
begin
delete from addmarks where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_route_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_route_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from add_route where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from add_route where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from add_route 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[add_route_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_route_proc]
@action varchar(10)
,@pk_id int
,@route_name varchar(max)



as

		-----insert
		if @action='insert'
		begin
		insert into add_route values(@route_name)
		end
		
		-----update
		if @action='Update'
		begin
		Update add_route set route_name=@route_name where pk_id=@pk_id
		end
		
		if @action='addroute'
		begin
		select * from add_route where route_name=@route_name
		end	
		
		if @action='route'
		begin
	Select * from add_route
		end
GO
/****** Object:  StoredProcedure [dbo].[addfee_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[addfee_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@class varchar(max),
@section varchar(max),
@feetype varchar(max),
@date varchar(max),
@fee varchar(max)
AS

if @action='insert'
begin
insert into add_fee values(@batch,@stream,@class,@section,@feetype,@date,@fee)
end

if @action='update'
begin
update add_fee set batch=@batch,stream=@stream,class=@class,section=@section,feetype=@feetype,date=@date,fee=@fee where pk_id=@pk_id
end
if
@action='section'
begin
select distinct section_name from section where class=@class
end
if
@action='batch'
begin
Select * from batch_tbl
end

if
@action='stream'
begin
Select Distinct stream from studentinfo where batch=@batch
end
if
@action='class'
begin
Select distinct class_name from class_info
end
GO
/****** Object:  StoredProcedure [dbo].[addfee_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[addfee_dlt_proc]
@action varchar(max),
@pk_id int
AS

if @action='select'
begin
select * from add_fee where pk_id=@pk_id
end

if @action='show'
begin
select * from add_fee
end

if @action='delete'
begin
delete from add_fee where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_station_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_station_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from add_station where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from add_station where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from add_station 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[add_station_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_station_proc]
@action varchar(max)
,@pk_id int
,@route_name varchar(max)
,@station_point varchar(max)



as

		-----insert
		if @action='insert'
		begin
		insert into add_station values(@route_name,@station_point)
		end
		
		if @action='Update'
		begin
		Update add_station set route_name=@route_name,station_point=@station_point where pk_id=@pk_id
		end
		
		if @action='route'
		begin
		Select * from add_route
		end
		
		if @action='exist'
		begin
		select * from add_station where route_name=@route_name and station_point=@station_point
		end
		
		if @action='station'
		begin
		select * from add_station where route_name=@route_name 
		end
GO
/****** Object:  StoredProcedure [dbo].[add_Role_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_Role_proc]
 @action varchar(max)
,@Role_id int
,@Role_name varchar(max)
as
begin
	-----insert
	if @action='insert'
	begin
	insert into tbl_Role values(@Role_name)
	end
	
	---select
	if @action='select'
	begin
	select * from tbl_Role order by Role_id desc
	end
	---delete
	if @action='delete'
	begin
	delete from tbl_Role
	where @Role_id=@Role_id
	end
	---select_id
	if @action='select_id'
	begin
	select * from tbl_Role 
	where Role_id=@Role_id order by Role_id
	end
	if @action='update'
	begin
	update tbl_Role 
	set Role_name=@Role_name
	where Role_id=@Role_id
	end
end
GO
/****** Object:  StoredProcedure [dbo].[add_review_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_review_proc]
@action varchar(max),
@pk_id int,
@father_name varchar(max),
@student_name varchar(max),
@roll_no int,
@class varchar(max),
@section varchar(max),
@complaint varchar(max)

as
if @action='insert'
begin
insert into add_review values(@father_name,@student_name,@roll_no,@class,@section,@complaint)
end

if @action='update'
begin
update add_review set father_name=@father_name,student_name=@student_name,roll_no=@roll_no,class=@class,section=@section,complaint=@complaint where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_review_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_review_dlt_proc]
@action varchar(max),
@pk_id int

as
if @action='select'
begin
select * from add_review where pk_id=@pk_id
end

if @action='show'
begin
select * from add_review
end

if @action='delete'
begin
delete from add_review where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_menu_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_menu_proc]
@action varchar(max)
,@menu_id int
,@Menu_name varchar(max)
,@menu_url varchar(max)
as
begin
	-----insert
	if @action='insert'
	begin
	insert into add_menu values(@Menu_name,@menu_url)
	end
	
	---select
	if @action='select'
	begin
	select * from add_menu order by menu_id desc
	end
	---delete
	if @action='delete'
	begin
	delete from add_menu
	where menu_id=@menu_id
	end
	---select_id
	if @action='select_id'
	begin
	select * from add_menu 
	where menu_id=@menu_id order by menu_id
	end
	if @action='update'
	begin
	update add_menu 
	set Menu_name=@Menu_name,menu_url=@menu_url
	where menu_id=@menu_id
	end
end
GO
/****** Object:  StoredProcedure [dbo].[add_libraryemployee_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_libraryemployee_proc]
@action varchar(max),
@pk_id int,
@employee_no varchar(max),
@joining_date varchar(max),
@employee_name varchar(max),
@father_name varchar(max),
@gender varchar(max),
@DOB varchar(max),
@address1 varchar(max),
@address2 varchar(max),
@mobile varchar(max),
@email varchar(max),
@maritial_status varchar(max),
@blood_group varchar(max),
@experience_year varchar(max),
@experience_month varchar(max),
@experience_detail varchar(max),
@image varchar(max),
@password varchar(max),
@employee_id varchar(max),
@type varchar(max)
AS
if @action='insert'
begin
    insert into add_libraryemployee values(@employee_no,@joining_date,@employee_name,@father_name,@gender,@DOB,@address1,@address2,@mobile,@email,@maritial_status,@blood_group,@experience_year,@experience_month ,@experience_detail,@image,@password,@employee_id,@type)
end

if @action='update'
begin
    update add_libraryemployee set employee_no=@employee_no,joining_date=@joining_date,employee_name=@employee_name,father_name=@father_name,gender=@gender,DOB=@DOB,address1=@address1,
    address2=@address2,mobile=@mobile,email=@email,maritial_status=@maritial_status,blood_group=@blood_group,experience_year=@experience_year,experience_month=@experience_month,experience_detail=@experience_detail,
    image=@image,password=@password,employee_id=@employee_id,type=@type where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_libraryemployee_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_libraryemployee_dlt_proc]
@action varchar(max),
@pk_id int
AS
if @action='select'
begin
select * from add_libraryemployee where pk_id=@pk_id
end

if @action='show'
begin
select * from add_libraryemployee
end

if @action='delete'
begin
delete from add_libraryemployee where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_item_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_item_proc]
@action varchar(max),
@pk_id int,
@item_code varchar(max),
@item_name varchar(max),
@item_location varchar(max),
@rate varchar(max),
@quantity varchar(max),
@stock varchar(max),
@description varchar(max)

as
if @action='insert'
begin
insert into add_item values(@item_code,@item_name,@item_location,@rate,@quantity,@stock,@description)
end

if @action='update'
begin
update add_item set item_code=@item_code,item_name=@item_name,item_location=@item_location,rate=@rate,quantity=@quantity,stock=@stock,description=@description where pk_id=@pk_id
end

if @action='category'
begin
Select * from add_category
end
if @action='item'
begin
select * from item_location where item_name=@item_name
end
GO
/****** Object:  StoredProcedure [dbo].[add_item_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_item_dlt_proc]
@action varchar(max),
@pk_id int

as
if @action='select'
begin
select * from add_item where pk_id=@pk_id
end

if @action='show'
begin
select * from add_item
end

if @action='delete'
begin
delete from add_item where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_hostel_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_hostel_procevent]
@action varchar(10)
,@hostel_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from add_hostel where hostel_id=@hostel_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from add_hostel where hostel_id=@hostel_id order by hostel_id
     end
     if @action='show'
     begin
     select * from add_hostel 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[add_hostel_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_hostel_proc]
@action varchar(10)
,@hostel_id int
,@hostel_no int
,@hostel_name varchar(max)


as

		-----insert
		if @action='insert'
		begin
		insert into add_hostel values(@hostel_no,@hostel_name)
		end
		
		-----update
		if @action='Update'
		begin
		Update add_hostel set hostel_no=@hostel_no,hostel_name=@hostel_name where hostel_id=@hostel_id
		end
		if @action='exist'
		begin
		Select * from add_hostel where hostel_no=@hostel_no or hostel_name=@hostel_name
		end
		
		if @action='hostels'
		begin
		Select count(*) as count from add_hostel
		end
GO
/****** Object:  View [dbo].[add_fees_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[add_fees_view]
AS 
SELECT  studentinfo.student_id,studentinfo.student_name,studentinfo.roll_no,studentinfo.batch,studentinfo.stream,studentinfo.father_name,studentinfo.mother_name,studentinfo.class,studentinfo.section
 ,add_fee.date,add_fee.fee,add_fee.feetype
 from dbo.studentinfo    
  Inner JOIN
  
 dbo.add_fee 
 ON dbo.studentinfo.class=dbo.add_fee.class and dbo.studentinfo.section=dbo.add_fee.section
GO
/****** Object:  StoredProcedure [dbo].[add_fare_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_fare_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from add_fare where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from add_fare where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from add_fare 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[add_fare_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_fare_proc]
@action varchar(10)
,@pk_id int
,@route_name varchar(max)
,@Both_way_fare varchar(max)
,@one_way_fare varchar(max)





as

		-----insert
		if @action='insert'
		begin
		insert into add_fare values(@route_name,@Both_way_fare,@one_way_fare)
		end
		
		-----update
		if @action='Update'
		begin
		Update add_fare set route_name=@route_name,Both_way_fare=@Both_way_fare,one_way_fare=@one_way_fare where pk_id=@pk_id
		end
		
		if @action='Route'
		begin
		Select * from add_route
		end
		
		
		if @action='oneway'
		begin
		select * from add_fare where route_name=@route_name
		end
GO
/****** Object:  StoredProcedure [dbo].[add_category_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_category_proc]
@action varchar(max),
@pk_id int,
@category_name varchar(max),
@Description varchar(max)

as
if @action='insert'
begin
insert into add_category values(@category_name,@Description)
end

if @action='update'
begin
update add_category set category_name=@category_name,Description=@Description where pk_id=@pk_id
end

if 

@action='category'
begin
select * from add_category where category_name=@category_name and Description=@Description
end
GO
/****** Object:  StoredProcedure [dbo].[add_category_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_category_dlt_proc]
@action varchar(max),
@pk_id int

as
if @action='select'
begin
select * from add_category where pk_id=@pk_id
end

if @action='show'
begin
select * from add_category
end

if @action='delete'
begin
delete from add_category where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_busdetail_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_busdetail_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from add_busdetail where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from add_busdetail where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from add_busdetail 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[add_busdetail_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_busdetail_proc]
@action varchar(10)
,@pk_id int
,@school_bus_no varchar(max)
,@bus_regd_no varchar(max)
,@driver_name varchar(max)
,@driver_contact_no varchar(max)
,@seat_capacity varchar(max)
,@model varchar(max)
,@select_route varchar(max)


as

		-----insert
		if @action='insert'
		begin
		insert into add_busdetail values(@school_bus_no,@bus_regd_no,@driver_name,@driver_contact_no,@seat_capacity,@model,@select_route)
		end
		
		-----update
		if @action='Update'
		begin
		Update add_busdetail set school_bus_no=@school_bus_no,bus_regd_no=@bus_regd_no,driver_name=@driver_name,driver_contact_no=@driver_contact_no,seat_capacity=@seat_capacity,model=@model,select_route=@select_route where pk_id=@pk_id
		end
		if 
		@action='Busexist'
		begin
		select * from add_busdetail where bus_regd_no=@bus_regd_no 
		end
		if 
		@action='driver'
		begin
		select * from add_busdetail where driver_name=@driver_name 
		end
		
		if 
		@action='driverinfo'
		begin
		select * from driver_info where driver_name=@driver_name 
		end
		
		if 
		@action='Route'
		begin
		select * from add_route
		end
		
			if 
		@action='selectbus'
		begin
		Select * from add_busdetail where select_route=@select_route
		end
GO
/****** Object:  StoredProcedure [dbo].[add_books_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[add_books_proc]
@action varchar(max),
@book_id int
AS

if @action='select'
begin
select * from add_books where book_id=@book_id
end

if @action='show'
begin
select * from add_books
end

if @action='delete'
begin
delete from add_books where book_id=@book_id
end
GO
/****** Object:  StoredProcedure [dbo].[add_book_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[add_book_proc]
@action varchar(max),
@book_id int,
@book_name varchar(max),
@book_category  varchar(max),
@subtitle  varchar(max),
@isbn_no  varchar(max),
@author  varchar(max),
@cupboard  varchar(max),
@cupboard_self  varchar(max),
@edition  varchar(max),
@publisher  varchar(max),
@book_cost  varchar(max),
@book_vendor  varchar(max),
@copy  int,
@Remarks varchar(max),
@ASN_no varchar(max)
AS

if @action='insert'
begin
insert into add_books values(@book_name,@book_category,@subtitle,@isbn_no,@author,@cupboard,@cupboard_self,@edition,@publisher,@book_cost,@book_vendor,@copy,@Remarks,@ASN_no)
end

if @action='update'
begin
update add_books set book_name=@book_name,book_category=@book_category,subtitle=@subtitle,isbn_no=@isbn_no,author=@author,cupboard=@cupboard,cupboard_self=@cupboard_self,edition=@edition,publisher=@publisher,book_cost=@book_cost,book_vendor=@book_vendor,copy=@copy,Remarks=@Remarks,ASN_no=@ASN_no where book_id=@book_id
end
if @action='bookcategory'
begin
select * from book_category
end
if @action='cupboard'
begin
select * from create_cupboard
end
if @action='cupboardself'
begin
select * from cupboardself where cupboard=@cupboard
end
if @action='vendor'
begin
select * from vendor
end
if @action='bookcount'
begin
Select sum(copy) as sum from add_books
end
GO
/****** Object:  StoredProcedure [dbo].[Hostel_incharge_info_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Hostel_incharge_info_proc]
@action varchar(max),
@pk_id int,
@incharge_no varchar(max),
@joining_date varchar(max),
@name varchar(max),
@father_name varchar(max),
@gender varchar(max),
@dob varchar(max),
@address1 varchar(max),
@address2 varchar(max),
@mobile varchar(max),
@email varchar(max),
@maritial_status varchar(max),
@blood_group varchar(max),
@total_exp_year varchar(max),
@total_exp_month varchar(max),
@experience_detail varchar(max),
@password varchar(max),
@incharge_hid varchar(max),
@image varchar(max),
@type varchar(max)
AS
if @action='insert'
begin
    insert into Hostel_incharge_info values(@incharge_no,@joining_date,@name,@father_name,@gender,@dob,@address1,@address2,@mobile,@email,@maritial_status,@blood_group,@total_exp_year,@total_exp_month,@experience_detail,@password,@incharge_hid,@image,@type)
end

if @action='update'
begin
    update Hostel_incharge_info set incharge_no=@incharge_no,joining_date=@joining_date,name=@name,father_name=@father_name,gender=@gender,dob=@dob,
    address1=@address1,address2=@address2,mobile=@mobile,email=@email,maritial_status=@maritial_status,blood_group=@blood_group,total_exp_year=@total_exp_year,total_exp_month=@total_exp_month,
    experience_detail=@experience_detail,password=@password,incharge_hid=@incharge_hid,image=@image where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[Hostel_incharge_info_event_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Hostel_incharge_info_event_proc]
@action varchar(max),
@pk_id int
AS
if @action='select'
begin
select * from Hostel_incharge_info where pk_id=@pk_id
end

if @action='show'
begin
select * from Hostel_incharge_info
end

if @action='delete'
begin
delete from Hostel_incharge_info where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[hostel_fee_refund_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[hostel_fee_refund_proc]
@action varchar(max),
@pk_id int,
@student_id varchar(max),
@student_name varchar(max),
@date varchar(max),
@no_of_months varchar(max),
@total_amount varchar(max),
@amount_pay varchar(max),
@Hostel_name varchar(max),
@hostel_type varchar(max),
@month_stay_in_hostel varchar(max),
@refund_amt varchar(max),
@status varchar(max)
AS
if @action='insert'
begin
insert into hostel_fee_refund values(@student_id,@student_name,@date,@no_of_months,@total_amount,@amount_pay,@Hostel_name,@hostel_type,@month_stay_in_hostel,@refund_amt,@status)
end

if @action='update'
begin
update hostel_fee_refund set student_id=@student_id,student_name=@student_name, date=@date,no_of_months=@no_of_months,total_amount=@total_amount,amount_pay=@amount_pay,Hostel_name=@Hostel_name,hostel_type=@hostel_type,month_stay_in_hostel=@month_stay_in_hostel,refund_amt=@refund_amt,status=@status where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[hostel_fee_refund_event_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hostel_fee_refund_event_proc]
@action varchar(max),
@pk_id int
AS
if @action='delete'
begin
delete from hostel_fee_refund where pk_id=@pk_id
end

if @action='show'
begin
select * from hostel_fee_refund
end

if @action='select'
begin
select * from hostel_fee_refund where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[hostel_fee_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[hostel_fee_proc]
@action varchar(max),
@pk_id int,
@s_id varchar(max),
@batch varchar(max),
@class varchar(max),
@stream varchar(max),
@roll_no varchar(max),
@student_name varchar(max),
@date_of_pay varchar(max),
@Hostel_name varchar(max),
@hostel_type varchar(max),
@hostel_fee varchar(max),
@amount_type varchar(max),
@amount_pay varchar(max),
@remaining varchar(max),
@status varchar(max)
AS
if @action='insert'
begin
insert into hostel_fee values(@s_id,@batch,@class,@stream,@roll_no,@student_name,@date_of_pay,@Hostel_name,@hostel_type,@hostel_fee,@amount_type,@amount_pay,@remaining,@status)
end

if @action='update'
begin
update hostel_fee set s_id=@s_id, batch=@batch,class=@class,stream=@stream,roll_no=@roll_no,student_name=@student_name, date_of_pay=@date_of_pay,Hostel_name=@Hostel_name,hostel_type=@hostel_type,hostel_fee=@hostel_fee,amount_type=@amount_type,amount_pay=@amount_pay,remaining=@remaining,status=@status where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[hostel_fee_event_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hostel_fee_event_proc]
@action varchar(max),
@pk_id int
AS
if @action='delete'
begin
delete from hostel_fee where pk_id=@pk_id
end

if @action='show'
begin
select * from hostel_fee
end

if @action='select'
begin
select * from hostel_fee where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[fee_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[fee_procevent]
@action varchar(10)
,@payment_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from fee where payment_id=@payment_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from fee where payment_id=@payment_id order by payment_id
     end
     if @action='show'
     begin
     select * from fee 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[fee_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[fee_proc]
@action varchar(10)
,@payment_id int
,@class varchar(max)
,@section varchar(max)
,@roll_no varchar(max)
,@student_name varchar(max)
,@father_name varchar(max)
,@title varchar(max)
,@description varchar(max)
,@date varchar(max)
,@Total int
,@payment int
,@balance int
,@status varchar(max)

as

		-----insert
		if @action='insert'
		begin
		insert into fee values(@class,@section,@roll_no,@student_name,@father_name,@title,@description,@date,@Total,@payment,@balance,@status)
		end
		
		-----update
		if @action='Update'
		begin
		Update fee set class=@class,section=@section,roll_no=@roll_no,student_name=@student_name,father_name=@father_name,title=@title,description=@description,date=@date,Total=@Total,payment=@payment,balance=@balance,status=@status where payment_id=@payment_id
		end
GO
/****** Object:  StoredProcedure [dbo].[examterm_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[examterm_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@examterm varchar(max),
@class varchar(max),
@section varchar(max)
as
if @action='insert'
begin
insert into examterm values(@batch,@stream,@examterm,@class,@section)
end

if @action='update'
begin
update examterm set batch=@batch,stream=@stream,examterm=@examterm,class=@class,section=@section where pk_id=@pk_id
end
if @action='exam'
begin
select * from examterm where batch=@batch and stream=@stream and examterm=@examterm and class=@class and section=@section
end
if @action='section'
begin
select distinct section_name from section where class=@class
end
if @action='batch'
begin
Select * from batch_tbl
end
if @action='stream'
begin
Select Distinct stream from studentinfo where batch=@batch
end

if @action='class'
begin
select distinct class_name from class_info
end
GO
/****** Object:  StoredProcedure [dbo].[examterm_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[examterm_dlt_proc]
@action varchar(max),
@pk_id int

as
if @action='select'
begin
select * from examterm where pk_id=@pk_id
end

if @action='show'
begin
select * from examterm
end

if @action='delete'
begin
delete from examterm where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[examsechdule_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[examsechdule_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from examsechdule where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from examsechdule where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from examsechdule 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[examsechdule_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[examsechdule_proc]
@action varchar(max)
,@pk_id int
,@batch varchar(max)
,@class varchar(max)
,@section varchar(max)
,@stream varchar(max)
,@subject varchar(max)
,@paper varchar(max)
,@examdate varchar(max)
,@starttime varchar(50)
,@endtime varchar(50) 

as

		-----insert
		if @action='insert'
		begin
		insert into examsechdule values(@batch,@class,@section,@stream,@subject,@paper,@examdate,@starttime,@endtime)
		end
		
		-----update
		if @action='Update'
		begin
		Update examsechdule set batch=@batch,class=@class,section=@section,stream=@stream,subject=@subject,paper=@paper,examdate=@examdate,starttime=@starttime,endtime=@endtime where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[event_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[event_proc]
@action varchar(max),
@event_id int,
@event_name varchar(max),
@description varchar(max),
@photo varchar(max),
@date varchar(max)

AS

if @action='insert'
begin
insert into events values(@event_name,@description,@photo,@date)
end

if @action='update'
begin
update events set event_name=@event_name,description=@description,photo=@photo,date=@date where event_id=@event_id
end
GO
/****** Object:  StoredProcedure [dbo].[event_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[event_dlt_proc]
@action varchar(max),
@event_id int

AS

if @action='delete'
begin
delete from events where event_id=@event_id
end

if @action='show'
begin
select * from events
end

if @action='select'
begin
select * from events where event_id=@event_id
end
GO
/****** Object:  StoredProcedure [dbo].[employeetype_procevent]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[employeetype_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from employeetype where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from employeetype where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from employeetype 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[employeetype_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[employeetype_proc]
@action varchar(10)
,@pk_id int
,@name varchar(max)




as

		-----insert
		if @action='insert'
		begin
		insert into employeetype values(@name)
		end
		
		-----update
		if @action='Update'
		begin
		Update employeetype set name=@name where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[driver_info_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[driver_info_proc]
@action varchar(max),
@driver_id int,
@driver_name varchar(max),
@License_no varchar(max),
@dob varchar(max),
@license_expiry_date varchar(max),
@contact_no varchar(max),
@experience varchar(max),
@refrence_name varchar(max),
@refrence_contactno varchar(max),
@address varchar(max)

AS
if @action='insert'
begin
insert into driver_info values(@driver_name,@License_no,@dob,@license_expiry_date,@contact_no,@experience,@refrence_name,@refrence_contactno,@address)
end

if @action='update'
begin
update driver_info set driver_name=@driver_name,License_no=@License_no,dob=@dob,license_expiry_date=@license_expiry_date,contact_no=@contact_no,experience=@experience,refrence_name=@refrence_name,refrence_contactno=@refrence_contactno,address=@address where driver_id=@driver_id
end
if
@action='driverexist'
begin
select * from driver_info where driver_name=@driver_name and License_no=@License_no
end
GO
/****** Object:  StoredProcedure [dbo].[driver_info_event_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[driver_info_event_proc]
@action varchar(max),
@driver_id int

AS
if @action='delete'
begin
delete from driver_info where driver_id=@driver_id
end

if @action='show'
begin
select * from driver_info
end

if @action='select'
begin
select * from driver_info where driver_id=@driver_id
end
GO
/****** Object:  View [dbo].[day_prt_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[day_prt_view]
AS 
SELECT  day_tbl.day,day_tbl.roll_no,day_tbl.student_name,day_tbl.class,day_tbl.section,day_tbl.batch,day_tbl.stream,parentinfo.email,parentinfo.password
 from dbo.day_tbl    
  INNER JOIN

 dbo.parentinfo
 ON dbo.day_tbl.student_name=dbo.parentinfo.student_name
GO
/****** Object:  View [dbo].[dat_stu_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[dat_stu_view]
AS 
SELECT  day_tbl.day,day_tbl.roll_no,day_tbl.student_name,day_tbl.class,day_tbl.section,day_tbl.batch,day_tbl.stream,studentinfo.email,studentinfo.password
 from dbo.day_tbl    
  INNER JOIN

 dbo.studentinfo
 ON dbo.day_tbl.student_name=dbo.studentinfo.student_name
GO
/****** Object:  StoredProcedure [dbo].[dashimage_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dashimage_proc]
@action varchar(50),
@pk_id int,
@image varchar(max)
as
if @action='insert'
begin
insert into dashimage values(@image)
end

if @action='update'
begin
update dashimage set image=@image where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[dashimage_event_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dashimage_event_proc]
@action varchar(50),
@pk_id int
as
if @action='select'
begin
select * from dashimage where pk_id=@pk_id
end

if @action='show'
begin
select * from dashimage
end

if @action='delete'
begin
delete from dashimage where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[dailydairy_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[dailydairy_proc]
@action varchar(50),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@class varchar(max),
@section varchar(max),
@subject_name varchar(max),
@date varchar(max),
@description varchar(max)
as
if @action='insert'
begin
insert into dailydiary values(@batch,@stream,@class,@section,@subject_name,@date,@description)
end

if @action='update'
begin
update dailydiary set batch=@batch,stream=@stream,class=@class,section=@section,subject_name=@subject_name,date=@date,description=@description where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[dailydairy_dlt_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dailydairy_dlt_proc]
@action varchar(50),
@pk_id int
as
if @action='select'
begin
select * from dailydiary where pk_id=@pk_id
end

if @action='show'
begin
select * from dailydiary 
end

if @action='delete'
begin
delete from dailydiary where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[dailyattend_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[dailyattend_proc]
@action varchar(10)
,@pk_id int
,@date varchar(max)
,@batch varchar(max)
,@stream varchar(max)
,@class varchar(max)
,@section varchar(max)
,@roll_no varchar(max)
,@name varchar(max)
,@status varchar(max)	
 


as

		-----insert
		if @action='countattend'
		begin
		select count(*) as count from dailyattandance where date=@date and status=@status
		end
GO
/****** Object:  StoredProcedure [dbo].[cupboardself_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[cupboardself_proc]
@action varchar(max),
@pk_id int,
@name varchar(max),
@cupboard varchar(max),
@capacity varchar(max),
@detail  varchar(max)

AS

if @action='insert'
begin
insert into cupboardself values(@name,@cupboard,@capacity,@detail)
end

if @action='update'
begin
update cupboardself set name=@name,cupboard=@cupboard,capacity=@capacity,detail=@detail where pk_id=@pk_id
end

if @action='exist'
begin
   select * from cupboardself where name=@name 
end
GO
/****** Object:  StoredProcedure [dbo].[cupboardself_event_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[cupboardself_event_proc]
@action varchar(max),
@pk_id int
AS

if @action='select'
begin
select * from cupboardself where pk_id=@pk_id
end

if @action='show'
begin
select * from cupboardself
end

if @action='delete'
begin
delete from cupboardself where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[createpage_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[createpage_proc]
(
@action varchar(max),
@page_id int,
@role_id int,
@page_name varchar(200),
@page_url varchar(200),
@description varchar(max),
@role_name varchar(200)
)

as
if @action='insert'
begin
insert into allow_page (role_id,page_name,page_url,description,role_name) values (@role_id,@page_name,@page_url,@description,@role_name)
end

if @action='update'
begin
update allow_page set  page_name=@page_name,page_url=@page_url,description=@description,role_name=@role_name where page_id=@page_id
end

if @action='select'
begin
select * from allow_page order by page_id desc
end

if @action='delete'
begin
delete from allow_page where page_id=@page_id
end

if @action='id'
begin
select * from allow_page 
end

if @action='select_id'
begin
select * from allow_page where page_id=@page_id
end

if @action='select_rolename'
begin
select * from allow_page where role_name=@role_name
end
GO
/****** Object:  StoredProcedure [dbo].[create_cupboard_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[create_cupboard_proc]
@action varchar(max),
@pk_id int,
@name varchar(max),
@detail  varchar(max)

AS

if @action='insert'
begin
insert into create_cupboard values(@name,@detail)
end

if @action='update'
begin
update create_cupboard set name=@name,detail=@detail where pk_id=@pk_id
end

if @action='exist'
begin
Select * from create_cupboard where name=@name
end
GO
/****** Object:  StoredProcedure [dbo].[create_cupboard_event_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[create_cupboard_event_proc]
@action varchar(max),
@pk_id int
AS

if @action='select'
begin
select * from create_cupboard where pk_id=@pk_id
end

if @action='show'
begin
select * from create_cupboard
end

if @action='delete'
begin
delete from create_cupboard where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[notice_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[notice_proc]
@action varchar(max),
@pk_id int,
@subject varchar(max),
@notice varchar(max),
@date varchar(max)

AS
if @action='insert'
begin
insert into noticeboard values(@subject,@notice,@date)
end

if @action='update'
begin
update noticeboard set subject=@subject,notice=@notice,date=@date where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[notice_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[notice_dlt_proc]
@action varchar(max),
@pk_id int
AS 
if @action='delete'
begin
delete from noticeboard where pk_id=@pk_id
end

if @action='show'
begin
select * from noticeboard
end

if @action='select'
begin
select * from noticeboard where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[librarycard_generate_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[librarycard_generate_proc]
@action varchar(max),
@pk_id int,
@card_no varchar(max),
@type varchar(max),
@id varchar(max),
@name varchar(max),
@batch varchar(max),
@class varchar(max),
@section varchar(max),
@stream varchar(max),
@roll varchar(max),
@father_name varchar(max),
@mobile varchar(max),
@address1 varchar(max)

AS
if @action='insert'
begin
    insert into librarycard_generate values(@card_no,@type,@id,@name,@batch,@class,@section,@stream,@roll,@father_name,@mobile,@address1)
end

if @action='update'
begin
    update librarycard_generate set card_no=@card_no,type=@type,id=@id,name=@name,batch=@batch,class=@class,section=@section,stream=@stream,roll=@roll,father_name=@father_name,mobile=@mobile,address1=@address1
     where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[librarycard_generate_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[librarycard_generate_dlt_proc]
@action varchar(max),
@pk_id int
AS
if @action='select'
begin
select * from librarycard_generate where pk_id=@pk_id
end

if @action='show'
begin
select * from librarycard_generate
end

if @action='delete'
begin
delete from librarycard_generate where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[lectureplan_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[lectureplan_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from lectureplan where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from lectureplan where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from lectureplan 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[lectureplan_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[lectureplan_proc]
@action varchar(10)
,@pk_id int
,@teacher_name varchar(50)
,@batch varchar(max)
,@stream varchar(max)
,@class varchar(max)
,@section varchar(max)
,@subject varchar(max)
,@image varchar(max)




as

		-----insert
		if @action='insert'
		begin
		insert into lectureplan values(@teacher_name,@batch,@stream,@class,@section,@subject,@image)
		end
		
		-----update
		if @action='Update'
		begin
		Update lectureplan set teacher_name=@teacher_name,batch=@batch,stream=@stream,class=@class,section=@section,subject=@subject,image=@image where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[item_location_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[item_location_proc]
@action varchar(max),
@pk_id int,
@location_name varchar(max),
@item_name varchar(max)

as
if @action='insert'
begin
insert into item_location values(@location_name,@item_name)
end

if @action='update'
begin
update item_location set location_name=@location_name,item_name=@item_name where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[item_location_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[item_location_dlt_proc]
@action varchar(max),
@pk_id int

as
if @action='select'
begin
select * from item_location where pk_id=@pk_id
end

if @action='show'
begin
select * from item_location
end

if @action='delete'
begin
delete from item_location where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[issuebook_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[issuebook_proc]
@action varchar(max),
@pk_id int


AS

if @action='issuebooks'
begin
Select count(*) as count from issue_book
end
GO
/****** Object:  StoredProcedure [dbo].[insert_class_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_class_proc]
@action varchar(50),
@pk_id int,
@class varchar(max)
 as
 if @action='insert'
 begin
 insert into insert_class values(@class)
 end
 
 if @action='update'
 begin
 update insert_class set class=@class where pk_id=@pk_id
 end
GO
/****** Object:  StoredProcedure [dbo].[insert_class_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_class_dlt_proc]
@action varchar(50),
@pk_id int
as
if @action='select'
begin
 select * from insert_class where pk_id=@pk_id
end

if @action='show'
begin
 select * from insert_class 
end

if @action='delete'
begin
 delete from insert_class where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[hostel_room_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[hostel_room_proc]
@action varchar(max),
@pk_id int,
@hostel_name varchar(max),
@no_of_rooms varchar(max),
@room_type varchar(max),
@seat varchar(max),
@available int ,
@room_charge varchar(max)
AS

if @action='insert'
begin
insert into hostel_room values(@hostel_name,@no_of_rooms,@room_type,@seat,@available,@room_charge)
end

if @action='update'
begin
update hostel_room set hostel_name=@hostel_name,no_of_rooms=@no_of_rooms,room_type=@room_type,seat=@seat,available=@available,room_charge=@room_charge where pk_id=@pk_id
end

if @action='roomcount'
begin
Select sum(available) as sum from hostel_room
end
GO
/****** Object:  StoredProcedure [dbo].[hostel_room_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[hostel_room_dlt_proc]
@action varchar(max),
@pk_id int
AS

if @action='select'
begin
select * from hostel_room where pk_id=@pk_id
end

if @action='show'
begin
select * from hostel_room
end

if @action='delete'
begin
delete from hostel_room where pk_id=@pk_id
end
GO
/****** Object:  View [dbo].[parent_stuinfo_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[parent_stuinfo_view]
AS 
SELECT  studentinfo.roll_no,studentinfo.batch,studentinfo.stream,studentinfo.class,studentinfo.section,parentinfo.firstname,parentinfo.student_name,parentinfo.email,parentinfo.password
 from dbo.studentinfo    
  INNER JOIN

 dbo.parentinfo
 ON dbo.studentinfo.student_name=dbo.parentinfo.student_name
GO
/****** Object:  View [dbo].[parent_studentview_atten]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[parent_studentview_atten]
AS 
SELECT  studentinfo.student_name,studentinfo.father_name,studentinfo.mother_name,studentinfo.roll_no
 ,parentinfo.firstname,parentinfo.mobilephone,parentinfo.email,parentinfo.password
 from dbo.studentinfo    
  INNER JOIN
  
 dbo.parentinfo 
 ON dbo.studentinfo.student_name=dbo.parentinfo.student_name
GO
/****** Object:  View [dbo].[parent_stuattend_search]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[parent_stuattend_search]
AS 
SELECT  student_attandence.class,student_attandence.day,student_attandence.section,student_attandence.month,
student_attandence.year,student_attandence.status,parentinfo.student_name,parentinfo.email,parentinfo.password
 from dbo.student_attandence    
  INNER JOIN

 dbo.parentinfo
 ON dbo.student_attandence.student_name=dbo.parentinfo.student_name
GO
/****** Object:  View [dbo].[Parent_showtransportfee]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Parent_showtransportfee] 
as
select allocatestationstudent.batch,allocatestationstudent.class, allocatestationstudent.section,allocatestationstudent.stream,allocatestationstudent.roll_no,allocatestationstudent.student_name,allocatestationstudent.route,allocatestationstudent.station,allocatestationstudent.bus_no,allocatestationstudent.way_side,allocatestationstudent.fee,allocatestationstudent.pay_fee,allocatestationstudent.remaining
,parentinfo.firstname,parentinfo.email,parentinfo.password 
from allocatestationstudent
Inner join
parentinfo
on allocatestationstudent.student_name=parentinfo.student_name
GO
/****** Object:  View [dbo].[Parent_showmarks]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Parent_showmarks] 
as
select addmarks.examterm,addmarks.class,addmarks.section,addmarks.subject,addmarks.student_name,addmarks.roll_no,addmarks.obtain_marks,addmarks.maximum_marks,addmarks.comment
,parentinfo.firstname,parentinfo.email,parentinfo.password 
from addmarks
Inner join
parentinfo
on addmarks.student_name=parentinfo.student_name
GO
/****** Object:  View [dbo].[Parent_showfee]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Parent_showfee] 
as
select altter_fee_show.student_name,altter_fee_show.roll_no,altter_fee_show.father_name,altter_fee_show.mother_name,altter_fee_show.class,altter_fee_show.section,altter_fee_show.date,altter_fee_show.fee,altter_fee_show.feetype,altter_fee_show.payment,altter_fee_show.balance,altter_fee_show.status
,parentinfo.firstname,parentinfo.email,parentinfo.password 
from altter_fee_show
Inner join
parentinfo
on altter_fee_show.student_name=parentinfo.student_name
GO
/****** Object:  View [dbo].[Parent_showcomplaintteacher]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Parent_showcomplaintteacher] 
as
select student_complaint.class,student_complaint.section,student_complaint.Student_name,student_complaint.roll_no,student_complaint.date,student_complaint.complaint
,parentinfo.firstname,parentinfo.email,parentinfo.password 
from student_complaint
Inner join
parentinfo
on student_complaint.student_name=parentinfo.student_name
GO
/****** Object:  View [dbo].[Parent_showcomplaintadmin]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Parent_showcomplaintadmin] 
as
select admin_add_complaint.class,admin_add_complaint.section,admin_add_complaint.student_name,admin_add_complaint.student_rollno,admin_add_complaint.date,admin_add_complaint.complaint
,parentinfo.firstname,parentinfo.email,parentinfo.password 
from admin_add_complaint
Inner join
parentinfo
on admin_add_complaint.student_name=parentinfo.student_name
GO
/****** Object:  StoredProcedure [dbo].[parent_review_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[parent_review_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from parent_review where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from parent_review where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from parent_review 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[parent_review_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[parent_review_proc]
@action varchar(10)
,@pk_id int
,@parent_name varchar(max)
,@student_name varchar(max)
,@student_class varchar(max)
,@section varchar(max)
,@review_date varchar(max)
,@review varchar(max)

as

		-----insert
		if @action='insert'
		begin
		insert into parent_review values(@parent_name,@student_name,@student_class,@section,@review_date,@review)
		end
		
		-----update
		if @action='Update'
		begin
		Update parent_review set parent_name=@parent_name,student_name=@student_name,student_class=@student_class,section=@section,review_date=@review_date,review=@review where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[parentinfo_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[parentinfo_procevent]
@action varchar(10)
,@parent_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from parentinfo where parent_id=@parent_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from parentinfo where parent_id=@parent_id order by parent_id
     end
     if @action='show'
     begin
     select * from parentinfo 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[parentinfo_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[parentinfo_proc]
@action varchar(10)
,@parent_id int
,@firstname varchar(max)
,@student_name varchar(max)
,@relation varchar(max)
,@dob varchar(max)
,@qualification varchar(max)
,@occupation varchar(max)
,@income varchar(max)
,@email varchar(max)	
,@mobilephone varchar(max)
,@password varchar(max)
,@type varchar(max) 


as

		-----insert
		if @action='insert'
		begin
		insert into parentinfo values(@firstname,@student_name,@relation,@dob, @qualification,@occupation,@income,@email,@mobilephone,@password,@type)
		end
		
		-----update
		if @action='Update'
		begin
		Update parentinfo set firstname=@firstname,student_name=@student_name,relation=@relation,dob=@dob, qualification=@qualification, occupation=@occupation,
		income=@income,email=@email,mobilephone=@mobilephone,password=@password where parent_id=@parent_id
		end
		
		if @action='totalparents'
		begin
		Select count(*) as count from parentinfo
		end
GO
/****** Object:  View [dbo].[Parent_addreview_view]    Script Date: 07/01/2016 14:05:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[Parent_addreview_view] 
as
select add_review.father_name,add_review.student_name,add_review.roll_no,add_review.class,add_review.section,add_review.complaint
,parentinfo.firstname,parentinfo.email,parentinfo.password 
from add_review
Inner join
parentinfo
on add_review.student_name=parentinfo.student_name
GO
/****** Object:  StoredProcedure [dbo].[Pamphlet_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Pamphlet_proc]
@action varchar(50),
@pk_id int,
@pdf varchar(100)
as
if @action='insert'
begin
insert into Pamphlet values(@pdf)
end

if @action='update'
begin
update Pamphlet set pdf=@pdf where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[Pamphlet_dlt_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Pamphlet_dlt_proc]
@action varchar(50),
@pk_id int
as
if @action='select'
begin
select * from Pamphlet where pk_id=@pk_id
end

if @action='show'
begin
select * from Pamphlet
end

if @action='delete'
begin
delete from Pamphlet where pk_id=@pk_id
end
GO
/****** Object:  StoredProcedure [dbo].[Proc_AllowPriviledge]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Proc_AllowPriviledge]
@action varchar(max),
@pk_id varchar(Max),
@role_id int,
@role_name varchar(max),
@user_id int ,
@UserName varchar(max),
@page_id int
as
begin
	if @action = 'Insert'
	begin
		insert into tbl_allow_priviledges values(@role_id,@role_name,@user_id,@UserName,@page_id)
	end
	
	if(@action = 'update')
	begin
		update  tbl_allow_priviledges set role_id=@role_id,role_name=@role_name,user_id=@user_id,UserName=@UserName,page_id=@page_id
		 where pk_id=@pk_id
	end
	
	if(@action='select')
	begin
		select * from tbl_allow_priviledges
	end
	
	if(@action='select_id')
	begin
		select * from tbl_allow_priviledges where pk_id=@pk_id
	end
	
	if(@action='delete')
	begin
		delete from tbl_allow_priviledges where pk_id=@pk_id
	end
	
end
GO
/****** Object:  StoredProcedure [dbo].[participationcertificate_procevent]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[participationcertificate_procevent]
@action varchar(10)
,@pk_id int

as
begin
     -----delete
     if @action='delete'
     begin
     delete from participationcertificate where pk_id=@pk_id
     end
     ------Edit
     if @action='Select_id'
     begin
     select * from participationcertificate where pk_id=@pk_id order by pk_id
     end
     if @action='show'
     begin
     select * from participationcertificate 
     end
end
GO
/****** Object:  StoredProcedure [dbo].[participationcertificate_proc]    Script Date: 07/01/2016 14:06:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[participationcertificate_proc]
@action varchar(10)
,@pk_id int
,@schoolname varchar(max)
,@student_name varchar(max)
,@participation_title varchar(max)
,@description varchar(max)
,@date varchar(max)
as

		-----insert
		if @action='insert'
		begin
		insert into participationcertificate values(@schoolname,@student_name,@participation_title,@description,@date)
		end
		
		-----update
		if @action='Update'
		begin
		Update participationcertificate set schoolname=@schoolname,student_name=@student_name,participation_title=@participation_title,description=@description,date=@date where pk_id=@pk_id
		end
		
		if @action='school'
		begin
		select * from participationcertificate where pk_id=@pk_id
		end
GO
/****** Object:  StoredProcedure [dbo].[admin_add_complaint_proc]    Script Date: 07/01/2016 14:06:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[admin_add_complaint_proc]
@action varchar(max),
@pk_id int,
@batch varchar(max),
@stream varchar(max),
@class varchar(max),
@section varchar(max),
@Student_name varchar(max),
@student_rollno int,
@date varchar(max),
@complaint varchar(max)


AS

if @action='insert'
begin
insert into admin_add_complaint values(@batch,@stream,@class,@section,@Student_name,@student_rollno,@date,@complaint)
end

if @action='update'
begin
update admin_add_complaint set @batch=@batch,@stream=@stream,class=@class,section=@section,Student_name=@Student_name,student_rollno=@student_rollno,date=@date,complaint=@complaint where pk_id=@pk_id
end

if @action='class'
begin
select distinct class_name from class_info
end

if @action='student'
begin
select * from studentinfo where class=@class and section=@section and batch=@batch
end

if @action='roll'
begin
select * from studentinfo where class=@class and section=@section and student_name=@student_name and batch=@batch
end


if @action='section'
begin
select Distinct section_name from section where class=@class
end

if @action='batch'
begin
select * from batch_tbl
end

if @action='stream'
begin
select Distinct stream from studentinfo where batch=@batch
end
if @action='complaint'
begin
Select * from studentcomplaint_view where batch=@batch and class=@class and section=@section and stream=@stream and student_name=@student_name and roll_no=@student_rollno
end
GO
