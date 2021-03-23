if( window.location.href.includes('contact')) {
  document.addEventListener('DOMContentLoaded', function(){ 
    clearEverything();
  }, false);
}

// function for clearing all inputs after sending contact form
function clearEverything() { 
  var inputs = document.getElementsByTagName('input');
  for(var i = 2; i<5; i++) {
    inputs[i].value = '';
  }
  document.getElementById('contact_message').value = '';
}
