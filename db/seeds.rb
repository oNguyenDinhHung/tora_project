require 'csv'
require 'faker'
# tao danh sach cac comment san co:
comments=[]
str=""
f=File.open("./db/comment","r")
while !f.eof?
	row=f.readline
	if row.length>1
		str+=row
	else
		comments<<String.new(str)
		str=""
	end
end

User.destroy_all
hungnd=User.create(name: "Nguyen Dinh Hung",email: "hungnd.k58@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
linhnd=User.create(name: "Nguyen Duc Linh",email: "linhnd@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
anhtt=User.create(name: "Tran Tuan Anh",email: "anhtt@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
toannt=User.create(name: "Nguyen Huu Toan",email: "toantt@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
tungtt=User.create(name: "To Thanh Tung",email: "tungtt@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
quangpkv=User.create(name: "Phung Khac Viet Quang",email: "quangpkv@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
admin=User.create(name: "Admin",email: "admin@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
anhtt=User.create(name: "Tran Tuan Anh",email: "anhtt@gmail.com",password: 123456,password_confirmation: 123456,admin: true,confirmed_at: Time.now)
CSV.foreach("./db/user","r").with_index do |row,i|
	User.create(name: row.first,email: "user-#{i}@gmail.com",password: 123456,password_confirmation: 123456,admin: false,confirmed_at: Time.now)
end

Dir.entries("./public/user_avatar").reject{|f| f=="."||f==".."}.each do |avatar|
	tmp_user=User.find_by_id avatar.split('.').first
	if tmp_user
		tmp_user.update(avatar: File.open(Rails.root + "./public/user_avatar/#{avatar}"))
	end
end

Store.destroy_all
googleplay=Store.create(name: "Google Play")
appstore=Store.create(name: "App Store")
microsoftstore=Store.create(name: "Microsoft Store")
Store.create(name: "BlackBerry App Word")
Store.create(name: "Steam")
Store.create(name: "Origin")
Store.create(name: "Humble Bundle Store")
Store.create(name: "PlayStation Store")
Store.create(name: "Nintendo Game Store")
Store.create(name: "Xbox Game Store")
Store.create(name: "Amazon AppStore")
Store.create(name: "Appvn")

Maker.destroy_all
facebook=Maker.create(name: "Facebook")
king=Maker.create(name: "King")
teen=Maker.create(name: "Teen")
niantic=Maker.create(name: "By Niantic, Inc.")
vndynapp=Maker.create(name: "VNDYNAPP")
zalogroup=Maker.create(name: "Zalo Group")
lowtech=Maker.create(name: "Lowtech Studios")
earts=Maker.create(name: "ELECTRONIC ARTS")
haflbrick=Maker.create(name: "Halfbrick Studios")
amazon=Maker.create(name: "Amazon")

Maker.create(name: "Supercell")
Maker.create(name: "Google LLC")
Maker.create(name: "Microsoft Corporation")
Maker.create(name: "Rovio")
Maker.create(name: "Electronic Arts ")
Maker.create(name: "Rockstar Games")
Maker.create(name: "Gameloft")
Maker.create(name: "Outfit7")
Maker.create(name: "Blizzard Entertainment Inc")
Maker.create(name: "Square Enix")

Category.destroy_all
sport = Category.create(name: "Sports")
shoping = Category.create(name: "Shoping")
picture=Category.create(name: "Pictures")
movie=Category.create(name: "Movies")
tool=Category.create(name: "Search tool")
manga=Category.create(name: "Manga")
game=Category.create(name: "Game")
app=Category.create(name: "App")

Apptype.destroy_all
mobile=Apptype.create(name: "Mobile")
pc=Apptype.create(name: "PC")
Apptype.create(name: "Ipad")
Apptype.create(name: "XBox")

App.destroy_all
#1
App.create(
	name: "Facebook",
	user: hungnd,
	maker: facebook,
	store: googleplay,
	originid: "1",
	link: "https://play.google.com/store/apps/details?id=com.facebook.katana",
	category: app,
	apptype: mobile,
	description: "Keeping up with friends is
faster and easier than ever.
Share updates and photos,
 engage with friends and
 Pages, and stay
connected to communities
 important to you. "
	)
#2
App.create(
	name: "Messenger",
	user: hungnd,
	maker: facebook,
	store: googleplay,
	originid: "2",
	link: "https://play.google.com/store/apps/details?id=com.facebook.orca",
	category: app,
	apptype: mobile,
	description: "Instantly connect with
the people in your life.
Messenger is free, fast,
 and secure. "
	)
#3
App.create(
	name: "Candy crush saga",
	user: hungnd,
	maker: king,
	store: appstore,
	originid: "1",
	link: "https://itunes.apple.com/vn/app/candy-crush-saga/id553834731?mt=8",
	category: game,
	apptype: mobile,
	description: "Candy Crush Saga, from
the makers of Candy Crush
 Soda Saga
& Farm Heroes Saga!"
	)
#4
App.create(
	name: "Overwatch",
	user: hungnd,
	maker: teen,
	store: microsoftstore,
	originid: "1",
	link: "https://www.microsoft.com/en-us/store/d/overwatch-game-of-the-year-edition-pc-game/8tt7080llb0j/135p",
	category: game,
	apptype: pc,
	description: "Clash on the battlefields of
 tomorrow, bend time,
defy physics, unleash
powers to fight your enemies."
	)
#5
App.create(
	name: "Pokémon GO",
	user: hungnd,
	maker: niantic,
	store: appstore,
	originid: "2",
	link: "https://itunes.apple.com/vn/app/pok%C3%A9mon-go/id1094591345?mt=8",
	category: game,
	apptype: mobile,
	description: "Join Trainers across the
 globe who are discovering
 Pokémon as they explore
 the world around them"
	)
#6
App.create(
	name: "Co Caro",
	user: hungnd,
	maker: vndynapp,
	store: googleplay,
	originid: "3",
	link: "https://play.google.com/store/apps/details?id=com.vndynapp.carochess&hl=vi",
	category: game,
	apptype: mobile,
	description: "Cờ caro là một trò chơi trí tuệ
	phổ biến ở nhiều nơi với các tên gọi khác nhau
	 như gobang, gomoku, tic tac toe, five in a row, omok.."
	)
#7
App.create(
	name: "Zalo",
	user: hungnd,
	maker: zalogroup,
	store: appstore,
	originid: "3",
	link: "https://itunes.apple.com/vn/app/zalo/id579523206?mt=8",
	category: app,
	apptype: mobile,
	description: "Zalo là ứng dụng nhắn tin kiểu mới
	 và kết nối cộng đồng hàng đầu
	  cho người dùng di động Việt."
	)
#8
App.create(
	name: "SlitherIo",
	user: hungnd,
	maker: lowtech,
	store: googleplay,
	originid: "4",
	link: "https://play.google.com/store/apps/details?id=air.com.hypah.io.slither&hl=vi",
	category: game,
	apptype: pc,
	description: "Play against other people online!
	Can you become the longest player?"
	)
#9
App.create(
	name: "FIFA Mobile Football",
	user: hungnd,
	maker: earts,
	store: microsoftstore,
	originid: "2",
	link: "https://www.microsoft.com/en-us/store/p/fifa-mobile-soccer/9nblggh4wlt1",
	category: game,
	apptype: pc,
	description: "Playing football has never been more exciting
	than in the new FIFA Mobile! Build and manage your team,
	 go head to head, and keep coming back for daily content.
	  Whether you’re a savvy veteran or just starting out
	   on the football pitch, FIFA Mobile is bigger and
	    better than ever, completely redesigned
	    and built exclusively for mobile with
	    a download size of under 100 MB –
	    meaning you can get into the game while on the go."
	)
#10
App.create(
	name: "Fruit Ninja",
	user: hungnd,
	maker: haflbrick,
	store: googleplay,
	originid: "5",
	link: "https://play.google.com/store/apps/details?id=com.halfbrick.fruitninjafree&hl=vi",
	category: game,
	apptype: mobile,
	description: "Swipe your screen to cut fruit, but don’t hit bombs
	– that’s how easy it is to play Fruit Ninja,
	the hit fruit-slicing mobile game enjoyed
	by billions of players all over the world"
	)

Dir.entries("./public/app_data").reject{|f| f=="."||f==".."}.each do |app_id|
	tmp_app=App.find_by_id app_id
	if tmp_app
		photos=[]		
		Dir.entries("./public/app_data/#{app_id}/photo").reject{|f| f=="."||f==".."}.each do |file_name|
			photos.push File.open(Rails.root + "./public/app_data/#{app_id}/photo/#{file_name}")
		end
		tmp_app.update(picture: File.open(Rails.root + "./public/app_data/#{app_id}/logo.png"),photos: photos)
		User.pluck(:id).sample(rand(10)+10).each do |user_id|
			Review.create(app_id: app_id,user_id: user_id,value: rand(5)+1,text: comments.sample,updated_at: rand(1.years).seconds.ago)
		end
		(rand(20)+5).times do
			Kuchikomi.create(app_id: app_id,user_id: User.pluck(:id).sample,text: comments.sample,created_at: rand(2.years).seconds.ago)
		end
	end
end
string = "Dịch ngược mô tả về Tiếng Anh Dịch
Rita Repulsa, phù thủy không gian, đã bị nhiễm các Morphin Grid, tạo ra quái vật ảo và nhái Ranger lập trình để chiến đấu cho mình. Chiến đấu trở lại với đội giám tuyển của riêng bạn của Power Rangers huyền thoại và nhân vật phản diện từ các đa vũ trụ! Mở khóa Rangers mới, nâng cấp các chiến binh tốt nhất của bạn và tạo ra những đội bóng tốt nhất để đánh bại Rita, và lưu Morphin Grid.

----------------TÍNH NĂNG, ĐẶC ĐIỂM------------------------

PLAYERS BATTLE BẤT-TIME
Hoạch định chiến lược, né tránh và chiến đấu với người chơi thực sự trong thời gian thực PvP và mở khóa các đấu trường khác nhau từ các địa điểm nổi tiếng trong phim và TV Show!

HÌNH ẢNH CHẤT LƯỢNG CONSOLE tuyệt đẹp
Xem của bạn Power Rangers yêu thích và động thái mang tính biểu tượng của họ hơn bao giờ hết. Toàn diện mô hình nhân vật 3D với hình ảnh tuyệt đẹp và hình ảnh động!

THU MỚI & NGUỒN tượng RANGERS
Mở khóa Rangers mới và thu thập 40 chiến binh khác nhau, từ các Rangers phim Power Rangers cổ điển để nhân vật phản diện từ khắp các đa vũ trụ Power Rangers!
"

index = 1
for i in 0..5
App.create(
	name: Faker::Lorem.word,
	user: admin,
	maker: facebook,
	store: googleplay,
	originid: index,
	link: "https://play.google.com/store/apps/details?id=com.facebook.katana",
	category: app,
	apptype: mobile,
	description: string
	)
  index = index+1
end
for i in 0..5
	App.create(
			name: Faker::Lorem.word,
			user: admin,
			maker: niantic,
			store: googleplay,
			originid: index,
			link: "https://play.google.com/store/apps/details?id=com.facebook.katana",
			category: game,
			apptype: mobile,
			description: string
	)
	index = index+1
end
for i in 0..5
	App.create(
			name: Faker::Lorem.word,
			user: admin,
			maker: amazon,
			store: googleplay,
			originid: index,
			link: "https://play.google.com/store/apps/details?id=com.facebook.katana",
			category: shoping,
			apptype: mobile,
			description: string
	)
	index = index+1
end
for i in 0..5
	App.create(
			name: Faker::Lorem.word,
			user: admin,
			maker: lowtech,
			store: googleplay,
			originid: index,
			link: "https://play.google.com/store/apps/details?id=com.facebook.katana",
			category: movie,
			apptype: mobile,
			description: string
	)
	index = index+1
end