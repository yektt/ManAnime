if( window.location.href.includes('users')) {
  document.addEventListener('DOMContentLoaded', function(){ 
    document.getElementById('tab_anime').addEventListener("click", activateAnimeTab);
    document.getElementById('tab_manga').addEventListener("click", activateMangaTab);
  }, false);
}

function activateMangaTab() {
  changeTab('manga', 'anime', 'tab_manga', 'tab_anime');
}

function activateAnimeTab() {
  changeTab('anime', 'manga', 'tab_anime', 'tab_manga');
}
