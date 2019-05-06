# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all 
Genre.destroy_all 

pop = Genre.create(name:"pop")
randb = Genre.create(name:"RandB")
alternative = Genre.create(name:"alternative")
country = Genre.create(name:"country")
rap = Genre.create(name:"rap")
rock =Genre.create(name:"rock")



Song.create(artist:"Meghan Trainor", title:"No Excuses", videoPath:"https://youtu.be/kton-qrKNLc", audioPath:"pop/No Excuses.mp3", genre:pop)
Song.create(artist:"Sam Smith", title:"Promises", videoPath:"https://www.youtube.com/watch?v=kkLk2XWMBf8", audioPath:"pop/Promises", genre:pop)

Song.create(artist:"Ariana Grande", title:"7 Rings", videoPath:"https://youtu.be/QYh6mYIJG2Y", audioPath:"RandB/7Rings.mp3", genre:randb)
Song.create(artist:"Rihanna", title:"Wild Thoughtd", videoPath:"https://youtu.be/fyaI4-5849w", audioPath:"RandB/wild thoughts.mp3", genre:randb)

Song.create(artist:"JayZ", title: "The Story of OJ", videoPath:"https://youtu.be/RM7lw0Ovzq0", audioPath:"rap/The Story of OJ.mp3", genre:rap)
Song.create(artist:"21 Savage", title:"A lot", videoPath:"https://youtu.be/DmWWqogr_r8", audioPath:"rap/a_lot.mp3", genre:rap)


Song.create(artist:"Panic! At the Disco", title:"Say Amen", videoPath:"www.youtube.com/watch?v=ZI8tFthAZ5M&ab_channel=fangirllyrics", audioPath:"rock/Say Amen - Panic! At The Disco.mp3", genre: rock)
Song.create(artist:"Weezer", title:"Can't knock the hustle", videoPath:"https://www.youtube.com/watch?v=fYOnT7bc5zM&ab_channel=AfriendofDiane%27s", audioPath:"rock/Weezer - Can't Knock the Hustle.mp3",  genre: rock)


Song.create(artist:"Marshemello",  title: "Happier", videoPath: "https://www.youtube.com/watch?v=RE87rQkXdNw&ab_channel=Marshmello", audioPath:"alternative/Marshmello ft. Bastille - Happier.mp3", genre: alternative)
Song.create(artist:"Billie Eilish", title: "Bury a friend", videoPath:"https://www.youtube.com/watch?v=HUHC9tYz8ik&ab_channel=BillieEilishVEVO", audioPath:"alternative/Billie Eilish - bury a friend.mp3", genre: alternative)

Song.create(artist:"Chris Stapleton", title:"Broken Halos", videoPath:"https://www.youtube.com/watch?v=sI0TeFf6uD8&ab_channel=ChrisStapletonVEVO", audioPath:"country/Chris Stapleton - Broken Halos.mp3",  genre: country)
Song.create(artist:"Lil Nas X", title: "Old Town Road", videoPath:"https://www.youtube.com/watch?v=ZmnYSX5w1jg&ab_channel=GreyMusic", audioPath:"country/Lil Nas X, Billy Ray Cyrus - Old Town Road Remix.mp3",  genre: country)