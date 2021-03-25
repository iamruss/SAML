CREATE TABLE [dbo].[db_SamlTokenStore](
	                    [UserId] [int] NOT NULL,
                        [ClientId] [varchar](256) NOT NULL, 
                        [Email] [nvarchar](1024) NOT NULL,
	                    [SamlOAuthData] [text] NOT NULL,
	                    [ResponseDate] [datetime] NOT NULL,
                    CONSTRAINT [PK_db_SamlTokenStore] PRIMARY KEY CLUSTERED 
                    (
	                    [UserId] ASC,
						[ClientId] ASC
                    ) ON [PRIMARY],
                    CONSTRAINT [UC_db_SamlTokenStore_ClientId] UNIQUE NONCLUSTERED  
                    (
                        [ClientId] ASC
                    ) ON [PRIMARY]);CREATE INDEX [IX_db_SamlTokenStore_UserId] ON [dbo].[db_SamlTokenStore]
                    (
	                    [UserId], [ResponseDate] DESC
                    )ON [PRIMARY]


/****** Object:  Table [dbo].[db_SamlTempTokenData]    Script Date: 3/24/2021 2:02:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[db_SamlTempTokenData](
	[TokenKey] [uniqueidentifier] NOT NULL,
	[EncryptedData] [ntext] NOT NULL,
 CONSTRAINT [PK_db_SamlTempTokenData] PRIMARY KEY CLUSTERED 
(
	[TokenKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


