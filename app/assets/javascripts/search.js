if( window.location.href.includes('search')) {
  document.addEventListener('DOMContentLoaded', function(){
    document.getElementById('advanced_search_button').addEventListener("click", changeDisplay);
  }, false);
}

function changeDisplay() {
  var advanced_search_field = document.getElementById('advanced_search');
  var advanced_search_button = document.getElementById('advanced_search_button');
  if(advanced_search_field.classList.contains('d-none')) {
    advanced_search_field.classList.remove('d-none');
    advanced_search_button.style.backgroundColor = '#ccd2ce';
    advanced_search_button.style.color = '#3f3445';
  } else {
    advanced_search_field.classList.add('d-none');
    advanced_search_button.style.backgroundColor = 'transparent';
    advanced_search_button.style.color = '#6c757d';
  }
}

