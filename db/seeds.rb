# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.destroy_all
Genre.destroy_all

pop = Genre.create(name:"Pop")
randb = Genre.create(name:"R&B")
alternative = Genre.create(name:"Alternative")
country = Genre.create(name:"Country")
rap = Genre.create(name:"Rap")
rock =Genre.create(name:"Rock")



Song.create(artist:"Meghan Trainor",
  title:"No Excuses",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/pop/No_Excuses.mp3",
  genre:pop)

Song.create(artist:"Shawn Mendes",
  title:"If I Can't Have You",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/pop/If I Can't Have You.mp3",
  genre:pop)

Song.create(artist:"Calvin Harris",
  title:"Feels",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/pop/ Feels .mp3",
  genre:pop)

Song.create(artist:"Sam Smith",
  title:"Promises",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/pop/No_Excuses.mp3",
  genre:pop)

Song.create(artist:"Ariana Grande",
  title:"7 Rings", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/randb/7Rings.mp3",
  genre:randb)

Song.create(artist:"Ty Dollar Sign",
  title:"Light", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/randb/Lighter.mp3",
  genre:randb)

  Song.create(artist:"SZA",
  title:"The Weekend", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/randb/The Weekend.mp3",
  genre:randb)  

Song.create(artist:"Rihanna", 
title:"Wild Thoughts", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/randb/wild thoughts.mp3", 
genre:randb)

Song.create(artist:"Jay-Z",
title:"The Story of OJ", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rap/The Story of OJ.mp3", 
genre:rap)

Song.create(artist:"21 Savage",
  title:"Alot", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rap/a_lot.mp3",
   genre:rap)

Song.create(artist:"Nipsey Hussle",
   title:"Grinding All My Life", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rap/grinding_all_my_life.mp3", 
   genre:rap)

Song.create(artist:"Drake",
   title:"Nice for What", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rap/Drake - Nice For What.mp3", 
   genre:rap)

Song.create(artist:"Disturbed",
  title:"Are Yor Ready", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rock/Disturbed - Are You Ready Lyrics.mp3",
  genre: rock)


Song.create(artist:"Weezer",
  title:"Can't knock the hustle",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rock/Weezer - Can't Knock the Hustle (Audio).mp3",
  genre: rock)

Song.create(artist:"Godsmack",
  title:"Bulletproof", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rock/Godsmack - Bulletproof (Official Audio).mp3",
  genre: rock)

Song.create(artist:"Seether",
  title:"Betray And Degrade", audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/rock/Betray And Degrade.mp3",
  genre: rock)


Song.create(artist:"Marshemello",
  title: "Happier",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/alternative/Marshmello ft. Bastille - Happier (Official Lyric Video).mp3",
   genre: alternative)

Song.create(artist:"Banks",
   title: "Gimme",
   audioPath:"/Users/ashleyrchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/alternative/BANKS - Gimme (Official Audio).mp3",
    genre: alternative)

Song.create(artist:"Black Eyed Peas",
    title: "LoHi",
    audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/alternative/The Black Keys - LoHi [Official Audio].mp3",
    genre: alternative)

    
Song.create(artist:"Billie Eilish",
  title: "Bury a friend",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/alternative/Billie Eilish - bury a friend.mp3",
  genre: alternative)

Song.create(artist:"Chris Stapleton",
  title:"Broken Halos",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/country/Chris Stapleton - Broken Halos (Audio).mp3",
  genre: country)
Song.create(artist:"Lil Nas X",
  title: "Old Town Road",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/country/Lil Nas X, Billy Ray Cyrus - Old Town Road (Lyrics) Remix.mp3",
  genre: country)

Song.create(artist:"Chris Stapleton",
  title: "Broken Halos",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/country/Chris Stapleton - Broken Halos (Audio).mp3",
  genre: country)

Song.create(artist:"Musgraves",
  title: "Slow Burn",
  audioPath:"/Users/ashleyarchibald/Desktop/Music_Trivia/guess_the_song_backend/songs/country/Kacey Musgraves - Slow Burn.mp3",
  genre: country)
