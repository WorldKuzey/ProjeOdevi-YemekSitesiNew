USE [master]
GO
/****** Object:  Database [Dbo_yemektarifi]    Script Date: 1.01.2022 22:08:48 ******/
CREATE DATABASE [Dbo_yemektarifi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dbo_yemektarifi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dbo_yemektarifi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dbo_yemektarifi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dbo_yemektarifi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dbo_yemektarifi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dbo_yemektarifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dbo_yemektarifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dbo_yemektarifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dbo_yemektarifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dbo_yemektarifi] SET  MULTI_USER 
GO
ALTER DATABASE [Dbo_yemektarifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dbo_yemektarifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dbo_yemektarifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dbo_yemektarifi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dbo_yemektarifi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dbo_yemektarifi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Dbo_yemektarifi] SET QUERY_STORE = OFF
GO
USE [Dbo_yemektarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiId] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](100) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL,
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KategoriId] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[MesajId] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajSahip] [varchar](50) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajBaslik] [varchar](50) NULL,
	[MesajIcerik] [varchar](500) NULL,
 CONSTRAINT [PK_Tbl_Mesajlar] PRIMARY KEY CLUSTERED 
(
	[MesajId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[TarifId] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](50) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TarifId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[YemekId] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL,
	[YemekPuan] [float] NULL,
	[KategoriId] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[YemekId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[YoneticiId] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 1.01.2022 22:08:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[YorumId] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumaTarih] [smalldatetime] NULL,
	[YorumOnay] [bit] NULL,
	[YorumIcerik] [varchar](500) NULL,
	[YemekId] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YorumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Tbl_Hakkimizda] ([Metin]) VALUES (N'İştah açan, ilham veren, ağız sulandıran... Sadece yemek tarifleri değil... Güldürürken yediren...

Yemek.com, sevgilisini mutlu etmek için İtalyan mutfağını öğrenenin de, işi gücü bırakıp güneyde şarap üretmeyi, en olmadı Cihangir''de pilavcı açmayı hayal edenin de, övünerek anlatabildiği tek mutfak becerisi menemen olanın da, yurt dışına her çıkışında yemek yiyeceği yerlere göre otelini seçenin de, o gün yediği dev bir sufle için bütün hafta boyunca yediklerine dikkat etme zorunluluğu hissedenin de, yemeğin tadına bakmadan tuz atanın da, Instagram''a fotoğraf atabilmek için yemeğini soğutmayı göze alanın da sitesi.

Sadece karnını doyurmak isteyenler için değil, bir hazzın peşinde koşanlar için.

Farklı zevklerden ve renklerden gelen iştahlı ekibi ve dışarıdan katkı sağlayan birçok dostu ve partneri ile Yemek.com kocaman, upuzun, rengarenk bir masa kurdu ve bu masada epey sandalye var.

Bu nefis masada sizin de bir sandalyeniz var. İster yazar olarak, ister okur olarak.

İyi ki geldiniz, yine gelin.

Sevgiler bizden')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (22, N'Makarna', 5, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (23, N'Çorba', 4, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (24, N'Tatlı', 5, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (25, N'Et Yemekleri', 4, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (26, N'Sebze Yemekleri', 4, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (27, N'Pide', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (28, N'İçecekler', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (29, N'Balık', 3, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (30, N'Meze', 3, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriId], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (31, N'Pizza', 1, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([MesajId], [MesajSahip], [MesajMail], [MesajBaslik], [MesajIcerik]) VALUES (4, N'Mehmet Sarper', N'mehmet_sarper35@hotmail.com', N'Açıklama', N'Umarım sitemi beğenirsiniz.:D')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([TarifId], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (4, N'Limonata', N'1 adet limon
1 adet portakal
1 su bardağı toz şeker
1 tatlı kaşığı limon tuzu
3 litre su', N'Öncelikle portakal ve limonu buzluğa koyup dondurmamız gerekiyor.
1 gün önceden bırakın dondurucuya iyice donsun. Bu işlem limon ve portakal kabuğunun acı tadının olmaması için. İlk keşfedeni bulup tebrik etmek isterdim:)
Limonatayı hazırlayacağınız zaman portakal ve limonu buzluktan çıkarın. 10 dakika kadar bekleyin. Çokta beklemeyin öyle kendini bırakmasın. 4'' e bölünecek kıvamda olsun yeterli.
Robota portakal ve limonu dilimleyin ve içine koyun.
1 su bardağı şekeri üzerine ilave edin.
Kabuğuyla birlikte olmalı özelliği burada zaten o yüzden dikkat edelim. Robotu çalıştıralım ve iyice ezilene kadar çekelim. Öyle dakikalar sürmüyor 1-2 dakika yeterli. Robotunuz yoksa rendeleyebilirsiniz ve ondan sonra şekerle ovalayabilirsiniz.
3 lt suya çektiğimiz portakal limon şeker karışımını ekleyelim.
1 tatlı kaşığı limon tuzunu da ekleyip renginin iyice geçmesi için 5 dakika kadar bekleyelim.
Ara sıra karıştıralım ki limon tuzu ve şeker iyice erisin.
Benim ailem kalabalık yetmez derseniz 5 lt su ekleyin şekeri ve limon tuzunu da arttırın tabi.
Bir kaba temiz bir tülbent geçirelim ve içeceğimizi süzelim içinde hiç tane kalmasın. Tülbent olması önemli.
Hazır gibi oluyor hatta tadı daha güzel kaliteli markaların bile önüne geçen bir lezzet. Belki onlar da böyle yapıyordur:)
Tülbentte posa kalınca çamaşır sıkar gibi sıkın. En yoğun renk sıkınca çıkıyor. Üzerine az az su ekleyerek sıkabilirsiniz. Renk vermeyi bırakana kadar. Bakmayın böyle uzun uzun yazdığıma tek tek limon sıkıp yaptığımız limonatadan çok daha kolay ve lezzetli. Umarım denersiniz ve beğenirsiniz.', N'', N'Mehmet Sarper', N'mehmet_sarper35@hotmail.com', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (23, N'Fırında Makarna Beşamel Soslu', N'1 paket fırın makarna

Beşamel sos için;

1 çay bardağı sıvı yağ
2 yemek kaşığı un (silme olmasın, tepeleme de olmasın)
4 su bardağı süt
Yarım yemek kaşığı silme tuz
Üzeri için;

Rendelenmiş kaşar peyniri
Tereyağı (yoksa margarin de olabilir)
', N'Önce makarnamızı tuzlu suda haşlıyoruz.
O haşlanırken beşamel sosumuzu hazırlıyoruz. Tüm malzemeleri küçük bir tencerede muhallebi kıvamına gelip fokurdayana kadar orta ateşte pişiriyoruz.
Daha sonra makarnamızı süzüp borcama yerleştiriyoruz. (Ben oval borcam kullanıyorum tam geliyor)
Daha sonra beşamel sosumuzu üzerine gezdiriyoruz.
Kuru bir yer kalmamalı. Sonra üzerine rendelenmiş kaşar peynirimizi serpiyoruz.
En son tereyağından bıçak ucuyla kesip küçük parçalar halinde aralıklarla kenarlarına koyuyoruz.
Sonunda ortalarına da bir kaç parça koyuyoruz ve 180 derece ısıtılmış fırına sürüyoruz.
Yarım saat kadar pişiriyoruz. Size tavsiyem fırında piştikten sonra 15 dakika kadar içini çekmesi için bekletmeniz. Afiyet olsun.', NULL, CAST(N'2021-12-31T15:36:00' AS SmallDateTime), NULL, 22, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (24, N'Kabak Spagetti', N'4 adet orta boy kabak
4 yemek kaşığı zeytinyağı
Tuz
Domates Sosu:

1 adet büyük boy domates
1 yemek kaşığı domates salçası
3 yemek kaşığı sıcak su
Tuz
2 diş sarımsak
2 yemek kaşığı zeytinyağı
Karabiber
Pul biber
Üzerine:

Kaşar peyniri (isteğe bağlı)', N'Kabaklarımızı soyduktan sonra, salatalık-patates soyacağı ile uzun uzun şeritler çıkarıyoruz. Fotoğraftan net anlaşılıyor veya bıçak yardımı ile ince ince şeritler çıkarabilirsiniz.
Tavada yüksek ateşte kabaklar hafif kızarmaya başlayana kadar pişiriyoruz. Tuzunu da ekleyip altını kısmadan sürekli kavuracağız. Hafif bir su salıp çekiyor.
Kabağımızı kavururken bir yandan da domates sosumuzu hazırlıyoruz.
Sosu için uygun bir tencereye zeytinyağını ve sarımsakları ince ince doğrayıp tencereye ekleyerek bir iki tur kavuruyoruz.
Rendelenmiş domatesleri, karabiberi, pul biberi, yağı ve salçayı tavada kavuruyoruz. Kaynamaya başlayınca içine su ve tuz ilave ediyoruz. Pişiriyoruz.
Kavurduğumuz kabakları da ekleyip bir kaç dakika daha pişirelim. Üzerine de isteğe bağlı dilediğimiz miktarda kaşar rendesi koyuyoruz.
Afiyet olsun :)', NULL, CAST(N'2021-12-31T15:43:00' AS SmallDateTime), NULL, 22, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (25, N'Kıymalı Makarna', N'Yarım paket makarna (ben genelde mini burgu, mini boru gibi küçük olanları severim)
200 g kıyma
1 su bardağı domates rendesi
1 yemek kaşığı domates salçası
1 tatlı kaşığı biber salçası
3 diş sarımsak
3 yemek kaşığı sıvı yağ
Pul biber
Karabiber
Tuz', N'Öncelikle makarnayı her zaman olduğu gibi kaynar suda haşlamaya bırakın.
Derin bir teflon tencerede sıvı yağda kıymayı kavurun. Sarımsakları bir kaç parçaya bölerek onları da ilave edin.
Kavrulunca domates rendesi ve salçaları ekleyin.
Tuzunu ve baharatını da ayarlayın.
Bu arada kaynamış olan makarnanın suyundan da 1 kepçe kadar alarak hazırlamakta olduğunuz sosa ilave ederek sosunuzun kıvamını ayarlayın ve ocağı kapatın.
Makarnalar piştiğinde fazla suyunu süzerek onları da kıymalı sosa ilave edin ve karıştırın. Kıymalı makarnamız servise hazır, afiyet olsun :)', N'~/resimler/kiymali-makarna-guncelleme-sunum-1.jpg', CAST(N'2021-12-31T15:44:00' AS SmallDateTime), NULL, 22, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (26, N'Kendi Sosunda Pişen Kremalı Domatesli Makarna', N'250 gram makarna
2 domates
Yarım yemek kaşığı domates salçası
1 yemek kaşığı tatlı biber salçası
1 yemek kaşığı zeytinyağı
100 ml sıvı krema
1 tatlı kaşığı tereyağ
1 tatlı kaşığı tuz
1 çay kaşığı karabiber ve pulbiber
1 diş sarımsak
2, 5 su bardağı su (200 ml bardak ölçüsü ile)
İsteğe göre kurumuş maydanoz', N'Zeytinyağı, rondodan geçirdiğimiz domatesleri ve salçaları tavamıza alıp 2-3 dakika kavuralım.
Kremayı ekleyip karıştıralım.
Makarnayı ve tereyağını da ekleyip karıştıralım ve suyumuzu ekleyelim.
Suyumuz kaynadıktan sonra sarımsak ve baharatları ekleyelim, karıştıralım.
Ocağımızı orta ateşe alıp kapağı kapalı bir şekilde suyu çekene kadar pişirelim.
İsterseniz piştikten sonra taze veya kuru maydanoz ekleyip karıştırabilirsiniz. Benim en bi sevdiğim ve yemeye doyamadığım makarna tarifimi denerseniz şimdiden afiyet olsun ????????', NULL, CAST(N'2021-12-31T15:45:00' AS SmallDateTime), NULL, 22, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (27, N'Tavuklu Makarna', N'•	1paket Burgu Makarna
•	10su bardağı sıcak su
•	1çay kaşığı tuz
Tavuklu harcı için:
•	400gramfileto tavuk göğsü
•	3adetorta boy domates
•	1adetorta boy kuru soğan
•	1dişsarımsak
•	4yemek kaşığı zeytinyağı
•	1tatlı kaşığı domates salçası
•	1/4çay kaşığı toz kırmızı biber
•	1/2çay kaşığı tuz
•	1/2çay kaşığı taze çekilmiş tane karabiber
', N'1)	Tavuklu makarnanın lezzetini verecek olan tavuklu harcı hazırlamak için; fileto tavuk göğsünü iri parçalar halinde doğrayın.
2)	Kuru soğanı küçük parçalar halinde kesin. Sap kısımlarını alıp ortadan ikiye kestiğiniz sulu domatesler ve sarımsağı rendenin ince kısmıyla rendeleyin.
3)	Zeytinyağını geniş tabanlı bir tavada kızdırın. Küçük parçalar halinde doğranmış kuru soğan ve rendelenmiş sarımsağı kokusu çıkıp, hafif bir kıvam alana kadar orta ateşte soteleyin.
4)	İri parçalar halinde doğradığınız tavuk göğsü parçalarını katıp, yüksek ateşte tavuklar renk alana kadar soteleme işlemini sürdürün.
5)	Rendelenmiş domates, domates salçası, toz kırmızı biber, tuz ve taze çekilmiş tane karabiber kattığınız tavuklu sos harcını kısık ateşte kaynamaya bırakın.
6)	Makarnayı haşlamak için sıcak suyu derin bir tencerede kaynatın. Tuz ekledikten sonra makarnaları damak tadınıza göre 8-10 dakika kadar haşlayın.
7)	Makarnanın haşlama suyundan bir kepçe kadar alıp, kısık ateşte pişmekte olan makarna sosunun kıvamını açın.
8)	Haşlanan makarnayı süzdükten sonra durulamadan sos tavasının içine aktarın. Sosuyla ve arzuya göre toz parmesan peyniriyle harmanladığınız tavuklu makarnayı, sıcak olarak bekletmeden servis edin. Sevdiklerinizle paylaşın.

', NULL, CAST(N'2021-12-31T15:50:00' AS SmallDateTime), NULL, 22, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (28, N'Mercimek Çorbası ', N'1.3yemek kaşığı ay çiçek yağı
2.1adetkuru soğan(iri doğranmış)
3.1yemek kaşığı un
4.1adethavuç(iri doğranmış)
5.1adetpatates(büyük boy, iri doğranmış)
6.1tatlı kaşığı tuz
7.1çay kaşığı karabiber
8.1,5su bardağı kırmızı ya da sarı mercimek
9.6su bardağı sıcak su(1 adet et su tablet ile hazırlanmış)
Üzeri İçin:
11.3yemek kaşığı sıvı yağ
12.2yemek kaşığı tereyağı
13.1tatlı kaşığı kırmızı toz biber
', N'Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur.
Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir.
Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir.
Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir.
Çorba piştikten sonra el blenderı ile güzelce ezilir. Eğer blenderiniz yoksa süzgeçten de geçirebilirsiniz.
Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir ve karıştırılır. 5 dakika daha pişirelerek ocaktan alınır.
Kıvamı koyu gelirse size, bir miktar su ilave edilerek bir taşım kaynatılır.
Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır.
Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir.', NULL, CAST(N'2021-12-31T15:55:00' AS SmallDateTime), NULL, 23, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (29, N'Kelle Paça Çorbası', N'1 kilo kelle eti (düdüklüde haşlanıp ayıklanmış)
2 yumurta sarısı
1 yemek kaşığı tepeleme un.
4 yemek kaşığı yoğurt.
2 diş sarımsak.
Yarım limon suyu.
1 yemek kaşığı tereyağ
1, 5 veya 2 litre su (yoğun bir tadı olsun isterseniz haşlama suyundan da kullanabilirsiniz)', N'Kuzu ve dana kellesini düdüklü tencerede 2 saat kaynatın.
Pişen etleri ayıklayıp tuzunu ekleyin. Tekrar bir taşım daha kaynatın.
Sirke, sarımsak, limon, kimyon ve kırmızı pul biber eşliğinde servis yapın. Afiyet olsun.', NULL, CAST(N'2021-12-31T15:58:00' AS SmallDateTime), NULL, 23, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (30, N'İşkembe Çorbası ', N'500 gram işkembe.
Yarım limon.
1 adet kuru soğan.
2 yemek kaşığı yoğurt.
3 yemek kaşığı un.
1 yumurta sarısı
3 yemek kaşığı sıvı yağ
Pul biber, karabiber.', N'İşkembeler bir saat sirkeli suda bekletilir, sonra küp şeklinde doğranır.
45 dakika doğranan işkembeler düdüklü tencerede 1,5 litre suda pişirilir.
Ayrı bir tencerede sıvı yağ ile 4 yemek kaşığı un kavrulur.
Haşladığımız işkembenin soğumuş suyunu kavrulan una topaklanmaması için azar azar yedirilerek konur.
İşkembeler bu karışıma dökülür, kaynatılır.
15 dakika kaynatılan işkembeye arzu edilen miktarda sarımsak dövülür ve sirke ile birlikte çorbaya konur.
Çorbayı ocaktan almaya yakın terbiyesi hazırlanır.
Yumurta sarısı, yoğurt, limon suyu ve un çırpılır yavaş yavaş çorbaya ilave edilir.
10 dakika daha kaynamaya bırakılır.
Servis yapacağınız çorbayı kırmızı pul biber ve karabiberle süsleyip servise sunabilirsiniz.', NULL, CAST(N'2021-12-31T15:59:00' AS SmallDateTime), NULL, 23, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (31, N'Yoğurt Çorbası', N'1,5 su bardağı yoğurt.
5 yemek kaşığı pirinç
1 adet yumurta sarısı
1 yemek kaşığı un.
6 su bardağı su.
Tuz.
Üzeri İçin:
1 yemek kaşığı tereyağı', N'Yoğurt çorbası yapımı için, tencereye suyu ekleyin, kaynadıktan sonra pirinçleri ekleyin.
Bir kapta yumurta, un ve yoğurdu karıştırın.
Pişen pirincin üzerine ekleyin ve karıştırın.
Pişerken bir tutam kuru nane ekleyin.
10 dakikaya yakın pişirdikten sonra yoğurt çorbasının altını kapatın ve tuzunu ekleyin.
Yoğurt çorbası servise hazır. Afiyet olsun.', NULL, CAST(N'2021-12-31T16:01:00' AS SmallDateTime), NULL, 23, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (32, N'Kıbrıs Tatlısı', N'3 adet yumurta
Yarım su bardağı şeker
Yarım su bardağı sıvı yağ
1 su bardağı galeta unu
1 su bardağı kırılmış ceviz
1 su bardağı Hindistan cevizi
1 paket kabartma tozu

Kreması İçin;

1 litre süt
1 su bardağı nişasta
Yarım su bardağı şeker
1 paket vanilya
1 paket krem şanti

Şerbeti İçin;

2 bardak su
1,5 su bardağı şeker
1 paket vanilya', N'Kıbrıs tatlısı yapmak için, öncelikle şerbeti yapın çünkü kekin üzerine şerbet soğuk dökülecek. Bir tencereye suyu ve şekeri dökün. Kaynamaya başladıktan sonra altını kısıp, 15 dakika daha kaynatın.
Şerbet hazır olunca altını kapatın ve vanilyayı ekleyip, soğuması için bekletin.
Keki için; yumurtaları ve şekeri iyice çırpın. Diğer malzemeleri de ekleyip, karıştırın.
Yağlanmış bir tepsiye (ben büyük kare borcam kullandım) dökün.
160 derece fırında, 30 dakika pişirin.
Fırından çıkar çıkmaz soğuk şerbeti üzerine dökün ve soğuması için bekletin.
Kreması için; krem şanti hariç diğer malzemeleri bir tencerede muhallebi kıvamına gelene kadar pişirin.
Altını kapatın, toz krem şantiyi ekleyin ve blenderla 5 dakika çırpın.
Soğumuş şerbetli kekin üzerine, bu kremsi muhallebiyi dökün.
Üzerine bolca Hindistan cevizi (ben ceviz serptim) serpin.
Kıbrıs tatlısını, buzdolabında 2-3 saat bekletip servis yapın.', NULL, CAST(N'2021-12-31T16:03:00' AS SmallDateTime), NULL, 24, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (33, N'Fırın Sütlaç', N'1 litre süt
1 su bardağı şeker
Yarım su bardağı pirinç
3 yemek kaşığı buğday nişastası
1 paket vanilya
2 su bardağı su
Yarım su bardağı süt (nişastayı açmak için)', N'Fırında sütlaç için öncelikle pirinci haşlayalım. Pirinçleri güzelce yıkadıktan sonra 2 su bardağı su ile pişene kadar haşlayın. Çok az sulu kalacaktır.
Diğer malzemeleri ekleyelim ve sütlacı pişirelim. Haşlanan pirinçlerin üzerine sütü, vanilyayı ilave edip kaynatın. Karışım kaynamaya başlayınca şekeri ve yarım su bardağı sütle karıştırdığınız 3 yemek kaşığı buğday nişastasını ilave ediniz. 10-15 dk daha kaynatıp altını kapatın.
Sütlaçları fırına sürelim. Fırın için uygun ısıya dayanıklı sütlaç kaselerine sütlaçlarınızı paylaştırın. Tepsinize soğuk su doldurun ve sütlaç kaplarını fırın tepsinize dizin (Tepsideki su sütlaç kaplarının yarısına kadar gelecek)
Tepsiyi fırınınızın en üst rafına yerleştirin. 180 derecede, sütlaçlarınız kızarana kadar fırınlayın. Afiyet olsun.
Not: Toprak kase kullanacaksanız bu tarife göre 6 adet çıkıyor.', NULL, CAST(N'2021-12-31T16:07:00' AS SmallDateTime), NULL, 24, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (34, N'Pankek', N'2 adet yumurta
2 yemek kaşığı şeker
1 su bardağı süt
1,5 su bardağı un
1 paket kabartma tozu
1 paket vanilya
Pişirme aşamasında kullanmak için;
sıvı yağ

Servis önerisi:

Kivi, muz, çilek, reçel, bal, çikolata', N'2 adet yumurta
2 yemek kaşığı şeker
1 su bardağı süt
1,5 su bardağı un
1 paket kabartma tozu
1 paket vanilya
Pişirme aşamasında kullanmak için;

sıvı yağ
Servis önerisi:

Kivi, muz, çilek, reçel, bal, çikolata', NULL, CAST(N'2021-12-31T16:09:00' AS SmallDateTime), NULL, 24, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (35, N'Magnolia', N'5 su bardağı süt
4 yemek kaşığı un
100 ml krema (yarım kutu)
3/4 (bir yarım+bir çeyrek) su bardağı şeker
Vanilya
1 yumurta
1 paket bebe bisküvisi (yulaflı diğer bisküviler de tercih edilebilir)
1 su bardağı fındık', N'Uygun bir tencereye 1 litre sütü alın.
Sütü, yumurtayı, kremayı, unu, şekeri karıştırarak pişirin.
Muhallebi kıvamına gelip, göz göz olana kadar karıştırın.
Koyu kıvam aldığında, içine vanilyayı da ekleyerek altını kapatın.
Bebe bisküvilerinizi rondodan geçirin.
Fındıkları da rondodan geçirip, bebe bisküvilerinin içine karıştırın.
Kuplara bisküvi fındık karışımınızdan, muhallebinizden ve meyvelerden koyun. Sıralaması, miktarları tamamen sizin zevkinize kalmış.
Magnolianın bu sunumu için; ben karadut, çilek ve fındık kullandım.
Afiyet olsun.', NULL, CAST(N'2021-12-31T16:11:00' AS SmallDateTime), NULL, 24, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (37, N'Gelin Pastası', N'4 adet yumurta
1 su bardağı toz şeker
1 su bardağı un
1 paket kabartma tozu
1 paket vanilya
Keki Islatmak İçin;

2 su bardağı soğuk süt
2 yemek kaşığı şeker
Muhallebi İçin;

1 litre süt
1 su bardağı toz şeker
3 yemek kaşığı un
2 yemek kaşığı nişasta
1 paket vanilya
1 paket krem şanti (75 g)
Üzeri İçin;

Hindistan cevizi, fındık, ceviz (siz hangisini tercih ederseniz)', N'Yumurta ve şekeri mikser ile beyazlaşana kadar çırpalım.
Vanilya, kabartma tozu, unu ilave edelim ve tekrar karıştıralım.
Dikdörtgen borcamı yağlayalım ve kek hamurunu dökelim ve 170 derece ayarladığımız fırına koyalım.15 dk. içinde hazır olacaktır.
Kürdan yardımı ile kontrol edelim ve kekimizi soğumaya bırakalım.
Süt ve şekeri karıştıralım kekimiz tamamen soğuyunca üzerine dökelim.
Muhallebimizi hazırlayalım, krem şanti hariç bütün malzemeleri tencereye alıp karıştıralım ve ocağın altını açalım .
Koyulaşana kadar karıştıralım.
Koyulaştıktan sonra soğumaya bırakalım.
Ilık bir hale geldikten sonra toz bir şekilde krem şantiyi ekleyelim mikser yardımı ile çırpalım.
Eğer biraz katı gelirse yarım çay bardağı süt ilave edebilirsiniz.
3 dk. karıştırdıktan sonra kekin üzerine dökelim.
Buzdolabında 2-3 saat beklettikten sonra servis edebilirsiniz.', NULL, CAST(N'2021-12-31T16:18:00' AS SmallDateTime), NULL, 24, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (39, N'Kıymalı Makarna', N'Yarım paket makarna (ben genelde mini burgu, mini boru gibi küçük olanları severim)200 g kıyma1 su bardağı domates rendesi1 yemek kaşığı domates salçası1 tatlı kaşığı biber salçası3 diş sarımsak3 yemek kaşığı sıvı yağPul biberKarabiberTuz', N'Öncelikle makarnayı her zaman olduğu gibi kaynar suda haşlamaya bırakın.
Derin bir teflon tencerede sıvı yağda kıymayı kavurun. Sarımsakları bir kaç parçaya bölerek onları da ilave edin.
Kavrulunca domates rendesi ve salçaları ekleyin.
Tuzunu ve baharatını da ayarlayın.
Bu arada kaynamış olan makarnanın suyundan da 1 kepçe kadar alarak hazırlamakta olduğunuz sosa ilave ederek sosunuzun kıvamını ayarlayın ve ocağı kapatın.
Makarnalar piştiğinde fazla suyunu süzerek onları da kıymalı sosa ilave edin ve karıştırın. Kıymalı makarnamız servise hazır, afiyet olsun :)', N'~/resimler/kiymali-makarna-guncelleme-sunum-1.jpg', CAST(N'2021-12-31T16:22:00' AS SmallDateTime), NULL, 22, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (43, N'Kabak Mücveri ', N'
 3 adet yumurta
 3 adet kabak
 Yarım su bardağı un
 2-3 dal yeşil soğan
 Yarım demet maydanoz
 Bir tutam dereotu
 Tuz
 Karabiber
 Pul biber', N'İlk olarak mücver malzemelerini hazırlayalım. Kabakları soyarak rendenin iri kısmında rendeleyelim. Yeşil soğan, maydanoz ve dereotu minik minik doğrayalım.
 Kabak Mücver harcını hazırlayalım. Yumurtaları derince bir kaba alalım un ilave edilerek pürüzsüz kıvam alana kadar çırpalım. Baharatları, suyunu iyice sıktığımız kabakları ve doğranmış dereotu, yeşil soğan ve maydanozu eklenerek karıştıralım. Mücver harcımız hazır.
 Mücveri tavada pişirelim. Teflon tavaya az miktarda sıvı yağ alalım, kabak karışımından bir kaşık dökelim. Mücverlerin her iki yüzü de kızardıktan sonra havlu kağıt serilmiş tabağa alalım.
 Kabak mücveri servis edelim Mücverleri ister sıcak, isterseniz soğuk olarak servis edebilirsiniz.
Afiyet olsun.', NULL, CAST(N'2021-12-31T16:28:00' AS SmallDateTime), NULL, 26, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (44, N'Ispanak Yemeği', N'1 kg ıspanak
1 adet kuru soğan
Yarım çay bardağı pirinç
2 yemek kaşığı sıvı yağ
1 yemek kaşığı domates salçası
Tuz
Karabiber
Pul biber', N'Başlangıç olarak ıspanakları temizleyelim.
Diğer taraftan soğanı  doğrayıp sıvı yağda pembeleşene dek kavuralım.
Salçayı ilave edelim.
Ardından ıspanakları da ekleyelim ve ıspanaklar eriyinceye kadar kavuralım.
Yarım çay bardağı yıkanmış pirinci, tuz ve baharatları da ilave edelim.
1 su bardağı kaynar suyu da ekleyerek tencerenin kapağını kapatalım, kısık ateşte pirinçler yumuşayana dek pişirelim.
Yanında yoğurtla servis edelim, afiyet olsun…', NULL, CAST(N'2021-12-31T16:29:00' AS SmallDateTime), NULL, 26, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (45, N'Pırasa Yemeği ', N'5-6 dal pırasa (beyaz kısımları kullanılacak)
2 adet havuç
1 yemek kaşığı domates salçası
5-6 yemek kaşığı domates sosu
Yarım Türk kahvesi fincanı pirinç
2 yemek kaşığı sıvı yağ
Tuz
Sıcak su', N'Pırasa yemeği yapmak için pırasalar temizlenerek 1 cm uzunluğunda doğranır.
Bol su ile yıkanarak suyunun süzülmesi sağlanır.
2 adet orta boy havucun dış kısmı soyulur ve ince ince halka şeklinde dilimlenir.
Tencereye sıvı yağ alınarak salça eklenir ve kavrulur.
Rendelenmiş  domates  eklenerek 1-2 tur çevirelim.
Daha sonra havuç ilave edilir ve 2-3 dk hep birlikte kavrulması sağlanır.
Suyu süzülen pırasalar ilave edildikten sonra karıştırılır ve tencerenin kapağı kapatılır.
Orta ateşte pırasalar suyunu salıp, suyunu çekene kadar bu şekilde pişirilir.
Son olarak yıkanmış pirinç ilave edilir, tuzu ayarlanır ve yemekle aynı hizaya gelecek kadar sıcak su eklenir. Su miktarı gerekirse eğer sonradan ilave ederek ayarlayabilirsiniz.
Tencerenin kapağı kapatılarak havuçlar ve pırasalar pişene kadar kısık ateşte pişirilir. Tüm sebzeler yumuşadıktan sonra yemeğimiz servise hazır. Afiyet olsun.', NULL, CAST(N'2021-12-31T16:30:00' AS SmallDateTime), NULL, 26, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (46, N'Fırında Beşamel Soslu Karnabahar ', N'1 adet karnabahar Kaşar peyniri Beşamel sos için:  2 yemek kaşığı tereyağı 1 yemek kaşığı sıvı yağ 1,5 yemek kaşığı un 1,5 su bardağı süt Tuz Karabiber', N'Karnabaharlar küçük parçalara ayrılarak az tuz ile haşlanır.
Beşamel sosun yapımı için; tereyağı ve sıvı yağ küçük bir tencereye alınarak ısıtılır.
Un ilave edilerek kavrulur.
Kokusu çıkan un kavrulmuştur, üzerine 1,5 su bardağı süt ilave edilir.
Çırpıcı ile hızlıca çırpılır, topak kalmaması sağlanır.
Tuz ve karabiber de eklenerek, kaynayıncaya kadar karıştırılarak pişirilir.
1-2 dk. kaynadıktan sonra, ocaktan alınır.
Suyu süzülen karnabaharlar yağlanmış fırın kabına alınır ve üzerine hazırlanan beşamel sos dökülür.
Karnabaharlar beşamel sosa bulandıktan sonra, üzerine kaşar peyniri rendesi serpilerek, 180 derecede ısıtılmış fırında üzeri kızarana kadar pişirilir.
Afiyet olsun.', NULL, CAST(N'2021-12-31T16:32:00' AS SmallDateTime), NULL, 26, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (49, N'Lahmacun', N'2
adet
kırmızı biber
3
adet
yeşil biber
2
adet orta boy
soğan
1
demet
maydanoz
2
adet
domates
1
yemek kaşığı
domates salçası
1
yemek kaşığı
biber salçası
1/2
çay kaşığı
pul biber
1
çay kaşığı
toz kırmızı biber
1
çay kaşığı
tuz
1
çay bardağı
sıvı yağ
1/4
çay bardağı
su
500
gram
yağlı dana kıyma
Hamuru için:
5
su bardağı
un
2
su bardağı
su
1
tatlı kaşığı
tuz
1
çay kaşığı
toz şeker', N'Hamurunu hazırlamak için tezgaha un, tuz ve suyu koyun ve yoğurun. Yoğrulan hamuru 6’ya ayırın, ayrılan parçaları oklava veya merdane yardımıyla yuvarlak şeklini verin.
Ardından kapya biber, yeşil biber, soğan, sarımsak ve domatesi rondodan geçirin, üzerine kıyma, tuz, sıvı yağ, domates salçası ve biber salçasını ekleyip yoğurun. Yoğrulan harcınızı 10 dakika dinlendirin.
Dinlenen harcı hamurların üzerine boşluk kalmayacak şekilde yaydırın.
Hazırlanan lahmacunları önceden ısıtılmış 150 derecelik fırında pişirin.', NULL, CAST(N'2021-12-31T16:44:00' AS SmallDateTime), NULL, 27, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (50, N'Samsun Pidesi', N'Hamur için;

2 su bardağı ılık su
1 tatlı kaşığı kuru maya
1 yemek kaşığı tereyağı
1 yemek kaşığı yoğurt
1 tatlı kaşığı tuz
Aldığı kadar un
İç harcı için;

300 gr dana kıyma
3 adet kuru soğan
2 yemek kaşığı tereyağı
Tuz ,karabiber

', N'İç harcı harcı hazırlayalım önce.
Kıymayı tencereye alın rengi dönene kadar kavurun.
Pembelikler gidince tereyağı ve ince doğranmış soğan ekleyin ve pişirin, altını kapatırken yarım çay bardağı su ekleyin.
Hamuru için bütün malzemeleri bir araya getirerek güzel bir hamur yoğurun.
Çok fazla dinlendirmeye gerek yok yirmi dakika yeterli olacaktır.
Hamurun mandalinadan küçük bezelere ayırın.
Uzun ve ince açın oklava yardımıyla.
İçine kıymayı koyup, elinizle tamamen kapatın açık yeri kalmasın.
Önceden ısıtılmış 200 derece fırında kızarana kadar pişirin.
İnce bir hamur olduğundan çabuk pişiyor.
Çıkar çıkmaz üstüne tereyağı sürün.', NULL, CAST(N'2021-12-31T16:44:00' AS SmallDateTime), NULL, 27, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (52, N'Mercimek Çorbası ', N'1.3yemek kaşığı ay çiçek yağı2.1adetkuru soğan(iri doğranmış)3.1yemek kaşığı un4.1adethavuç(iri doğranmış)5.1adetpatates(büyük boy, iri doğranmış)6.1tatlı kaşığı tuz7.1çay kaşığı karabiber8.1,5su bardağı kırmızı ya da sarı mercimek9.6su bardağı sıcak su(1 adet et su tablet ile hazırlanmış)Üzeri İçin:11.3yemek kaşığı sıvı yağ12.2yemek kaşığı tereyağı13.1tatlı kaşığı kırmızı toz biber', N'Kırmızı mercimek çorbası için sıvı yağı tencereye alınarak yemeklik doğranan soğanlar hafif pembeleşinceye kadar kavrulur.
Daha sonra un ilave edilerek kısık ateşte kavurmaya devam edilir.
Salça kullanılacak ise salça ilave edilir, kavrulduktan sonra küp küp doğranmış havuç ve iyice yıkanıp suyu süzülen mercimekler ilave edilir.
Üzerine su eklenerek karıştırılır ve tencerenin kapağı kapatılır. Çorbamız kaynayana kadar orta ateşte, kaynadıktan sonra mercimekler ve havuçlar yumuşayana kadar ara ara karıştırılarak kısık ateşte pişirilir.
Çorba piştikten sonra el blenderı ile güzelce ezilir. Eğer blenderiniz yoksa süzgeçten de geçirebilirsiniz.
Karabiber, tuz ve isteğe bağlı olarak kimyon eklenir ve karıştırılır. 5 dakika daha pişirelerek ocaktan alınır.
Kıvamı koyu gelirse size, bir miktar su ilave edilerek bir taşım kaynatılır.
Bu arada küçük bir tavaya iki yemek kaşığı tereyağı alınır, kızdırılır ve bir tatlı kaşığı kırmızı toz biber eklenerek ocaktan alınır.
Mercimek çorbası servis kasesine alındıktan sonra üzerine kırmızı biberli sos gezdirilir ve bir dilim limon ile servis edilir.', N'~/resimler/2849815_810x458.jpg', CAST(N'2021-12-31T16:47:00' AS SmallDateTime), NULL, 23, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (55, N'Kelle Paça Çorbası', N'1 kilo kelle eti (düdüklüde haşlanıp ayıklanmış)2 yumurta sarısı1 yemek kaşığı tepeleme un.4 yemek kaşığı yoğurt.2 diş sarımsak.Yarım limon suyu.1 yemek kaşığı tereyağ1, 5 veya 2 litre su (yoğun bir tadı olsun isterseniz haşlama suyundan da kullanabilirsiniz)', N'Kuzu ve dana kellesini düdüklü tencerede 2 saat kaynatın.
Pişen etleri ayıklayıp tuzunu ekleyin. Tekrar bir taşım daha kaynatın.
Sirke, sarımsak, limon, kimyon ve kırmızı pul biber eşliğinde servis yapın. Afiyet olsun.', N'~/resimler/WhatsApp-Image-2021-03-29-at-22.00.04-1.jpeg', CAST(N'2021-12-31T16:53:00' AS SmallDateTime), NULL, 23, 1)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (56, N'Tahinli Tarator', N'3
yemek kaşığı
süzme yoğurt
1
su bardağı
tahin
1
adet
limonun suyu
2
diş
sarımsak
1
tatlı kaşığı
kimyon
1
çay kaşığı
tuz
2
yemek kaşığı
zeytinyağı
1
avuç
maydanoz', N'Bir karıştırma kasesinin içerisine süzme yoğurt, tahin, limon suyu, sarımsak, kimyon, tuz, zeytinyağı ve kıyılmış maydanozu ekleyip güzelce karıştırın.
Servis edeceğiniz tabağa taratoru yayın.
Üzerine zeytinyağı ve pul biber ilave edin ve afiyetle tüketin.', NULL, CAST(N'2021-12-31T16:55:00' AS SmallDateTime), NULL, 30, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (57, N'Deniz Börülcesi', N'Yarım kilo deniz börülcesi
Sosu için:

Yarım limon suyu
Yarım çay bardağı zeytinyağı
2 diş sarımsak ezilmiş', N'Öncelikle deniz börülcelerimizi bol su ile yıkıyoruz, topraklı alanları varsa keserek temizleyebiliriz. Daha sonra 10-15 dk. börülceler yumuşayana dek kaynatıyoruz. Kaynayan börülceleri tepeden aşağı çekerek kılçıklarından ayırarak tek tek temizliyoruz. Sos malzemelerimizi bir kapta iyice karıştırıyoruz üzerine dökerek servis yapıyoruz. Kesinlikle tuz eklenmemelidir. Afiyet olsun.', NULL, CAST(N'2021-12-31T16:56:00' AS SmallDateTime), NULL, 30, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (58, N'Atom', N'2,5
su bardağı
süzme yoğurt
2
diş
ezilmiş sarımsak
1
çay kaşığı
tuz
6
adet
kurutulmuş arnavut biberi
2
yemek kaşığı
tereyağı
2
yemek kaşığı
sıvı yağ
1/4
çay kaşığı
toz kırmızı biber', N'Biberlerinizi saplarından ayırın, mümkün olduğu kadar tohumlarını temizleyerek elinizle parçalayın. Eldiven kullanmanızı öneririm.
Tavaya aldığınız biberlere, zeytinyağını ekleyin.
Kısık ateşte kontrollü olarak ısıtın. Soğumaya alın.
Soğumuş biberleri, sarımsaklı yoğurtla buluşturun ve arzuya göre kuru nane ekleyin, iyice karıştırın. Servise hazır.', NULL, CAST(N'2021-12-31T16:58:00' AS SmallDateTime), NULL, 30, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (59, N'Ev Pizzası', N'5 su bardağı un
1 paket instant maya (ya da yarım paket yaş maya)
1 yemek kaşığı toz şeker
Yarım yemek kaşığı tuz
4 yemek kaşığı zeytinyağı
2 su bardağı ılık su
Sosu İçin;

2 su bardağı domates sosu
2 yemek kaşığı zeytinyağı
1 çay kaşığı kuru fesleğen
1 çay kaşığı kekik
Üzeri İçin;

Mozzarella peyniri
Kaşar peyniri
Sucuk
Sosis
Domates kurusu
Mantar
Mısır', N'Unu yoğurma kabına alalım ve ortasını havuz şeklinde açalım.
Unun ortasına instant maya, şeker, tuz, zeytinyağı ve ılık suyu yavaş yavaş ilave ederek hamurumuzu yoğurmaya başlayalım. İnstant maya yerine yarım paket yaş mayada kullanabilirsiniz.
Yumuşak kıvamlı ele yapışmayan bir hamur elde edelim.
Toparlanan hamurumuzun üzerini streç film örterek yaklaşık 30 dk kadar mayalanmaya bırakalım.
Mayalanan hamurun üzerini açalım ve un serptiğimiz tezgaha hamuru alalım.
Elimizle yine toparlayıp havasını aldıktan sonra 2 eşit parçaya bölelim. Eğer ince hamurlu pizza hazırlamak istiyorsanız aynı hamuru 3 parçaya da bölebilirsiniz.
Kestiğimiz parçayı beze haline getirerek un serptiğimiz tezgahta merdane yardımıyla açalım. Hafifçe un serperek merdaneye yapışmamasını sağlayabilirsiniz.
Açtığımız hamuru pizza tepsisine almadan önce boyutu uygun mu diye kontrol edelim.
Açtığımız hamuru unladığımız pizza tepsisine alalım ve elimizle etrafını düzeltelim.
Dilerseniz normal fırın tepsisine pişirme kağıdı sererek veya altına mısır unu serperek de hazırlayabilirsiniz.
Bir çatal yardımıyla hamurumuzun tüm yüzeyine delikler açalım böylelikle hamur pişerken kabarmayacaktır.
Pizza tepsisini önceden ısıttığımız 200° fırına sürerek hamurumuzu 10 dk pişirelim.
Hamurumuz pişerken pizzanın sosu için domates sosu, zeytinyağı, kuru fesleğen ve kekiği ekleyerek güzelce karıştıralım.
Yarı pişen hamurumuzu fırından alıp hazırladığımız sosu üzerine bolca sürelim. Kenarlarına doğruda güzelce sürersek kenarlarıda daha güzel kızaracaktır.
Domates sosunun üzerine bolca mozzarella peyniri rendesi veya kaşar peyniri rendesini yerleştirelim.
Üzerine tercihe göre dilimlenmiş sucuk, dilimlenmiş sosis, domates kurusu,dilimlenmiş mantar ve mısır tanelerini ekleyelim.
Son olarak pizzamızı tekrar fırına sürelim ve 200° fırında 20 dk daha pişmeye bırakalım.
Peynirleri güzel bir şekilde eriyen sucukları sosisleri gayet nefis bir şekilde pişen pizzamız servise hazır. Afiyet olsun :)
', NULL, CAST(N'2021-12-31T16:59:00' AS SmallDateTime), NULL, 31, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekId], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriId], [Durum]) VALUES (60, N'Limonata', N'1 adet limon1 adet portakal1 su bardağı toz şeker1 tatlı kaşığı limon tuzu3 litre su', N'Öncelikle portakal ve limonu buzluğa koyup dondurmamız gerekiyor.
1 gün önceden bırakın dondurucuya iyice donsun. Bu işlem limon ve portakal kabuğunun acı tadının olmaması için. İlk keşfedeni bulup tebrik etmek isterdim:)
Limonatayı hazırlayacağınız zaman portakal ve limonu buzluktan çıkarın. 10 dakika kadar bekleyin. Çokta beklemeyin öyle kendini bırakmasın. 4'' e bölünecek kıvamda olsun yeterli.
Robota portakal ve limonu dilimleyin ve içine koyun.
1 su bardağı şekeri üzerine ilave edin.
Kabuğuyla birlikte olmalı özelliği burada zaten o yüzden dikkat edelim. Robotu çalıştıralım ve iyice ezilene kadar çekelim. Öyle dakikalar sürmüyor 1-2 dakika yeterli. Robotunuz yoksa rendeleyebilirsiniz ve ondan sonra şekerle ovalayabilirsiniz.
3 lt suya çektiğimiz portakal limon şeker karışımını ekleyelim.
1 tatlı kaşığı limon tuzunu da ekleyip renginin iyice geçmesi için 5 dakika kadar bekleyelim.
Ara sıra karıştıralım ki limon tuzu ve şeker iyice erisin.
Benim ailem kalabalık yetmez derseniz 5 lt su ekleyin şekeri ve limon tuzunu da arttırın tabi.
Bir kaba temiz bir tülbent geçirelim ve içeceğimizi süzelim içinde hiç tane kalmasın. Tülbent olması önemli.
Hazır gibi oluyor hatta tadı daha güzel kaliteli markaların bile önüne geçen bir lezzet. Belki onlar da böyle yapıyordur:)
Tülbentte posa kalınca çamaşır sıkar gibi sıkın. En yoğun renk sıkınca çıkıyor. Üzerine az az su ekleyerek sıkabilirsiniz. Renk vermeyi bırakana kadar. Bakmayın böyle uzun uzun yazdığıma tek tek limon sıkıp yaptığımız limonatadan çok daha kolay ve lezzetli. Umarım denersiniz ve beğenirsiniz.', NULL, CAST(N'2021-12-31T19:58:00' AS SmallDateTime), NULL, 28, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (19, N'Kaan Cengiz', N'kaancengiz@hotmail.com', CAST(N'2021-12-31T15:40:00' AS SmallDateTime), 1, N'Makarnaya bayılan biri olarak çok sevdim... Makarnex''in de tarifini merakla bekliyorum.', 23)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (20, N'Mehmet Sarper', N'mehmet_sarper35@hotmail.com', CAST(N'2021-12-31T19:42:00' AS SmallDateTime), 1, N'Çok güzel...', 23)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (21, N'Buse Saçıkara', N'buse@hotmail.com', CAST(N'2021-12-31T19:49:00' AS SmallDateTime), 1, N'Beşamel sos makarnaya ayrı bi tat vermiş.', 23)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (22, N'Buse Saçıkara', N'buse@hotmail.com', CAST(N'2021-12-31T19:50:00' AS SmallDateTime), 1, N'Beşamel sos makarnaya ayrı bi tat vermiş.', 23)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (23, N'Pervin Sarper', N'pervin_sarper35@hotmail.com', CAST(N'2021-12-31T19:51:00' AS SmallDateTime), 1, N'İstediğim gibi çıtır çıtır oldu sonda tereyağını sürmeyi ihmal etmeyiniz...', 50)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (24, N'Pervin Sarper', N'pervin_sarper35@hotmail.com', CAST(N'2021-12-31T19:51:00' AS SmallDateTime), 1, N'İstediğim gibi çıtır çıtır oldu sonda tereyağını sürmeyi ihmal etmeyiniz.', 50)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (25, N'Pervin Sarper', N'pervin_sarper35@hotmail.com', CAST(N'2021-12-31T19:52:00' AS SmallDateTime), 1, N'İstediğim gibi çıtır çıtır oldu sonda tereyağını sürmeyi ihmal etmeyiniz...', 50)
INSERT [dbo].[Tbl_Yorumlar] ([YorumId], [YorumAdSoyad], [YorumMail], [YorumaTarih], [YorumOnay], [YorumIcerik], [YemekId]) VALUES (26, N'Pervin Sarper', N'pervin_sarper35@hotmail.com', CAST(N'2021-12-31T19:53:00' AS SmallDateTime), 0, N'İstediğim gibi çıtır çıtır oldu sonda tereyağını sürmeyi ihmal etmeyiniz...', 50)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
GO
ALTER TABLE [dbo].[Tbl_GununYemegi] ADD  CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[Tbl_Kategoriler] ADD  CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Tbl_Tarifler] ADD  CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumaTarih]  DEFAULT (getdate()) FOR [YorumaTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Tbl_Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([YemekId])
REFERENCES [dbo].[Tbl_Yemekler] ([YemekId])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
USE [master]
GO
ALTER DATABASE [Dbo_yemektarifi] SET  READ_WRITE 
GO
