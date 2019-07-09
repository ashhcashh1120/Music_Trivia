

let mainDiv = document.getElementById('.main-container')
let middleDiv = document.getElementById('.middle-container')
let audioSong = document.createElement('audio')
// let countDown = document.querySelector('#count-down')
let bottomTag = document.createElement('h3')
let bottomDiv = document.getElementById('.bottom-container')
bottomDiv.className = 'scoreBoard'

let countDownInterval
let myBr = document.createElement('br');


function pickRandom(array){
let song = array[Math.floor(Math.random()*array.length)];
return song
}

const stopSong = () => {
  mainDiv.style.display = 'none'
  audioSong.pause()
}

const startSong = () => {
  mainDiv.style.display = 'initial'
  audioSong.play()
}

const scoreLister = (user) => {
  return `<p>User: ${user.name} -- Points: ${user.score}</p>`
}

const scoreTitle = () => {
  return `<p> LEADERBOARD </p>`
}


let points = 0
let attempts = 3;



function getSongs(){
fetch('https://ashhmusictrivia.herokuapp.com/genres')
.then(response => response.json())
.then(data => {
  data.forEach((genre) =>{
    console.log(genre)

    let createButton = document.createElement('button')
    createButton.dataset.id = genre.id
    createButton.id = genre.name
    createButton.className = 'genre-button'
    createButton.innerText = genre.name
    mainDiv.appendChild(createButton)
    mainDiv.appendChild(myBr)

    })
  })

}

getSongs()

          mainDiv.addEventListener('click', (event)=>{
            event
            if(event.target.className === 'genre-button'){
              let body = document.getElementById('.main-container')
              body.innerHTML = ''
              let id = parseInt(event.target.dataset.id)
                fetch(`https://ashhmusictrivia.herokuapp.com/genres/${id}`)
                .then(function(response){
                  return response.json();
                })
                .then(function(genre){
                  console.log(genre.songs)
                  let iFrame = document.createElement('img')
                  iFrame.id='songImg'
                  console.log(iFrame)
                  iFrame.style.width = "180px";
                  iFrame.style.height = "180px"
                  iFrame.src = "https://i.gifer.com/LixF.gif";
                  mainDiv.appendChild(iFrame)

                  const randomSong = pickRandom(genre.songs)

                  audioSong.controls = 'controls'
                  audioSong.dataset.id = randomSong.id
                  audioSong.src = randomSong.audioPath
                  audioSong.type = 'audio/mp3'
                  audioSong.autoplay = true
                  audioSong.currentTime = 65;
                  audioSong.className = 'musicPlayer'
                  mainDiv.appendChild(audioSong)
                  let middlehTag = document.createElement('h2')
                  middleDiv.appendChild(middlehTag)

                  genre.songs.forEach(song =>{
                  songButton()

                  function songButton(){
                    let songButton =  document.createElement('button')
                    songButton.dataset.id = song.id
                    songButton.id = song.id
                    songButton.innerText = song.title
                    songButton.className = "songButton"
                    middlehTag.appendChild(songButton)


                  }
              })
                  let timeLeft = 25;
                  countDownInterval = setInterval(function () {
                    countDownInterval.innerText = timeLeft;
                    if(timeLeft === 0){
                      alert('times up')
                      clearInterval(countDownInterval)
                      stopSong()
                      countDownInterval.innerText = "Times Up! Pick a choice"
                      mainDiv.style.display = 'initial'

                    }
                    timeLeft--
                  }, 1000)
                  })

      }
  })
  const getScoreboard = () => {
    fetch(`https://ashhmusictrivia.herokuapp.com/scoreboards`)
    .then(res => res.json())
    .then(scoreList => {
      scoreList.forEach(score => {

        // bottomTag.append(scoreLister(score))

        bottomDiv.innerHTML += scoreLister(score)
        console.log(scoreLister(score))
      })
    })
  }





          middleDiv.addEventListener("click", (event) =>{

            if(event.target.className === 'songButton'){
              if(event.target.dataset.id === mainDiv.querySelector('audio').dataset.id){
                points++
                clearInterval(countDownInterval)
                bottomDiv.appendChild(bottomTag)
                bottomTag.innerText = `POINTS: ${points}`
                middleDiv.innerHTML = ""
                mainDiv.querySelector('audio').remove()
                getSongs()
              } else {
                alert("Try Again")
                  attempts--
              if(attempts < 1){
                alert(`GAME OVER, YOUR SCORE IS ${points}`)
                let userName = window.prompt("Enter your name")
                fetch('https://ashhmusictrivia.herokuapp.com/scoreboards', {
                    method:'POST',
                    headers:{
                      'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({

                      name: userName,
                      score: points
                    })
                  })

                  middleDiv.innerHTML = ""
                  getScoreboard();
              }


            }


            }



          })
