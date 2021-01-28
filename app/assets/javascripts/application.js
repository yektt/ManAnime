//= require_tree .

document.addEventListener('DOMContentLoaded', function(){
  var header = document.querySelectorAll('header a');
  var footer = document.querySelectorAll('footer a');

  remove_active_class(header);
  remove_active_class(footer);
  add_active_class(header);
  add_active_class(footer);
}, false);

function remove_active_class(component) {
  for (i = 0; i<component.length; i++) {
    if(component[i].classList.contains('active')) {
      component[i].classList.remove('active');
    }
  }
}

function add_active_class(component){
  for (i = 1; i<component.length; i++) {
    if(component[i].href == location.href && component[i]) {
      component[i].classList.add('active');
    }
  }
}
