function audioecarlos(){

  let audioo = new Audio("res/musica.mp3")
  audioo.play()
  console.log("audio (não) está rodando rodando")
  
  let meio = document.getElementById("meio")
  
  setTimeout(function() {
    meio.classList.remove("meio")
    meio.classList.add("meio2")
    $("#container").height(1080)
  }, 2000);
	
}

function porreta(){
  window.location.href = "https://www.google.com/amp/s/www.dicionarioinformal.com.br/significado/porreta/115/amp/"
}

function add(){
  setTimeout(function() {
    window.location.href = "https://discord.com/oauth2/authorize?client_id=953438198929960991&scope=bot&permissions=8"
  }, 1000);
}

function gh(){
  setTimeout(function(){window.location.href = "https://github.com/Luizin5/CarlaoBot"}, 1000)
}

function avaliar(){
  window.location.href = "/review"
}
