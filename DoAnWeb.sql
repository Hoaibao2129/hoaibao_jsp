CREATE DATABASE DoAnWebMobile
GO
USE DoAnWebMobile
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
	 MALOAISP INT,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[image2] [nvarchar](max) NULL,
	[image3] [nvarchar](max) NULL,
	[image4] [nvarchar](max) NULL,
	[image5] [nvarchar](max) NULL,
	[price] int NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE LOAISP(
  MALOAISP INT PRIMARY KEY,
  TENLOAISP NVARCHAR(MAX)
)


ALTER TABLE dbo.Category ADD FOREIGN KEY (MALOAISP) REFERENCES dbo.LOAISP(MALOAISP)

SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF

INSERT INTO dbo.LOAISP
(
    MALOAISP,
    TENLOAISP
)
VALUES
(   1,  -- MALOAISP - int
    N'SMARTPHONE' -- TENLOAISP - nvarchar(max)
    )
INSERT INTO dbo.LOAISP
(
    MALOAISP,
    TENLOAISP
)
VALUES
(   2,  -- MALOAISP - int
    N'TABLET' -- TENLOAISP - nvarchar(max)
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   1,   -- cid - int
    N'ĐT SAMSUNG', -- cname - nvarchar(50)
    1    -- MALOAISP - int
    )
INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   2,   -- cid - int
    N'ĐT APPLE', -- cname - nvarchar(50)
    1    -- MALOAISP - int
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   3,   -- cid - int
    N'ĐT XIAOMI', -- cname - nvarchar(50)
    1    -- MALOAISP - int
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   4,   -- cid - int
    N'ĐT OPPLE', -- cname - nvarchar(50)
    1    -- MALOAISP - int
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   5,   -- cid - int
    N'TB SAMSUNG', -- cname - nvarchar(50)
    2    -- MALOAISP - int
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   6,   -- cid - int
    N'TB APPLE', -- cname - nvarchar(50)
    2    -- MALOAISP - int
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   7,   -- cid - int
    N'TB XIAOMI', -- cname - nvarchar(50)
    2    -- MALOAISP - int
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   8,   -- cid - int
    N'TB HUAWEI', -- cname - nvarchar(50)
    2    -- MALOAISP - int
    )


INSERT INTO dbo.product
(
    name,
    image,
	image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại Samsung Galaxy Z Fold3 5G ', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold-3-green-1-600x600.jpg', -- image - nvarchar(max)
	N'https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold-3-13-org.jpg', -- image2 - nvarchar(max)
	N'https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold-3-14-org.jpg', -- image3 - nvarchar(max)
	N'https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold-3-15-org.jpg', -- image4 - nvarchar(max)
	N'https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold-3-7-org.jpg', -- image5 - nvarchar(max)
    44990000,  -- price - int
    N'Samsung Galaxy', -- title - nvarchar(max)
    N'Đầu tiên, khung viền Galaxy Z Fold3 được hoàn thiện bằng chất liệu Armor Aluminum cao cấp nhất từ trước đến giờ nhằm tăng cường được độ bền, mà vẫn đảm bảo được trọng lượng cân đối đem tới cảm giác vô cùng chắc chắn và cao cấp.Nhờ đó, tổng thể máy cũng đã mỏng nhẹ hơn khi trọng lượng giảm xuống còn 271 g, độ dày phần bản lề khi gập lại còn 16 mm cho cảm giác cầm nắm, sử dụng điện thoại Z Fold3 giờ đây đã thoải mái và dễ chịu hơn rất nhiều.
	Khi không dùng có thể gấp gọn như một cuốn sổ ghi chú nhỏ dễ dàng bỏ túi mang theo bên mình mọi lúc mọi nơi. Đồng thời, Samsung còn tăng cường khả năng kháng nước trên Galaxy Fold3 chuẩn IPX8 khả dụng ở độ sâu 1.5 mét tối đa trong 30 phút, người dùng có thể an tâm sử dụng tại hồ bơi, thậm chí là dưới trời mưa. Ngoài ra, với cảm biến vân tay ở cạnh bên, người dùng có thể nhanh chóng mở khóa và sử dụng chỉ bằng thao tác chạm nhẹ.', -- description - nvarchar(max)
    1,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Điện thoại Samsung Galaxy A03s', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/241049/samsung-galaxy-a03s-black-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/241049/samsung-galaxy-a03s-black-2.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/241049/samsung-galaxy-a03s-black-4.jpg', -- image3 - nvarchar(max)
	    N'https://www.thegioididong.com/dtdd/samsung-galaxy-a03s?src=osp#top-color-images-gallery-11', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/241049/samsung-galaxy-a03s-black-2.jpg', -- image5 - nvarchar(max)
	    3490000,   -- price - int
	    N'ĐIỆN THOẠI Samsung', -- title - nvarchar(max)
	    N'Điện thoại Galaxy A03s tiếp nối phong cách của Galaxy A02s trước đó, khi sở hữu một kiểu dáng xinh xắn với viền màn hình khá mỏng, mặt lưng được phủ một lớp nhám cao cấp giúp hạn chế tối đa bám dấu vân tay khi sử dụng Do là chiếc điện thoại giá rẻ nên Galaxy A03s được làm từ chất liệu nhựa tạo độ nhẹ cho sản phẩm, giúp quá trình cầm nắm thoải mái hơn. Ngoài ra, sản phẩm còn có màu sắc như: Đen và xanh cho bạn có thêm tùy chọn.
		Về khả năng hiển thị, máy được trang bị cho mình một màn hình kích thước 6.5 inch. Giúp bạn có thể thoải mái xem phim, học tập với một màn hình lớn. Thiết bị còn sử dụng tấm nền PLS LCD có độ phân giải HD+, đảm bảo sẽ mang lại góc nhìn tốt, chất lượng hình ảnh sắc nét. Từ đó người dùng có thể trải nghiệm những video, game giải trí ấn tượng trên chiếc smartphone này. Máy được trang bị công nghệ mở khóa vân tay cạnh viền, an toàn tiện lợi cho việc mở khóa chiếc dế yêu của mình.', -- description - nvarchar(max)
	    1,   -- cateID - int
	    1    -- sell_ID - int
	    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại Samsung Galaxy A52s 5G', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-mint-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/251879/samsung-galaxy-a52s-5g-mint-2.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/251879/samsung-galaxy-a52s-5g-mint-4.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/251879/samsung-galaxy-a52s-5g-mint-6.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/251879/samsung-galaxy-a52s-5g-mint-3.jpg', -- image5 - nvarchar(max)
    10290000,   -- price - int
    N'ĐIỆN THOẠI Samsung', -- title - nvarchar(max)
    N'Samsung Galaxy A52s tiếp tục sử dụng ngôn ngữ thiết kế nguyên khối theo phong cách trẻ trung với các tuỳ chọn màu sắc như: Đen, trắng, tím và xanh mint. Máy sử dụng màn hình nốt ruồi Super AMOLED kích thước 6.5 inch, độ phân giải Full HD+ cùng thiết kế tràn viền giúp mở rộng tối đa không gian hiển thị. Từ đó người dùng có thể thoải mái tận hưởng những chương trình giải trí cực kỳ hấp dẫn. Samsung Galaxy A52s 5G vẫn kiểu dáng đơn giản hiện đại, thời thượng tương tự người anh em Galaxy A52 với sự liền mạch trong thiết kế và nhiều màu sắc tinh tế để bạn lựa chọn là Trắng, Tím, Xanh và Đen.
	Nổi bật ở mắt sau chính là cụm 4 camera ấn tượng và một mặt lưng nhựa giả kính được hoàn thiện cao cấp với bề mặt nhám sơn mờ sang trọng, tối giản nhưng vẫn rất bắt mắt.  Các góc cạnh trên Galaxy A52s được bo cong nhẹ nhàng giúp cầm nắm tốt hơn, mặt lưng nhám còn ít bám dấu vân tay và mồ hôi, để giới trẻ tự tin sử dụng thiết bị trong mọi hoạt động. Galaxy A52s còn sở hữu hệ thống âm thanh vòm với vị trí phân bổ loa vô cùng khoa học, mang lại trải nghiệm âm thanh vô cùng ổn khi bạn giải trí.', -- description - nvarchar(max)
    1,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại Samsung Galaxy Z Flip3 5G', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/248283/samsung-galaxy-z-flip-3-violet-1-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/248283/samsung-galaxy-z-flip3-lavender-2-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/248283/samsung-galaxy-z-flip3-lavender-1-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/248283/samsung-galaxy-z-flip3-lavender-4-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/248283/samsung-galaxy-z-flip3-lavender-3-org.jpg', -- image5 - nvarchar(max)
    26990000,   -- price - int
    N'ĐIỆN THOẠI Samsung', -- title - nvarchar(max)
    N'Samsung Galaxy Z Flip3 5G dễ dàng lấy lòng phái nữ khi thiết kế của nó được lấy cảm hứng từ hộp đựng phấn trang điểm. Kết hợp với 7 màu sắc khác nhau, giúp bạn thoải mái thể hiện cá tính, từ mạnh mẽ sang trọng đến hiện đại trẻ trung. Thân máy siêu mỏng với 6.9 mm, nhẹ 183 g tạo nên một kiểu dáng đầy sexy. Kết hợp với các góc cạnh được bo cong hoàn hảo mang đến cảm giác cầm nắm thoải mái, thư thái suốt cả ngày. Không những đẹp mắt, máy còn mang đến sự tiện lợi khi được thiết kế màn hình gập độc đáo. Khi gập lại người dùng có thể bỏ vào túi quần hay túi áo một cách một cách dễ dàng mà không gây khó chịu.
	Dù là một thiết bị có ngoại hình hiện đại và sang trọng nhưng Samsung Galaxy Z Flip3 5G vẫn không kém phần cứng cáp khi được chế tác từ hợp kim nhôm Armor Aluminum cao cấp, dù vô tình làm rơi hay va đập mạnh máy vẫn có khả năng sống sót cao. Về bảo mật, Galaxy Z Flip3 5G có một máy quét dấu vân tay gắn cạnh bên và tính năng nhận dạng khuôn mặt cho người dùng mở khóa nhanh chóng. Đặc biệt, Galaxy Z Flip3 5G là một trong những smartphone màn hình gập đầu tiên được chứng nhận kháng nước chuẩn IPX8, với khả năng trụ dưới nước 1.5 mét lên đến 30 phút cực kỳ ấn tượng, phá bỏ mọi định kiến về độ bền, khả năng chống chịu của loại smartphone này.', -- description - nvarchar(max)
    1,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại iPhone 12 Pro Max', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-4-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-11-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-12-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-5-org.jpg', -- image5 - nvarchar(max)
    31990000,   -- price - int
    N'ĐIỆN THOẠI iPhone', -- title - nvarchar(max)
    N'iPhone 12 Pro Max sở hữu diện mạo mới mới với khung viền được vát thẳng và mạnh mẽ như trên iPad Pro 2020, chấm dứt hơn 6 năm với kiểu thiết kế bo cong trên iPhone 6 được ra mắt lần đầu tiên vào năm 2014 Nếu iPad Pro 2020 sử dụng chất liệu nhôm nguyên khối, thì iPhone 12 Pro Max sẽ là chất liệu mặt kính cùng khung viền thép, làm người dùng gợi nhớ nhiều hơn về bộ đôi iPhone 4/4s huyền thoại với thiết kế đẹp nhất trong lịch sử thiết kế của Apple. Sự khác biệt với bộ đôi 4/4s nằm ở phần mặt kính của iPhone 12 Pro Max được làm cong nhẹ, giúp ôm khít khung viền hoàn hảo tạo sự liền mạch của màn hình khi cầm nắm sử dụng.
iPhone 12 Pro Max sẽ có độ mỏng ấn tượng chỉ 7,4 mm tức còn mỏng hơn khoảng 10% so với iPhone 11 Pro Max hiện nay đang là 8,1 mm. Điều này càng làm tăng sự quyến rũ, đẳng cấp cho thiết bị từ mọi góc nhìn.', -- description - nvarchar(max)
    2,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại iPhone 12 Pro', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-vang-dong-new-600x600-1-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-vang-10-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-vang-11-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-vang-12-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/213032/iphone-12-pro-vang-4-org.jpg', -- image5 - nvarchar(max)
    28990000,   -- price - int
    N'ĐIỆN THOẠI iPhone ', -- title - nvarchar(max)
    N'Vẫn giống như thế hệ iPhone 11 Pro và iPhone 11 Pro Max, iPhone 12 Pro có thiết kế notch "tai thỏ" quen thuộc cùng màn hình Super Retina XDR OLED cho chất lượng hình ảnh giải trí siêu sắc nét. Bên cạnh đó, iPhone 12 Pro có kích thước 6.1 inch cho người dùng có thêm không gian giải trí cũng như trải nghiệm những thước phim bom tấn trên màn ảnh lớn hơn Khung viền iPhone 12 Pro hoàn thiện từ thép không gỉ kết hợp cùng lớp kính cường lực ở mặt sau đem đến khả năng bảo vệ máy một cách toàn diện.Thêm vào đó, mặt trước còn trang bị lớp kính bảo vệ Ceramic Shield cứng cáp giúp máy bền bỉ hơn gấp 4 lần thông thường khi rơi vỡ.
	Hơn nữa, iPhone 12 Pro cũng được trang bị khả năng kháng nước và bụi theo tiêu chuẩn IP68 và hỗ trợ cả Apple Pay, đáp ứng nhu cầu sử dụng cần thiết của người dùng. iPhone 12 Pro được trang bị cụm ba camera ở mặt sau cùng độ phân giải 12 MP kết hợp cùng cảm biến TOF 3D LiDAR lần đầu được Apple trang bị trên smartphone của mình. Cảm biến này cực kì hữu ích đặc biệt trong các lĩnh vực thiết kế, thi công các mô hình 3D và quan sát nhiều góc độ một cách trực quan nhất bằng công nghệ thực tế ảo AR. Hơn nữa, cụm camera trên iPhone 12 Pro có khả năng tự nhận diện môi trường xung quanh chủ thể mà đưa ra những thông số phù hợp để bạn có thể có cho mình được một bức ảnh ưng ý nhất.', -- description - nvarchar(max)
    2,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Điện thoại iPhone 13', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-midnight-2-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-black-1.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-black-2.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-black-3.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-black-1.jpg', -- image5 - nvarchar(max)
	    25490000,   -- price - int
	    N'ĐIỆN THOẠI iPhone', -- title - nvarchar(max)
	    N'Con chip Apple A15 Bionic siêu mạnh được sản xuất trên quy trình 5 nm giúp iPhone 13 đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%, GPU nhanh hơn 30% so với các đối thủ trong cùng phân khúc. Nhờ hiệu năng được cải tiến, người dùng có được những trải nghiệm tốt hơn trên điện thoại khi dùng các ứng dụng chỉnh sửa ảnh hay chiến các tựa game đồ họa cao mượt mà. iPhone 13 trang bị bộ nhớ trong 128 GB dung lượng lý tưởng cho phép bạn thỏa thích lưu trữ mọi nội dung theo ý muốn mà không lo nhanh đầy bộ nhớ.
		Mạng 5G được cải thiện chất lượng với nhiều băng tần hơn, với 5G giúp điện thoại xem trực tuyến hay tải xuống các ứng dụng và tài liệu đều đạt tốc độ nhanh chóng. Không chỉ vậy, siêu phẩm mới này còn có chế độ dữ liệu thông minh, tự động phát hiện và giảm tải tốc độ mạng để tiết kiệm năng lượng khi không cần dùng tốc độ cao. iPhone 13 sử dụng tấm nền OLED với kích thước màn hình 6.1 inch cho chất lượng màu sắc và chi tiết hình ảnh sắc nét, sống động, độ phân giải đạt 1170 x 2532 Pixels.Công nghệ màn hình Super Retina XDR của máy đạt độ sáng 800 nits, tối đa lên đến 1200 nits cùng dải màu rộng P3, tỷ lệ tương phản lớn giúp ổn định tốt màu sắc và chất lượng hình ảnh hiển thị trong nhiều điều kiện chiếu sáng, kể cả môi trường nắng gắt hay ánh sáng chói.', -- description - nvarchar(max)
	    2,   -- cateID - int
	    1    -- sell_ID - int
	    )
INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại iPhone 12 mini', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/225380/iphone-12-mini-den-15-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/225380/iphone-12-mini-den-5-1-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/225380/iphone-12-mini-den-11-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/225380/iphone-12-mini-den-12-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/225380/iphone-12-mini-den-5-1-org.jpg', -- image5 - nvarchar(max)
    18990000,   -- price - int
    N' ĐIỆN THOẠI iPhone', -- title - nvarchar(max)
    N'Điểm nhấn đầu tiên phải kể đến ở dòng máy này chính là viền máy không còn được thiết kế bo cong các cạnh, mà thay vào đó là phần cạnh máy được vát phẳng vô cùng mạnh mẽ và cá tính Máy nổi bật với hệ thống camera hình vuông độc đáo, kết hợp cùng mặt lưng bằng kính bóng bẩy cho cảm giác cầm nắm vô cùng thích. Ngoài ra, iPhone 12 Mini cũng đem tới cho người dùng nhiều màu sắc cho bạn tha hồ lựa chọn. Đặc biệt, Apple vừa bổ sung màu xanh dương vốn tươi tắn nhẹ nhàng nổi bật để lôi kéo sự chú ý, là một sự lựa chọn mới mẻ ấn tượng ngay từ cái nhìn đầu tiên. 
	Phía trước vẫn là màn hình kiểu dáng tai thỏ quen thuộc, với phần viền màn hình được tinh gọn hơn một cách đáng kể mang đến cảm giác màn hình lớn hơn dù iPhone 12 Mini có kích cỡ màn hình chỉ 5.4 inch. Màn hình kích cỡ 5.4 inch là điểm thuận lợi bởi máy khá nhỏ gọn, có thể dễ dàng đặt trong túi áo, quần hơn so với 6.1 inch trên điện thoại iPhone 12 Pro hay 6.7 inch trên iPhone 12 Pro Max.Màn hình của iPhone 12 Mini sử dụng tấm OLED Super Retina XDR tràn viền có độ phân giải Full HD+ (1080 x 2340 Pixels), từng chi tiết chuyển động trên màn hình đều hiện lên rõ nét, tươi sáng và không gặp phải tình trạng nhòe màu sắc được thể hiện trọn vẹn hơn bao giờ hết.', -- description - nvarchar(max)
    2,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại Xiaomi Mi 11', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/226264/xiaomi-mi-11-xanhduong-600x600-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/226264/xiaomi-mi-11-xanhduong-11-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/226264/xiaomi-mi-11-xanhduong-12-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/226264/xiaomi-mi-11-xanhduong-13-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/226264/xiaomi-mi-11-xanhduong-4-org.jpg', -- image5 - nvarchar(max)
    19990000,   -- price - int
    N'ĐIỆN THOẠI Xiaomi', -- title - nvarchar(max)
    N'Mi 11 sở hữu thân máy thanh mảnh với độ mỏng ấn tượng 8.06 mm, được vuốt cong dần về cạnh 2 bên, nối liền hoàn hảo với phần khung kim loại siêu mỏng và màn hình ở mặt trước tạo nên một khối liền mạch, cho bạn trải nghiệm cầm nắm tốt nhất. Tích hợp bên trong camera chính 108 MP là cảm biến hình ảnh lớn 1/1.33 có hỗ trợ chống rung quang học OIS, với công nghệ pixel-binning cho phép gộp 4 điểm ảnh thành 1 điểm ảnh siêu sáng, Mi 11 cho phép người dùng chụp những bức ảnh trong điều kiện thiếu sáng mà vẫn có độ nét hoàn hảo. Chụp phong cảnh, ảnh nhóm dễ dàng từ camera góc siêu rộng 123 độ 13 MP hay chụp ảnh chân dung ảo diệu với hiệu ứng xóa phông hút mắt.
	Cuối cùng, camera macro sẽ giúp bạn chụp siêu cận ở khoảng cách gần, mang đến những tác phẩm macro ấn tượng, độc lạ. Không chỉ chụp ảnh, Mi 11 còn sở hữu khả năng quay video nổi trội với chất lượng 8K, kèm theo đó là các thuật toán AI và giảm nhiễu RAW giúp tăng cường ánh sáng khi quay video trong điều kiện ánh sáng yếu. Được trang bị vi xử lý Qualcomm Snapdragon 888 cao cấp nhất, vừa được ra mắt gần đây với tiến trình 5 nm. Trang bị lõi Arm Cortex-X1 với xung nhịp khủng 2.84 GHz giúp tốc độ xử lý CPU tăng 25%, đồng thời tiết kiệm pin hơn so với Snapdragon 865.', -- description - nvarchar(max)
    3,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Điện thoại Xiaomi Mi 10T Pro 5G', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/228136/xiaomi-mi-10t-pro-den-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/228136/xiaomi-mi-10t-pro-11-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/228136/xiaomi-mi-10t-pro-12-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/228136/xiaomi-mi-10t-pro-4-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/228136/xiaomi-mi-10t-pro-5-org.jpg', -- image5 - nvarchar(max)
	    12990000,   -- price - int
	    N'ĐIỆN THOẠI Xiaomi', -- title - nvarchar(max)
	    N'Mi 10T Pro trang bị màn hình viền siêu mỏng Full HD+ với camera selfie “đục lỗ” trong màn hình cho kích thước mở rộng lên đến 6.67 inch, hỗ trợ không gian màu DCI-P3 với độ bao phủ rộng hơn so với sRBG hiển thị màu sắc vô cùng chuẩn xác mang đến những thước phim, khung hình có độ trung thực cao. Tần số quét 144 Hz là một trong những điểm ấn tượng của Mi 10T Pro, cung cấp lên đến 144 khung hình/giây mang đến sự mượt mà tối đa, nâng cao mọi trải nghiệm cho dù bạn đang chơi game, xem phim hay chỉ đơn giản là cuộn trang web để xem tin tức.
		Tính năng AdaptiveSync sáng tạo tự động điều chỉnh tốc độ làm mới từ 30 Hz đến 144 Hz để thích ứng với các đặc điểm của từng ứng dụng, do đó tìm thấy sự cân bằng hoàn hảo giữa trải nghiệm người dùng và tối ưu hóa mức tiêu thụ điện năng của thiết bị. Xiaomi còn tích hợp MEMC - Công nghệ đặc biệt giúp cải thiện các nội dung, video có tần số quét thấp bằng cách bổ sung thêm những khung hình ảo giúp tái hiện lại những phân cảnh hành động trở nên rõ ràng và mượt mà hơn.', -- description - nvarchar(max)
	    3,   -- cateID - int
	    1    -- sell_ID - int
	    )
INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại Xiaomi 11 Lite 5G NE', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-pink-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-10-1.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-11-1.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-12-1.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/249427/xiaomi-11-lite-5g-ne-4-1.jpg', -- image5 - nvarchar(max)
    8990000,   -- price - int
    N'ĐIỆN THOẠI Xiaomi', -- title - nvarchar(max)
    N'Máy được chế tác nguyên khối, sở hữu một thân hình siêu mỏng nhẹ chỉ có trọng lượng 158 g và mỏng 6.8 mm, tạo cảm giác cầm nắm thoải mái, để vào túi quần hay túi áo cũng không quá nặng nề.  Thiết kế mặt lưng bằng phẳng với cụm camera được đặt trong một mô-đun hình vuông bo cong nhẹ các góc và chỉ nhô ra 1.77 mm so với mặt lưng, mang đến sự cân đối khi nhìn vào tổng thể. Máy lên kệ với 4 màu sắc tuỳ chọn là trắng, xanh, hồng và đen phù hợp với mọi cá tính, sở thích.
	Bảo mật vân tay với cảm biến được trang bị ở cạnh viền, khi cầm máy lên bạn có thể sẵn tay mở luôn vô cùng nhanh chóng, cũng như khả năng bảo vệ tốt thông tin riêng tư bên trong máy.  Màn hình AMOLED 6.55 inch thể hiện màu sắc tốt hơn, màu đen sâu thẳm còn màu sắc thì trong trẻo kết hợp cùng độ phân giải Full HD+ giúp hình ảnh hiển thị thêm phần sắc nét đem đến trải nghiệm tuyệt vời khi xem phim, đọc báo hay chơi game.Màn hình còn có tần số quét 90 Hz cho mọi phản hồi hình ảnh nhanh nhạy, các chuyển động vuốt chạm vô cùng trơn tru và mượt mà. Xiaomi 11 Lite 5G NE hỗ trợ công nghệ độ sâu màu 10 bit, DCI-P3, TrueColor để mỗi bức ảnh khi hiển thị màu sắc sẽ được chi tiết hơn, rực rỡ và chính xác hơn.', -- description - nvarchar(max)
    3,   -- cateID - int
    1    -- sell_ID - int
    )
INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Điện thoại Xiaomi Mi 11 Lite', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/233241/xiaomi-mi-11-lite-4g-blue-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/233241/xiaomi-mi-11-lite-4g-xanh-duong-10-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/233241/xiaomi-mi-11-lite-4g-xanh-duong-11-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/233241/xiaomi-mi-11-lite-4g-xanh-duong-12-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/42/233241/xiaomi-mi-11-lite-4g-xanh-duong-4-org.jpg', -- image5 - nvarchar(max)
    7990000,   -- price - int
    N' ĐIỆN THOẠI Xiaomi', -- title - nvarchar(max)
    N'Xiaomi Mi 11 Lite là phiên bản thu gọn của Xiaomi Mi 11 5G được ra mắt trước đó. Thừa hưởng nhiều ưu điểm của đàn anh, Mi 11 Lite hoàn toàn có thể đáp ứng tốt các tác vụ thông thường một cách dễ dàng và đặc biệt hơn máy có thiết kế vô cùng mỏng nhẹ và thời trang. Mi 11 Lite trang bị con chip đến từ Qualcomm, sản xuất trên tiến trình 8 nm sẵn sàng cùng bạn chiến mọi tựa game phổ biến hiện nay với tốc độ tối đa lên đến 2.3 GHz.
	Những cải tiến về hiệu suất của Snapdragon 732G mang đến hiệu năng xử lý đồ họa cũng như các tác vụ khác đều được nâng cao, trí tuệ nhân tạo AI cũng được cải thiện hơn so với thế hệ trước, nhờ thế mà viên pin sẽ được tối ưu tốt hơn. Mi 11 Lite được áp dụng trang bị công nghệ LiquidCool giúp máy tản nhiệt vô cùng hiệu quả, nâng cao tính ổn định khi chạy các tác vụ nặng như game đồ hoạ trong thời gian dài.Đi kèm 8 GB RAM cho máy chạy đa nhiệm ổn định, mượt mà. Cùng với đó là bộ nhớ trong 128 GB đủ lớn để bạn có thể lưu trữ được nhiều thông tin, hỗ trợ mở rộng bộ nhớ qua thẻ nhớ MicroSD nếu bạn có nhu cầu lưu trữ cao hơn.', -- description - nvarchar(max)
    3,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Điện thoại OPPO Find X3 Pro 5G', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-black-001-1-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-den-11-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-den-12-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-den-6-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/232190/oppo-find-x3-pro-den-10-org.jpg', -- image5 - nvarchar(max)
	    23990000,   -- price - int
	    N'ĐIỆN THOẠI OPPO', -- title - nvarchar(max)
	    N'OPPO đã làm khuynh đảo thị trường smartphone khi cho ra đời chiếc điện thoại OPPO Find X3 Pro 5G. Đây là một sản phẩm có thiết kế độc đáo, sở hữu cụm camera khủng, cấu hình thuộc top đầu trong thế giới Android. Nếu nhìn qua mặt lưng của OPPO Find X3 Pro 5G thì bạn sẽ bất ngờ ngay với cụm camera sau, được tạo hình giống như miệng núi lửa, thiết kế này đã ngốn rất nhiều thời gian và công sức của nhà sản xuất để mang đến cho người dùng sự khác biệt mới lạ.
		OPPO trang bị cho Find X3 Pro 5G cả hai mặt bằng kính cường lực giúp mang lại sự bền bỉ và sang trọng, khung viền cấu tạo từ hợp kim cao cấp và được gia công tỉ mỉ làm chiếc điện thoại trở nên mỏng, nhẹ và đẹp mắt hơn rất nhiều. Thiết kế màn hình tràn viền cũng làm nổi bật mặt trước của Find X3 Pro 5G, chỉ bằng những quan sát đầu tiên ta đã có thể thấy sự đẳng cấp và sang trọng của chiếc điện thoại này. OPPO Find X3 Pro 5G mang hiệu năng hàng đầu trong thế giới điện thoại Android khi sở hữu con chip Snapdragon 888 8 nhân mới nhất của Qualcomm (05/2021) được sản xuất trên tiến trình 5 nm mang lại tốc độ xử lý nhanh hơn, AI thông minh hơn và tiết kiệm năng lượng hơn so với thế hệ trước. ', -- description - nvarchar(max)
	    4,   -- cateID - int
	    1    -- sell_ID - int
	    )
	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Điện thoại OPPO Reno5 Marvel', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-thumb-600x600-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-10-1-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-11-1-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-7-1-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236024/oppo-reno5-marvel-9-1-org.jpg', -- image5 - nvarchar(max)
	    9690000,   -- price - int
	    N'ĐIỆN THOẠI OPPO', -- title - nvarchar(max)
	    N'OPPO cho ra mắt một phiên bản giới hạn mới OPPO Reno5 Marvel, về hiệu năng cấu hình bên trong máy hoàn toàn tương tự so với Reno5, nhưng về kiểu dáng bên ngoài máy có phần khác biệt với thiết kế tùy chỉnh với mặt lưng có logo Marvel, logo Avengers hoàn toàn mới lạ Thoạt nhìn, OPPO Reno5 Marvel trông như một chiếc điện thoại chơi game với chủ đạo là màu đen, xen lẫn là các màu đỏ và bạc, sự kết hợp này tạo nên điểm nhấn nổi bật về một chiếc điện thoại mang phong cách thể thao nhưng vẫn toát lên vẻ đẹp thanh lịch.
		Giữa mặt lưng là logo Avengers màu bạc nằm trong hình tròn viền đỏ, càng làm lên điểm nhấn cho thiết bị. Vì thế mà bạn không nên mang ốp lưng màu sẽ làm mất đi khí chất ban đầu mà nó mang lại.  Phiên bản đặc biệt này còn có các giao diện icon, hình nền đi kèm sẵn, máy hoàn toàn phù hợp với những ai đam mê nét đẹp thể thao, cá tính. Viền màn hình được cắt gọt siêu mỏng và các góc bo cong nhẹ nhàng cho cảm giác cầm trên tay rất tốt, dễ dàng bỏ vào túi và cho phép bạn cầm cả ngày mà không cảm thấy mỏi.', -- description - nvarchar(max)
	    4,   -- cateID - int
	    1    -- sell_ID - int
	    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Điện thoại OPPO A74 5G', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236559/oppo-a74-5g-silver-01-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236559/oppo-a74-5g-bac-11-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236559/oppo-a74-5g-bac-12-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236559/oppo-a74-5g-bac-10-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/236559/oppo-a74-5g-bac-4-org.jpg', -- image5 - nvarchar(max)
	    7990000,   -- price - int
	    N'ĐIỆN THOẠI OPPO', -- title - nvarchar(max)
	    N'OPPO A74 5G mẫu điện thoại có kết nối 5G với mức giá tốt của OPPO. Máy có thiết kế tinh tế, màn hình 90 Hz mượt mà và cụm camera làm đẹp AI sẽ là những điểm nhấn “đáng tiền” trên mẫu điện thoại này OPPO A74 5G có thiết kế đặc trưng thường thấy ở các mẫu điện thoại OPPO được ra mắt gần đây, dải sáng phản chiếu đẹp mắt tạo điểm nhấn ở mặt lưng, các đường nét vuốt mỏng dần về cạnh viền, mang đến một chiếc điện thoại đẹp khi nhìn vào và luôn thoải mái khi cầm nắm trong lòng bàn tay. Tương tự các mẫu điện thoại tầm trung khác của mình, A74 5G cũng cung cấp khả năng bảo mật vân tay được tích hợp cạnh viền, cho thiết kế mặt lưng liền mạch cũng như mở khóa thuận tiện hơn.
		OPPO A74 5G với 2 tùy chọn là màu đen và màu bạc đại diện cho 2 phong cách khác nhau, màu nào cũng thời thượng và mang một vẻ đẹp riêng, cho bạn chọn lựa phù hợp với sở thích. OPPO A74 5G là mẫu điện thoại hoàn hảo để trải nghiệm sự mượt mà đến từ những tác vụ hàng ngày nhờ sở hữu màn hình có tần số quét 90 Hz và tốc độ lấy mẫu cảm ứng lên đến 180 Hz cho khả năng phản hồi nhanh chóng khi chơi game. Khác biệt so với OPPO A74 bản thường, phiên bản 5G sở hữu tấm nền IPS LCD, giúp cho màn hình mỏng hơn đồng thời chất lượng màu sắc gần như vẫn giữ nguyên không bị thay đổi quá nhiều.', -- description - nvarchar(max)
	    4,   -- cateID - int
	    1    -- sell_ID - int
	    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Điện thoại OPPO A94', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/234316/oppo-a94-black-thumb-purple-600x600-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/234316/oppo-a94-den-11-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/234316/oppo-a94-den-12-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/234316/oppo-a94-den-4-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/42/234316/oppo-a94-den-10-org.jpg', -- image5 - nvarchar(max)
	    7690000,   -- price - int
	    N'ĐIỆN THOẠI OPPO', -- title - nvarchar(max)
	    N'Mẫu smartphone tầm trung của OPPO - OPPO A94 đã được giới thiệu đến người dùng với nhiều cải tiến nổi trội về thiết kế, pin và camera cũng như kế thừa những điểm mạnh của OPPO A93. Nếu là một người theo dõi thường xuyên sản phẩm của OPPO, có thể bạn sẽ nhận thấy OPPO A94 sở hữu thiết kế giống Reno5 F đến 99% từ thiết kế cho đến thông số bên trong, máy cũng có mặt lưng bóng bẩy, chuyển sắc thu hút dưới nhiều góc nhìn và cụm 4 camera với thiết kế mới hiện đại hơn.OPPO A94 mang đến trải nghiệm cầm nắm thoải mái với trong lượng mỏng và nhẹ, gọn gàng giúp cho mọi thao tác sử dụng trở nên hoàn hảo.
		Có thể nói màn hình OPPO A94 là màn hình tốt trong tầm giá khi trang bị màn hình AMOLED Full HD+ cao cấp với ưu điểm màu sắc rực rỡ, độ tương phản cao mang đến trải nghiệm hình ảnh sống động, giàu chi tiết. Với kích thước màn hình siêu lớn 6.43 inch, thiết kế camera đục lỗ thời thượng, các cạnh viền được kéo mỏng tối đa, mang đến không gian hiển thị rộng rãi cho việc chơi game hay xem phim trên A94 sẽ “đã” hơn rất nhiều. OPPO không quên tích hợp tính năng tự động điều chỉnh độ sáng và lọc giảm ảnh sáng xanh trên A94 để mang đến sự dễ chịu cho đôi mắt của bạn mỗi khi đọc tin tức, xem phim vào ban đêm.', -- description - nvarchar(max)
	    4,   -- cateID - int
	    1    -- sell_ID - int
	    )


--DELETE FROM dbo.product WHERE name = N'Điện thoại Xiaomi Mi 11 Lite'


INSERT INTO dbo.LOAISP
(
    MALOAISP,
    TENLOAISP
)
VALUES
(   3,  -- MALOAISP - int
    N'LAPTOP' -- TENLOAISP - nvarchar(max)
    ) 

INSERT INTO dbo.LOAISP
(
    MALOAISP,
    TENLOAISP
)
VALUES
(   4,  -- MALOAISP - int
    N'SMARTWATCH' -- TENLOAISP - nvarchar(max)
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   9,   -- cid - int
    N'LAPTOP', -- cname - nvarchar(50)
    3    -- MALOAISP - int
    )

INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   10,   -- cid - int
    N'SMART WATCH', -- cname - nvarchar(50)
    4    -- MALOAISP - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Laptop Dell Vostro 3400', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/252238/dell-vostro-3400-i5-1135g7-8gb-256gb-office-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/235655/dell-vostro-3400-i7-v4i7015w-2-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/235655/dell-vostro-3400-i7-v4i7015w-3-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/235655/dell-vostro-3400-i7-v4i7015w-12-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/235655/dell-vostro-3400-i7-v4i7015w-13-org.jpg', -- image5 - nvarchar(max)
	    18890000,   -- price - int
	    N'LAPTOP', -- title - nvarchar(max)
	    N'Laptop Dell Vostro 3400 i7 (V4I7015W) nổi bật trong phân khúc laptop doanh nhân cao cấp nhờ cấu hình mạnh mẽ, thiết kế sang trọng, cơ động cùng nhiều tính năng hiện đại, là chiếc laptop lý tưởng cho nhu cầu văn phòng, đồ họa và giải trí hằng ngày Thiết kế đơn giản, đường nét tỉ mỉ mang đến cho Dell Vostro một vẻ ngoài không quá nổi bật nhưng vẫn rất trang nhã và hiện đại. Chiếc laptop mỏng nhẹ chỉ 1.64 kg, dày 19.9 mm dễ dàng đặt gọn vào túi xách để tự tin đồng hành cùng bạn mỗi ngày
		Tuy mỏng nhẹ nhưng máy vẫn có đầy đủ cổng kết nối cần thiết như USB 3.2, HDMI, USB 2.0, USB Type-C giúp người dùng kết nối dễ dàng với các thiết bị ngoại vi để phục vụ cho công việc và học tập hằng ngày. Chuẩn WiFi 802.11 a/b/g/n/ac  với băng tần 5 GHz và tốc độ tối đa lên đến 1730 Mbps giúp người dùng trải nghiệm kết nối mạng mượt mà, ổn định.Dell Vostro sở hữu con chip Intel Core i7 Tiger Lake thế hệ 11 mới, vừa ra mắt cuối năm 2020 mang đến nhiều điểm mạnh vượt trội hơn so với con chip thế hệ 10 cả về hiệu năng lẫn tốc độ, xung nhịp trung bình vào khoảng 2.80 GHz và 4.7 GHz khi chạy những ứng dụng nặng. Laptop Dell Vostro cân được hầu hết các ứng dụng học tập, văn phòng cũng như giải trí hằng ngày, ứng dụng đồ họa 2D như Photoshop, Ai, làm video với Premiere,...', -- description - nvarchar(max)
	    9,   -- cateID - int
	    1    -- sell_ID - int
	    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Laptop HP Pavilion Gaming 15 ', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/237216/hp-pavilion-gaming-15-dk1159tx-i7-31j36pa-1-org.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/237216/hp-pavilion-gaming-15-dk1159tx-i7-31j36pa-2-1-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/237216/hp-pavilion-gaming-15-dk1159tx-i7-31j36pa-2-1-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/237216/hp-pavilion-gaming-15-dk1159tx-i7-31j36pa-4-1-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/237216/hp-pavilion-gaming-15-dk1159tx-i7-31j36pa-5-1-org.jpg', -- image5 - nvarchar(max)
    28990000,   -- price - int
    N'LAPTOP', -- title - nvarchar(max)
    N'Laptop HP sở hữu chip Intel Core i7 10750H thế hệ 10 chuyên dụng cho chơi game giúp tăng hiệu năng đa nhiệm và tốc độ lưu xuất định dạng file video với độ phân giải 4K nhưng vẫn tiết kiệm điện năng đáng kể giúp bạn thoải mái chiến game với xung nhịp mạnh mẽ từ 2.6 GHz lên đến 5.0 GHz dưới sự hỗ trợ của Turbo Boost.Ngoài ra, RAM 8 GB DDR4 (2 khe) và hỗ trợ RAM tối đa 32 GB mang đến khả năng xử lý tốt các tác vụ office cơ bản khi làm việc, có thể mở được trên 20 tab Chrome cùng lúc với ứng dụng thiết kế đồ họa mà không lo máy bị giật, lag. Với sự kết hợp lý tưởng giữa công nghệ CPU trên với card đồ họa rời NVIDIA GeForce GTX 1650Ti 4GB giúp xử lý hình ảnh game đẹp, bạn hoàn toàn có thể chơi các game khủng như PUBG, CS:GO, Far Cry 5, Genshin Impact,... từ mức setting trung bình đến cao và sử dụng tốt các phần mềm thiết kế như: Adobe Photoshop, Ai, Premiere,...
	Intel Optane 32 GB (H10) được HP trang bị giúp tốc độ truy cập dữ liệu nhanh chóng, phản hồi tức thời và mang đến dung lượng lưu trữ lớn hơn nữa mà không cần đến ổ lưu trữ thứ 2.Khởi động trong vài giây, vận hành máy trơn tru và thỏa sức lưu trữ tài liệu nặng, phim ảnh, hình ảnh hay các tựa game yêu thích với ổ cứng SSD NVMe PCIe có không gian bộ nhớ 512 GB. Ngoài ra, máy vẫn được hỗ trợ thêm khe cắm HDD SATA để tiện nâng cấp ổ cứng nếu người dùng có nhu cầu', -- description - nvarchar(max)
    9,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Laptop HP Envy 13 ba1030TU', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/230240/hp-envy-13-ba1030tu-i7-2k0b6pa-101820-091857-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/230241/hp-envy-13-ba1031tu-i7-2k0b7pa-2-2-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/230241/hp-envy-13-ba1031tu-i7-2k0b7pa-4-2-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/230241/hp-envy-13-ba1031tu-i7-2k0b7pa-14-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/44/230241/hp-envy-13-ba1031tu-i7-2k0b7pa-16-org.jpg', -- image5 - nvarchar(max)
	    30390000,   -- price - int
	    N'LAPTOP', -- title - nvarchar(max)
	    N'Được thiết kế tinh tế từ vỏ kim loại nguyên khối màu vàng, laptop HP cho thấy được sự hiện đại, năng động nhưng cũng không kém phần sang trọng, đẳng cấp.Với độ dày 16.9 mm và cân nặng 1.236 kg, chỉ bằng trọng lượng trung bình của 2 quyển sách, chiếc laptop này giúp bạn có thể mang theo đi học hoặc đi làm hằng ngày một cách dễ dàng. Bên cạnh đó, bàn phím kích thước vừa đủ, hành trình phím tốt và được HP trang bị đèn nền nên có thể sử dụng dễ dàng trong điều kiện thiếu ánh sáng, nhập liệu ít bị sai sót.
		HP Envy 13-ba1031TU là phương tiện lý tưởng để làm việc khi mang trên mình bộ vi xử lý Intel Core i7 1165G7 thuộc dòng CPU thế hệ 11 mới nhất vào năm 2020 vô cùng mạnh mẽ. Bộ xử lý mới này sở hữu 4 lõi và xung nhịp cơ bản là 2.8 GHz, với tốc độ boost có thể tăng lên tới 4.7 GHz mang đến khả năng xử lý mạnh mẽ các ứng dụng văn phòng, đồ họa phổ biến hiện nay.Với cấu hình vượt trội cộng thêm bộ nhớ RAM 16 GB và card đồ họa tích hợp Intel Iris Xe Graphics, chiếc laptop này giúp bạn chạy mượt ở mọi tác vụ ở văn phòng, cùng lúc thao tác đa nhiệm ứng dụng đồ họa như Photoshop, Illustrator, Indesign,... cùng phần mềm văn phòng, thêm cả lướt web giải trí,... mà vẫn đảm bảo hiệu suất làm việc nhanh chóng.', -- description - nvarchar(max)
	    9,   -- cateID - int
	    1    -- sell_ID - int
	    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Laptop MSI Summit E13 Flip', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/246951/msi-summit-e13-flip-i7-211vn-19-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/246951/msi-summit-e13-flip-i7-211vn-2-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/246951/msi-summit-e13-flip-i7-211vn-11-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/246951/msi-summit-e13-flip-i7-211vn-5-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/44/246951/msi-summit-e13-flip-i7-211vn-7-org.jpg', -- image5 - nvarchar(max)
    39990000,   -- price - int
    N'LAPTOP', -- title - nvarchar(max)
    N'Sáng tạo trực tiếp ngay trên màn hình cảm ứng đa điểm của MSI, khi đang trình chiếu hay họp nhóm bạn có thể thao tác chỉnh sửa bằng tay nhanh chóng không cần phải di chuột hay gõ phím phức tạp. Đi kèm là bút cảm ứng MSI được trang bị công nghệ MPP2.0 cho thao tác đồ họa thêm phần chính xác và linh động hơn. Kết hợp hoàn hảo với màn hình cảm ứng là bản lề xoay gập 360 độ cho bạn khả năng có thể sử dụng máy tính với nhiều tư thế khác nhau hay dùng như một chiếc máy tính bảng thực thụ cỡ lớn, dễ dàng chia sẻ ý tưởng với mọi người mà không cần xoay chuyển hướng rườm rà.
	Mở khóa laptop, đăng nhập ứng dụng nhanh chóng chỉ bằng một chạm thông qua cảm biến vân tay giúp đảm bảo an toàn cho các tệp dữ liệu hay thông tin cá nhân của bạn trên máy. Bên cạnh đó, bạn còn có thể đăng nhập bằng tính năng nhận diện gương mặt thông qua Camera IR kết hợp cùng Windows Hello giúp các thông tin hình ảnh cá nhân của bạn được an toàn hơn.Đặc biệt để đảm bảo tính riêng tư hơn cho bạn, MSI Summit E13 Flip i7 trang bị 3 lớp bảo mật hoàn hảo là đèn báo tình trạng webcam và nút tắt F6 để bật/tắt camera nhanh, nút khóa webcam vật lí. Trong trường hợp bạn không dùng camera thì có thể tắc đi, tránh tình trạng camera bị truy cập trái phép, gia tăng độ an toàn thông tin cá nhân hơn khi truy cập các website có cài đặt theo dõi.', -- description - nvarchar(max)
    9,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Apple Watch S6 40mm', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/229044/apple-watch-s6-40mm-vien-nhom-day-cao-su-hong-thumb-1-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/234910/s6-lte-40mm-vien-nhom-day-cao-su-hong2-1-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/234910/s6-lte-40mm-vien-nhom-day-cao-su-hong3-1-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/234910/s6-lte-40mm-vien-nhom-day-cao-su-hong1-1-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/234910/s6-lte-40mm-vien-nhom-day-cao-su-den-10-org.jpg', -- image5 - nvarchar(max)
	    10191000,   -- price - int
	    N'SMARTWATCH', -- title - nvarchar(max)
	    N'Apple Watch S6 LTE 40mm viền nhôm dây cao su hồng được trang bị khung viền nhôm và mặt kính Ion-X strengthened glass bền bỉ và cứng cáp, chịu lực tốt, cho bạn thoải mái vận động, không ngại những va đập thường ngày. Dây đeo cao su không thấm nước, êm nhẹ, cho bạn cảm giác dễ chịu suốt ngày dài. Apple Watch Series 6 được trang bị con chip S6 hoàn toàn mới, đây là một bước cải tiến vượt bậc, cho hiệu năng cao hơn 20% so với dòng chip đời trước. Người dùng có thể thoải mái trải nghiệm, lướt đồng hồ mượt mà, không lo giật lag.
		Không chỉ trang bị con chip mạnh mẽ, Apple Watch rất chú trọng đến hệ điều hành, đã trang bị cho chiếc đồng hồ thông minh này hệ điều hành WatchOS 7 với nhiều tính năng độc đáo như: Chế độ rửa tay, Siri dịch nhanh, thêm mặt đồng hồ mới, chia sẻ mặt đồng hồ, theo dõi giấc ngủ, luyện tập thể thao nâng cao, Fitness+,... cho bạn nhiều phút giây trải nghiệm cùng đồng hồ thật thú vị.', -- description - nvarchar(max)
	    10,   -- cateID - int
	    1    -- sell_ID - int
	    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Samsung Galaxy Watch 3 ', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/230635/samsung-galaxy-watch-3-45mm-bac-2-180x125.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/230635/samsung-galaxy-watch-3-45mm-bac-3-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/230635/samsung-galaxy-watch-3-45mm-bac-4-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/230635/samsung-galaxy-watch-3-45mm-bac-6-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/230635/samsung-galaxy-watch-3-45mm-bac-7-org.jpg', -- image5 - nvarchar(max)
    4990000,   -- price - int
    N'SMARTWATCH', -- title - nvarchar(max)
    N'Samsung Galaxy Watch 3 45mm viền thép bạc dây da với tấm nền Super AMOLED 1.4 inch và độ phân giải 360x360 pixels, đồng hồ có khả năng hiển thị xuất sắc với màu sắc rực rỡ, thông tin hiển thị đầy đủ, rõ ràng. Khung viền của đồng hồ được làm bằng thép không gỉ chắc chắn và chống ăn mòn. Bên cạnh đó, thao tác điều khiển độc đáo bằng cách xoay viền mặt đồng hồ đã quay trở lại trên smartwatch Samsung.
	Tổng thể thiết bị vẫn thanh thoát và gọn gàng mặc dù màn hình có kích thước lớn 45 mm. Chất liệu mặt được trang bị bằng kính cường lực Gorilla Glass Dx+ độ bền cao cùng khả năng chống chói dưới ánh sáng mặt trời. Trọng lượng thiết bị chỉ nhẹ 48.2 gram. Bạn sẽ luôn có cảm giác thú vị và mới mẻ trong quá trình sử dụng bởi vì Galaxy Watch 3 được trang bị 40 mặt đồng hồ với nhiều phong cách khác nhau.', -- description - nvarchar(max)
    10,   -- cateID - int
    1   -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Samsung Galaxy Watch 4', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/248761/samsung-galaxy-watch-4-classic-46mm-1-1.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/248761/samsung-galaxy-watch-4-classic-46mm-2-1.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/248761/samsung-galaxy-watch-4-classic-46mm-3-1.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/248761/samsung-galaxy-watch-4-classic-46mm-4-1.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/7077/248761/samsung-galaxy-watch-4-classic-46mm-7-1.jpg', -- image5 - nvarchar(max)
	    8990000,   -- price - int
	    N'SMARTWATCH', -- title - nvarchar(max)
	    N'Điểm nhấn của Samsung Galaxy Watch 4 dòng Classic nằm ở thiết kế đậm nét cổ điển với những góc cạnh được vát tròn tinh tế. Vì thế, dù sở hữu đường kính mặt là 46 mm thì đồng hồ vẫn mang lại cảm giác gọn nhẹ, thanh lịch.Khung viền được chế tác từ thép không gỉ cao cấp chống ăn mòn hiệu quả, vòng xoay bezel vừa giúp người dùng định vị thời gian nhanh chóng với số phút được khắc ở mặt trong, vừa có tác dụng điều hướng thay thế cho các nút bấm bên cạnh đồng hồ. Dây đeo silicone có độ đàn hồi cao và thấm hút tốt khi tay ra mồ hôi. Mẫu smartwatch này được trang bị cấu hình mạnh mẽ nhất từ trước đến nay trên các dòng đồng hồ của Samsung với con chip Exynos W920 có tốc độ xử lý 1.18 GHz, nhanh hơn đến 20% so với người tiền nhiệm Galaxy Watch 3. 
Bên cạnh đó, bộ chip xử lý này còn giúp giảm mức tiêu thụ năng lượng của đồng hồ và tăng thời gian sử dụng, cung cấp một trải nghiệm liền mạch cho người dùng. Đổi mới lớn nhất trên Galaxy Watch 4 Classic chính là hệ điều hành. Thay vì sử dụng Tizen OS như các dòng đời cũ, thì giờ đây những chiếc đồng hồ của Samsung sẽ chuyển sang sử dụng hệ điều hành Wear OS trên nền giao diện One UI Watch 3.5.
Sự thay đổi này sẽ giúp người dùng dễ dàng truy cập vào kho ứng dụng khổng lồ trên Google Play và tối ưu trải nghiệm tốt hơn, hạn chế tình trạng giật lag gây phiền toái trong quá trình sử dụng.', -- description - nvarchar(max)
	    10,   -- cateID - int
	    1    -- sell_ID - int
	    )
INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Đồng hồ thông minh Mi Watch ', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/232899/mi-watch-1-org.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/232899/mi-watch-2-1-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/232899/mi-watch-3-1-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/232899/mi-watch-5-1-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/7077/232899/mi-watch-6-1-org.jpg', -- image5 - nvarchar(max)
    2590000,   -- price - int
    N'SMARTWATCH', -- title - nvarchar(max)
    N'Đồng hồ thông minh Mi Watch này mang phong cách trẻ trung, cá tính và đậm chất thể thao. Đồng hồ được trang bị công nghệ màn hình AMOLED với kích thước 1.39 inch cùng độ phân giải 454 x 454 pixels và độ sáng lên đến 450 nits giúp người dùng có thể quan sát thông tin rõ nét, chất lượng. Bên cạnh đó, đồng hồ còn được trang bị mặt kính cường lực Gorilla Glass 3 hạn chế trầy xước và tăng độ bền cho thiết bị. Đồng hồ thông minh có trọng lượng 32 gram siêu nhẹ với khung viền nhựa tạo cảm giác thoải mái cho người dùng khi đeo đồng hồ trong suốt ngày dài. Đi kèm là dây đeo silicone mềm mại, mỏng nhẹ và ôm cổ tay, dây đeo này có thể tháo rời giúp người dùng có thể vệ sinh đồng hồ một cách tiện lợi và dễ dàng.
	Với 100 mẫu thiết kế mặt đồng hồ được cung cấp sẵn, bạn có thể thoải mái lựa chọn và thay đổi giao diện cho chiếc đồng hồ. Bạn cũng có thể tự tạo mẫu mặt đồng hồ của riêng mình bằng những tấm hình mà bạn yêu thích.Thời lượng sử dụng pin lên đến 16 ngày sau mỗi lần sạc đầy và khoảng 22 ngày khi để đồng hồ ở chế độ tiết kiệm pin. Tuy nhiên, khi sử dụng đồng hồ ở chế độ luyện tập thể thao, thời lượng sử dụng pin là hơn 50 giờ.', -- description - nvarchar(max)
    10,   -- cateID - int
    1    -- sell_ID - int
    )



 INSERT INTO dbo.product
 (
     name,
     image,
     image2,
     image3,
     image4,
     image5,
     price,
     title,
     description,
     cateID,
     sell_ID
 )
 VALUES
 (   N'Samsung Galaxy Tab S7 FE', -- name - nvarchar(max)
     N'https://cdn.tgdd.vn/Products/Images/522/240254/samsung-galaxy-tab-s7-fe-green-600x600.jpg', -- image - nvarchar(max)
     N'https://cdn.tgdd.vn/Products/Images/522/240254/samsung-galaxy-tab-s7-fan-editon-den-2.jpg', -- image2 - nvarchar(max)
     N'https://cdn.tgdd.vn/Products/Images/522/240254/samsung-galaxy-tab-s7-fan-editon-den-3.jpg', -- image3 - nvarchar(max)
     N'https://cdn.tgdd.vn/Products/Images/522/240254/samsung-galaxy-tab-s7-fan-editon-den-4.jpg', -- image4 - nvarchar(max)
     N'https://cdn.tgdd.vn/Products/Images/522/240254/samsung-galaxy-tab-s7-fan-editon-den-5.jpg', -- image5 - nvarchar(max)
     13990000,   -- price - int
     N'TABLET', -- title - nvarchar(max)
     N'Galaxy Tab S7 FE sẽ khiến bạn choáng ngợp với dụng lượng pin cực khủng 10090 mAh đảm bảo cho cường độ làm việc, giải trí liên tục trong nhiều giờ liền. Theo công bố từ Samsung, với dung lượng lớn này giúp cho Galaxy Tab S7 FE có thể dùng lên tới 12 giờ lướt web với mạng LTE và 13 giờ xem video trực tuyến qua wifi.Bên cạnh đó, thời gian sạc cũng được rút ngắn đáng kể khi máy hỗ trợ sạc nhanh công suất tối đa lên đến 45 W, tuy nhiên để sạc với tốc độ này bạn cần mua củ sạc phù hợp vì sạc kèm theo máy chỉ 15 W.
	 Galaxy Tab S7 FE có một phiên bản màn hình duy nhất với kích thước lớn 12.4 inch, phần viền bao quanh được thu nhỏ, tạo nên không gian rộng rãi, thoải mái cho bạn làm việc hay giải trí.Màn hình của máy có độ phân giải 1600 x 2560 pixel đảm bảo cho chất lượng hình ảnh sắc nét trên màn hình lớn. Màn hình lớn giúp các nội dung giải trí được hiển thị tối ưu khi cầm máy ở cả chiều ngang hay dọc, cho bạn trải nghiệm chơi game và xem phim tuyệt vời nhất.', -- description - nvarchar(max)
     5,   -- cateID - int
     1    -- sell_ID - int
     )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Máy tính bảng Samsung Galaxy Tab S7', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/256559/samsung-galaxy-tab-s7-fe-wifi-xanh-la-1-180x125.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/256559/samsung-galaxy-tab-s7-fe-wifi-xanh-la-2.jpg', -- image2 - nvarchar(max)
    N'https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-s7-fe-wifi?src=osp#top-color-images-gallery-7', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/256559/samsung-galaxy-tab-s7-fe-wifi-xanh-la-4.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/256559/samsung-galaxy-tab-s7-fe-wifi-xanh-la-5.jpg', -- image5 - nvarchar(max)
    18990000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'Với lối thiết kế nguyên khối (unibody) cùng các cạnh được tạo dáng vuông vắn khiến cho Samsung Galaxy Tab S7 FE WiFi trở nên sang trọng khi cầm nắm trên tay bởi sự đơn giản và tinh tế trên một máy tính bảng chỉ nhẹ 610 g và mỏng 6.3 mm. Samsung Galaxy Tab S7 FE WiFi được ra mắt với 4 phiên bản màu sắc, hiện tại thì Thế Giới Di Động mang lại cho bạn 2 sự lựa chọn về màu là màu xanh lá và đen.
	Với kích thước màn hình lên đến 12.4 inch mang lại không gian làm việc rộng lớn giúp bạn thỏa sức sáng tạo và làm việc hiệu quả hay giải trí tốt hơn khi máy đem đến khả năng bao quát tầm nhìn lớn trên các tác vụ chơi game, đắm chìm trong những khung hình khi thưởng thức các bộ phim bom tấn.Với độ phân giải 1600 x 2560 pixels sử dụng công nghệ màn hình TFT cùng với 16 triệu màu giúp cho hình ảnh hiển thị được sắc nét và rực rỡ trên một máy tính bảng màn hình kích thước lớn.', -- description - nvarchar(max)
    5,   -- cateID - int
    1    -- sell_ID - int
    )
INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Samsung Galaxy Tab S6 Lite', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/219912/samsung-galaxy-tab-s6-lite-600x600-2-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/219912/samsung-galaxy-tab-s6-lite-xanh-4-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/219912/samsung-galaxy-tab-s6-lite-xanh-5-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/219912/samsung-galaxy-tab-s6-lite-xanh-11-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/219912/samsung-galaxy-tab-s6-lite-xanh-12-org.jpg', -- image5 - nvarchar(max)
    9990000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'Máy tính bảng Galaxy Tab S6 Lite sở hữu thiết ấn tượng với độ dày chỉ 7mm và trọng lượng siêu nhẹ 467g, giúp người dùng dễ dàng bỏ vào túi xách hay mang theo bất kì đâu. Toàn thân của máy được chế tác từ kim loại nguyên khối cao cấp, đảm bảo độ bền và cho vẻ đẹp sang trọng, thanh thoát.Mặt sau của Tab S6 Lite được thiết kế tổng thể được làm tối giản giúp chiếc máy trông hiện đại hơn. Dải anten lớn phân tách các thành phần kim loại giúp thiết bị bắt sóng tốt và ổn định hơn.
	Tương tự như trên Tab S6, phiên bản S6 Lite cũng được trang bị bút S Pen làm trợ thủ đắc lực trong các công việc hàng ngày.Bút S Pen mới trên Tab S6 Lite được thiết kế lớn hơn với kích thước tương tự như cây bút thông thường cho cảm giác cầm tự nhiên và thoải mái. Tối ưu năng suất viết, vẽ trên máy.', -- description - nvarchar(max)
    5,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Samsung Galaxy Tab A7', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/228144/samsung-galaxy-tab-a7-2020-vangdong-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/228144/samsung-galaxy-tab-a7-2020-vang-dong-1-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/228144/samsung-galaxy-tab-a7-2020-vang-dong-12-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/228144/samsung-galaxy-tab-a7-2020-vang-dong-13-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/228144/samsung-galaxy-tab-a7-2020-vang-dong-14-org.jpg', -- image5 - nvarchar(max)
	    7990000,   -- price - int
	    N'TABLET', -- title - nvarchar(max)
	    N'Chiếc Galaxy Tab A7 mang khá nhiều nét kế thừa từ người đàn anh ở phân khúc cao cấp là Galaxy Tab S7 vừa ra mắt không lâu, sở hữu thiết kế nguyên khối cứng cáp liền mạch, được hoàn thiện từ nhôm đi kèm khung viền kim loại sang trọng, ấn tượng.Hơn nữa, trọng lượng máy cũng tương đối nhẹ và độ mỏng chỉ 7 mm nên nhìn bằng mắt thường cũng có thể thấy ngoại hình gọn nhẹ của nó, rất thoải mái để bạn cầm nắm tay hay cho vào túi xách.
		Phía trước máy tính bảng Galaxy Tab A7 (2020) là màn hình giải trí kích thước lớn 10.4 inch, độ phân giải (1200 x 2000 Pixels) hiển thị hình ảnh nịnh mắt, có độ sắc nét cao, màu sắc tái tạo rực rỡ, độ chi tiết và độ sắc tương phản đạt chuẩn. Sử dụng tấm nền TFT LCD, chiếc tablet cho độ sáng màn hình đạt khá cao và chất lượng hình ảnh vẫn vô cùng chân thực, đặc biệt tốt với mọi góc nhìn, thông tin hiển thị vẫn rõ nét mà không có hiện tượng chói, lóa.', -- description - nvarchar(max)
	    5,   -- cateID - int
	    1    -- sell_ID - int
	    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'iPad Pro M1 12.9 inch WiFi', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/238645/ipad-pro-m1-129-inch-wifi-sliver-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/238645/ipad-pro-m1-129-inch-wifi-128gb-2021-4-org.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/238645/ipad-pro-m1-129-inch-wifi-128gb-2021-5-org.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/238645/ipad-pro-m1-129-inch-wifi-128gb-2021-11-org.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/238645/ipad-pro-m1-129-inch-wifi-128gb-2021-12-org.jpg', -- image5 - nvarchar(max)
	    34990000,   -- price - int
	    N'TABLET', -- title - nvarchar(max)
	    N'Máy tính bảng iPad Pro M1 12.9 inch 2021 được trang bị con chip mới Apple M1 với 8 nhân CPU và 8 nhân GPU mang lại một hiệu năng vượt trội, cụ thể máy cho khả năng xử lý về CPU nhanh hơn 50% và hiệu suất GPU tăng 40% so với thế hệ trước.Với bộ vi xử lý Apple M1 mang sức mạnh kế thừa từ dòng MacBook M1, giúp iPad Pro 12.9 inch 2021 đã mạnh mẽ nay còn chuyên nghiệp hơn bao giờ hết, giờ đây bạn có thể dựng các mô hình AR phức tạp hay chơi game ở mức đồ họa cao nhất.
		Bên cạnh đó, iPad Pro 12.9 inch 2021 còn được trang bị RAM 8 GB cho mọi thao tác đa nhiệm hay sử dụng nhiều ứng dụng cùng lúc luôn được mượt mà. Với dung lượng bộ nhớ trong 256 GB có thể thoải mái lưu trữ tài liệu, game hay cài đặt các ứng dụng nặng.Ngoài ra, máy tính bảng iPad Pro 12.9 inch 2021 cũng được nâng cấp với chuẩn Wi-Fi 6, tăng cường sự ổn định và chất lượng mạng kể cả ở những nơi công cộng với nguồn phát Wi-Fi yếu và đông người truy cập.', -- description - nvarchar(max)
	    6,   -- cateID - int
	    1    -- sell_ID - int
	    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'iPad Pro M1 11 inch WiFi', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/238624/ipad-pro-2021-11-inch-silver-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/237695/ipad-pro-m1-11-inch-wifi-128gb-2021-bac-4-org-1-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/237695/ipad-pro-m1-11-inch-wifi-128gb-2021-bac-5-org-1-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/237695/ipad-pro-m1-11-inch-wifi-128gb-2021-bac-10-org-1-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/237695/ipad-pro-m1-11-inch-wifi-128gb-2021-bac-11-org-1-org.jpg', -- image5 - nvarchar(max)
    24990000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'iPad Pro M1 11 inch Wifi 128GB (2021) được gia công rắn chắc bằng khung nhôm, trọng lượng chỉ 466 g cho tổng thể gọn nhẹ giúp người dùng cảm thấy thoải mái, dễ chịu hơn mỗi khi cầm nắm sử dụng.Được thiết kế nguyên khối liền lạc, vuông vức, sang trọng tương tự như iPhone 12 series, cụm camera nằm trong mô-đun hình vuông quen thuộc kết hợp với những màu sắc độc quyền,... bằng cách nào đó, các sản phẩm của Apple đều toát lên sự chú ý của mọi người tiêu dùng. 
	Màn hình Liquid Retina trang bị trên iPad Pro 11 inch 2021 hỗ trợ dải màu rộng P3, True Tone và có độ sáng lên đến 600 nits mang đến bạn những trải nghiệm hình ảnh tuyệt đẹp, khiến cho mọi chi tiết hiển thị trên máy luôn sáng và sống động nhất.Máy sở hữu một màn hình có kích thước 11 inch kết hợp với công nghệ hình ảnh đỉnh cao ​​Dolby Vision, mang đến cho bạn những nội dung với chất lượng hình ảnh cao, tạo cảm giác chân thật, iPad Pro M1 11 inch 2021 sẽ khiến bạn đắm chìm như trong rạp chiếu phim cho cảm nhận đến từ mọi phía đều tuyệt vời', -- description - nvarchar(max)
    6,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'iPad Air 4 Wifi ', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/228896/ipad-air-4-wifi-64gb-2020-xanhla-600x600-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/228896/ipad-air-4-green-1020x680-180x125.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/228896/ipad-air-4-wifi-la-2.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/228896/ipad-air-4-wifi-la-3.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/228896/ipad-air-4-wifi-la-4.jpg', -- image5 - nvarchar(max)
    22290000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'iPad Air 4 Wifi 256GB 2020 được thay đổi gần như toàn bộ thiết kế ở phần mặt trước khi so sánh với thế hệ iPad Air 3 tiền nhiệm, nút Home trên Air 2020 được loại bỏ, mở rộng không gian hiển thị với kích thước lớn hơn, đồng thời tích hợp Touch ID trên nút nguồnMặt lưng máy vẫn giữ được ngôn ngữ thiết kế riêng trên dòng Air, đường nét tinh xảo và tỉ mỉ, đặc biệt chế tác bằng những chất liệu thân thiện với môi trường.Bên cạnh đó, máy còn có thêm nhiều lựa chọn màu sắc đặc biệt hơn so với các thế hệ iPad tiền nhiệm, dễ dàng lựa chọn để tạo nên những dấu ấn đậm chất riêng của bạn.
	iPad Air 4 trang bị màn hình Liquid Retina 10.9 inch, tích hợp công nghệ True Tone cho khả năng hiển thị gần như hoàn hảo với màu sắc gốc, kết hợp cùng dải màu CPI-P3 chuẩn điện ảnh Hoa Kỳ, mang lại những trải nghiệm hình ảnh đỉnh cao với chất lượng màu sắc vô cùng trung thực.Chuẩn quay video 4K được tích hợp trên camera 12 MP ở mặt sau trở thành một nâng cấp đáng giá trên chiếc iPad dòng Air thế hệ mới nhất của Apple (tính đến tháng 9/2020).', -- description - nvarchar(max)
    6,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'iPad mini 6 WiFi', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-wifi-starlight-1-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-wifi-starlight-1-1.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-wifi-starlight-2.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-wifi-starlight-3.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/248091/ipad-mini-6-wifi-starlight-4.jpg', -- image5 - nvarchar(max)
    15990000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'iPad mini 6 có sức mạnh vượt trội khi so với thế hệ tiền nhiệm, sử dụng chip xử lý Apple A15 Bionic 6 nhân, có 15 nghìn tỷ bóng dẫn bên trong giúp hiệu năng mạnh mẽ hơn và tiết kiệm khoảng 15% năng lượng so với A14 Bionic.Hiện tại dung lượng RAM vẫn chưa được Apple tiết lộ, theo một số tin đồn thì máy sẽ có dung lượng RAM 4 GB  giúp khả năng đa nhiệm tốt hơn, điều hành đa tác vụ trên iPad mini 6 sẽ luôn được trơn tru, cho bạn mở nhiều cửa sổ ứng dụng, chạy các phần mềm thiết kế đồ họa hay thử sức chỉnh sửa video chất lượng cao một cách dễ dàng.
	Bộ nhớ trong dung lượng 64 GB thoải mái cho nhu cầu cơ bản, lưu trữ các dữ liệu cá nhân với danh sách nhạc yêu thích, hình ảnh và video các khoảnh khắc đáng nhớ của bạn cùng người thân.Với khả năng xử lý đồ họa nhanh hơn tới 80%, iPad mini 6 giúp bạn đắm mình vào bất cứ điều gì bạn làm. Trải nghiệm AR, chơi các trò chơi đồ họa cao hay các tác vụ 3D đều sẽ được xử lý mượt mà.Thiết bị chạy hệ điều hành iPadOS 15 tập trung về tiện ích widgets, tận dụng tối đa nhất không gian màn hình của iPad, giao diện trực quan hơn, đa nhiệm thông minh hơn và bảo mật tốt hơn cho người dùng cá nhân.', -- description - nvarchar(max)
    6,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Xiaomi Pad 5 256GB  ', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/250934/xiaomi-pad-5-grey-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/250934/xiaomi-pad-5-4.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/250934/xiaomi-pad-5-5.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/250934/xiaomi-pad-5-10.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/250934/xiaomi-pad-5-11.jpg', -- image5 - nvarchar(max)
    10490000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'Máy tính bảng Xiaomi Pad 5 được trang bị một màn hình siêu ấn tượng với tấm nền IPS LCD kích thước lớn lên đến 11 inch, hỗ trợ độ phân giải WQHD+ cực nét, mang đến khả năng hiển thị sống động, cho bạn đắm chìm trong các không gian giải trí.Phần viền màn hình được làm mỏng đều cả 4 cạnh không chỉ nâng cao trải nghiệm xem, mà còn góp phần giúp máy tính bảng trở nên sang trọng và đẳng cấp hơn rất nhiều.
	Đặc biệt màn hình này còn có thể hiển thị hơn 1 tỷ màu sắc khác nhau. Hỗ trợ công nghệ hình ảnh Dolby Vision, TrueTone cùng tần số quét 120 Hz cho trải nghiệm hình ảnh mượt mà, đã mắt nhất là khi sử dụng để xem phim hay là chiến game.Cùng với trải nghiệm hình ảnh đáng kinh ngạc thì Xiaomi Pad 5 được trang bị tới 4 loa ngoài hỗ trợ công nghệ âm thanh Dolby Atmos, chuẩn âm thanh Hi-Res nhờ đó mang lại chất lượng âm thanh chân thực hơn bao giờ hết.', -- description - nvarchar(max)
    7,   -- cateID - int
    1    -- sell_ID - int
    )

	INSERT INTO dbo.product
	(
	    name,
	    image,
	    image2,
	    image3,
	    image4,
	    image5,
	    price,
	    title,
	    description,
	    cateID,
	    sell_ID
	)
	VALUES
	(   N'Xiaomi Pad 5 Pro', -- name - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/239210/xiaomi-pad-5-grey-600x600.jpg', -- image - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/239210/xiaomi-pad-5-5.jpg', -- image2 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/239210/xiaomi-pad-5-6.jpg', -- image3 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/239210/xiaomi-pad-5-7.jpg', -- image4 - nvarchar(max)
	    N'https://cdn.tgdd.vn/Products/Images/522/239210/xiaomi-pad-5-10.jpg', -- image5 - nvarchar(max)
	    8990000,   -- price - int
	    N'TABLET', -- title - nvarchar(max)
	    N'Màn hình lớn 11 inch có độ hiển thị siêu rõ nét với độ phân giải cao và hỗ trợ HDR10 giúp cho mọi chi tiết đều trở nên bắt mắt. Màn hình có khả năng hiển thị lên đến 1 tỷ màu sẽ khôi phục lại màu sắc rực rỡ nhất của cuộc sống xung quanh ngay trên màn hình.Sản phẩm này được trang bị tấm nền IPS LCD giúp hiển thị hình ảnh tốt, mang đến cho người dùng những trải nghiệm hình ảnh vô cùng chân thực cùng độ chi tiết ấn tượng.
		Khả năng chống ánh sáng xanh của Xiaomi Pad 5 đã đạt chứng nhận của Rheinland giúp việc đọc, sử dụng trên máy tính bảng thời gian dài trở nên tự nhiên và thoải mái hơn, mang lại cảm giác đọc gần với sách giấy. Cùng cảm biến ánh sáng kép sẽ tự động điều chỉnh độ sáng thích hợp tránh kích thích ánh sáng mạnh để chăm sóc đôi mắt của bạn.Tần số quét 120 Hz mang lại cảm giác mượt mà và trơn tru hơn khi thao tác trên màn hình. Kết hợp cùng bút cảm ứng Xiaomi phản hồi cực nhạy và đầu bút mềm mại, đem tới trải nghiệm viết, vẽ, ghi chú tự nhiên như bạn đang dùng bút thường, sáng tạo nội dung bất tận không thua kém gì laptop.', -- description - nvarchar(max)
	    7,   -- cateID - int
	    1    -- sell_ID - int
	    )




INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Huawei MatePad 11', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-9-1-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-1.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-5.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-6.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-12.jpg', -- image5 - nvarchar(max)
    13990000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'MatePad 11 mang cho mình điểm ấn tượng đầu tiên là về trọng lượng vì máy chỉ mỏng khoảng 7.25 mm và trọng lượng 485 gam nên khi cầm trên tay, nó mang lại một cảm giác thoải mái, không quá nặng. Đây là một con số cực kỳ lý tưởng cho một chiếc máy tính bảng để mình có thể mang nó theo bất kì đâu một cách dễ dàng.MatePad 11 vẫn mang lối thiết kế cổ điển phủ một lớp màu xám, nó thu hút mọi người bởi kiểu dáng mỏng, các góc cạnh được bo tròn đều nhau giúp cho tổng thể hài hòa hơn, tạo cảm giác mềm mại, nhẹ nhàng và sang trọng.
	Máy tính bảng không sử dụng jack tai nghe 3.5 mm, mà nó tích hợp chung với khe cắm sạc Type-C với nhau được đặt ở dưới thân máy, còn các phím nguồn và tăng giảm âm lượng thì đặt ở 2 bên cạnh viền máy như các chiếc máy khác. MatePad 11 sở hữu màn hình 10.9 inch tỷ lệ 16:9 có độ phân giải là 2K, sử dụng tấm nền IPS LCD, hỗ trợ công nghệ HDR. MatePad có xu hướng hơi đẩy tone màu lên một chút, mang lại cảm giác màu sắc tươi và nịnh mắt hơn. Mình nghĩ chiếc máy này sẽ rất phù hợp cho các bạn với nhu cầu là giải trí, xem phim.', -- description - nvarchar(max)
    8,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Huawei MatePad 128GB', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/236953/huawei-matepad-xam-128gb-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/236953/huawei-matepad-128gb-1-org.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/236953/huawei-matepad-128gb-5-org.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/236953/huawei-matepad-128gb-12-org.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/236953/huawei-matepad-128gb-13-org.jpg', -- image5 - nvarchar(max)
    7790000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'Huawei MatePad khiến bất cứ ai ngay từ lần đầu nhìn vào đều sẽ bị thu hút bởi kiểu dáng mỏng, thiết kế tối giản với mặt lưng được phủ mờ tinh tế tạo nên phong cách sành điệu cho người sở hữu Độ hoàn thiện cao đến từ phần khung kim loại cứng cáp cùng những đường cong mềm mại, trọng lượng chỉ khoảng 460 g, đem lại sự nhẹ nhàng khi cầm trên tay trong thời gian dài cũng như rất gọn nhẹ để bạn có thể dễ dàng mang theo bên mình.
	Mẫu máy tính bảng của Huawei trang bị 2 camera với một camera trước và một camera sau, cùng độ phân giải là 8 MP, chất lượng khá ổn ở một chiếc tablet tầm trung, mang đến những tấm ảnh khá chi tiết. Ngoài ra, máy cũng có thể quay video đạt chuẩn Full HD giúp bạn ghi lại những khoảnh khắc đáng nhớ thường ngày.', -- description - nvarchar(max)
    8,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Huawei MatePad T10s', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/259627/Huawei-MatePad-T10s-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/259627/huawei-matepad-t10-2.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/259627/huawei-matepad-t10-3.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/259627/huawei-matepad-t10-4.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/259627/huawei-matepad-t10-5.jpg', -- image5 - nvarchar(max)
    5990000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'MatePad T10s với thiết kế gọn, nhẹ và mỏng hơn khi sở hữu màn hình 10.1 inch tràn đều cân xứng hoàn hảo ở cả 4 cạnh viền, đem đến cho bạn từng giờ phút trải nghiệm thoải mái.Trang bị tấm nền IPS LCD có độ phân giải 1200 x 1920 pixels mang đến khung hình hiển thị sắc nét, rõ ràng với màu sắc chân thật, cho bạn tận hưởng các nội dung giải trí tuyệt vời, nội dung sẽ linh hoạt thay đổi mượt mà theo chiều cầm ngang hay dọc.Công nghệ xử lý hình ảnh HUAWEI ClariVu độc quyền cho khả năng cân bằng màu sắc màn hình phù hợp với nhiều điều kiện môi trường khác nhau giúp tăng cường chất lượng hình ảnh và mang đến cho bạn trải nghiệm giải trí ấn tượng hơn.
	Bảo vệ an toàn cho đôi mắt người dùng khi màn hình MatePad T10s đã đạt chứng nhận bảo vệ mắt TÜV Rheinland giảm lượng ánh sáng xanh có hại, giữ cho đôi mắt của bạn luôn dễ chịu ngay cả khi sử dụng trong nhiều giờ liền.Nâng tầm trải nghiệm mỗi khi chơi game hay xem phim hơn khi MatePad T10s được trang bị bộ đôi loa ngoài đối xứng, giả lập hiệu ứng âm thanh vòm 3D Histen 6.1 Sound, để bạn thoả sức thưởng thức các bài nhạc hay những bộ phim yêu thích.', -- description - nvarchar(max)
    8,   -- cateID - int
    1    -- sell_ID - int
    )

INSERT INTO dbo.product
(
    name,
    image,
    image2,
    image3,
    image4,
    image5,
    price,
    title,
    description,
    cateID,
    sell_ID
)
VALUES
(   N'Huawei MatePad T10', -- name - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241051/Huawei-MatePad-T10-1-2-600x600.jpg', -- image - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241051/huawei-matepad-t10-1-1.jpg', -- image2 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241051/huawei-matepad-t10-2.jpg', -- image3 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241051/huawei-matepad-t10-1-1.jpg', -- image4 - nvarchar(max)
    N'https://cdn.tgdd.vn/Products/Images/522/241051/huawei-matepad-t10-2.jpg', -- image5 - nvarchar(max)
    4990000,   -- price - int
    N'TABLET', -- title - nvarchar(max)
    N'Máy tính bảng mới của Huawei có thiết kế nguyên khối với mặt lưng có màu đơn sắc giúp máy có phần đơn giản nhưng vẫn toát lên vẻ sang trọng và lịch lãm.  Mức độ hoàn thiện máy khá tốt, cho cảm nhận cứng cáp, các chi tiết ghép nối được gắn kết với nhau một cách chính xác, dường như không có khe hở gây mất thẩm mỹ cho máy.Tổng trọng lượng của máy chỉ nặng 450 g, kết hợp với phần thân máy bo tròn gọn nhẹ giúp bạn có thể cầm trên tay thoải mái hay mang đi ở bất cứ đâu bạn muốn.
	Huawei sử dụng màn hình IPS LCD kích thước lớn 9.7 inch với độ phân giải HD cho Huawei MatePad T10. Trải nghiệm thực tế màn hình này cho chất lượng hiển thị hình ảnh tốt, màu sắc trung tính, góc nhìn rộng và độ sáng tương đối đáp ứng tốt nhu cầu sử dụng hằng ngàyMàn hình của máy được trang bị chế độ bảo vệ mắt Eye Comfort được TÜV Rheinland chứng nhận để giảm ánh sáng xanh có hại, mang lại sự thoải mái cho mắt tốt hơn khi bạn dùng trong nhiều giờ liền.', -- description - nvarchar(max)
    8,   -- cateID - int
    1    -- sell_ID - int
    )



SELECT * from product 
order by id 
offset 0 rows fetch next 12 rows only ;

select top 12 * from product
order by id desc

select * from product
where name like '%iphone 12 pro%'

select * from category where MALOAISP = 2
 
INSERT INTO dbo.Category
(
    cid,
    cname,
    MALOAISP
)
VALUES
(   1,   -- cid - int
    N'', -- cname - nvarchar(50)
    0    -- MALOAISP - int
    )

