if( window.location.href.includes('search')) {
  document.addEventListener('DOMContentLoaded', function(){
    document.getElementById('search_bar_input').focus();
    moveCursorToEnd(document.getElementById('search_bar_input'))
    document.getElementById('advanced_search_button').addEventListener("click", changeDisplay);
    document.getElementById('dropdown').addEventListener("mouseover", displayNone);
    document.getElementById('search_bar').addEventListener("keyup",debounce(function(){ 
      document.getElementById('submit_search_button').click();
    }, 500));
  }, false);
}

// function for moving cursor to the end of the input line
function moveCursorToEnd(el) {
  if (typeof el.selectionStart == "number") {
      el.selectionStart = el.selectionEnd = el.value.length;
  } else if (typeof el.createTextRange != "undefined") {
      el.focus();
      var range = el.createTextRange();
      range.collapse(false);
      range.select();
  }
}

// giving a break after user's first entry to the search bar
function debounce(func, wait, immediate) {
  var timeout;

  return function executedFunction() {
    var context = this;
    var args = arguments;
        
    var later = function() {
    timeout = null;
    if (!immediate) func.apply(context, args);
    };

    var callNow = immediate && !timeout;
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
    if (callNow) func.apply(context, args);
    };
};

// function for displaying-non displaying the advanced search part
function changeDisplay() {
  var advanced_search_field = document.getElementById('advanced_search');
  var advanced_search_button = document.getElementById('advanced_search_button');
  if(advanced_search_field.classList.contains('d-none')) {
    advanced_search_field.classList.remove('d-none');
    advanced_search_button.style.backgroundColor = '#ccd2ce';
    advanced_search_button.style.color = '#3f3445';
  } else 
    displayNone();
}

// function for hiding the advanced search part
function displayNone() {
  var advanced_search_field = document.getElementById('advanced_search');
  var advanced_search_button = document.getElementById('advanced_search_button');
  if(!advanced_search_field.classList.contains('d-none')) {
    advanced_search_field.classList.add('d-none');
    advanced_search_button.style.backgroundColor = 'transparent';
    advanced_search_button.style.color = '#6c757d';
  }
}

