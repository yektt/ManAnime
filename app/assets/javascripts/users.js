if( window.location.href.includes('users')) {
  document.addEventListener('DOMContentLoaded', function(){ 
    document.getElementById('tab_anime').addEventListener("click", activateAnimeTab);
    document.getElementById('tab_manga').addEventListener("click", activateMangaTab);
    
    // displaying or hiding modal
    // modal is used for giving a reason to the user why they have been blocked
    let modal_button = document.getElementById('block_reason');
    let modal = document.getElementById('reason_modal');
    
    if (modal_button) {
      modal_button.addEventListener("click", function() {
        modal.classList.add('show');
        modal.style.display = 'inline';
      })
    }

    let close_modal = document.getElementById('close_modal');
      close_modal.addEventListener("click", function() {
        modal.classList.remove('show');
        modal.style.display = 'none';
      })

  }, false);
}

// calling changeTab function for changing tab's activeness
function activateMangaTab() {
  changeTab('manga', 'anime', 'tab_manga', 'tab_anime');
}

function activateAnimeTab() {
  changeTab('anime', 'manga', 'tab_anime', 'tab_manga');
}
