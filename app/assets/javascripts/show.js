if( window.location.href.includes('profile')) {
  document.addEventListener('DOMContentLoaded', function(){ 
    document.getElementById('tab_anime').addEventListener("click", animeFunction);
    document.getElementById('tab_manga').addEventListener("click", mangaFunction);
  }, false);
  
  function mangaFunction() {
    var mangas = document.getElementById('manga');
    mangas.classList.add("active");
    mangas.classList.add("show");
    mangas.classList.remove("fade");
    
    var anime = document.getElementById('anime');
    anime.classList.remove('show');
    anime.classList.remove('active');
    anime.classList.add('fade');
    
    var children = anime.firstElementChild.children;
    var i;
    for (i = 0; i < children.length; i++) {
      children[i].style.display = "none";
    }
    
    document.getElementById('tab_anime').parentElement.classList.remove('show');
    document.getElementById('tab_anime').parentElement.classList.remove('active');
    document.getElementById('tab_anime').getAttribute("aria-selected") ==  false;
    document.getElementById('tab_manga').parentElement.classList.add('show');
    document.getElementById('tab_manga').parentElement.classList.add('active');
    document.getElementById('tab_manga').getAttribute("aria-selected") ==  true;
  } 
  
  function animeFunction() {
    var anime = document.getElementById('anime');
    anime.classList.add("active");
    anime.classList.add("show");
    anime.classList.remove("fade");
    
    var children = anime.firstElementChild.children;
    var i;
    for (i = 0; i < children.length; i++) {
      children[i].style.display = "block";
    }
    
    var mangas = document.getElementById('manga');
    mangas.classList.remove('show');
    mangas.classList.remove('active');
    mangas.classList.add('fade');
    
    document.getElementById('tab_manga').parentElement.classList.remove('show');
    document.getElementById('tab_manga').parentElement.classList.remove('active');
    document.getElementById('tab_manga').getAttribute("aria-selected") ==  false;
    document.getElementById('tab_anime').parentElement.classList.add('show');
    document.getElementById('tab_anime').parentElement.classList.add('active');
    document.getElementById('tab_anime').getAttribute("aria-selected") ==  true;
  } 
}