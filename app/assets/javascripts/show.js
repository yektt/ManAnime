if( window.location.href.includes('users')) {
  document.addEventListener('DOMContentLoaded', function(){ 
    document.getElementById('tab_anime').addEventListener("click", activateAnimeTab);
    document.getElementById('tab_manga').addEventListener("click", activateMangaTab);
    if( window.location.href.includes('users')) {
      let modal_button = document.getElementById('reason_modal');
      console.log(modal_button);
      document.getElementById('block_reason').addEventListener("click", function() {
        modal_button.classList.add('show');
        modal_button.style.display = 'inline';
      })
    }
  }, false);
}

function activateMangaTab() {
  changeTab('manga', 'anime', 'tab_manga', 'tab_anime');
}

function activateAnimeTab() {
  changeTab('anime', 'manga', 'tab_anime', 'tab_manga');
}
