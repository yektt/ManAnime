//= require rails-ujs
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

function changeTab(will_be_active_tab_id,will_be_passive_tab_id, will_be_active_tab,  will_be_passive_tab ) {
  var items_active = document.getElementById(will_be_active_tab_id);
  items_active.classList.add("active");
  items_active.classList.add("show");
  items_active.classList.remove("fade");
  
  var items_passive = document.getElementById(will_be_passive_tab_id);
  items_passive.classList.remove('show');
  items_passive.classList.remove('active');
  items_passive.classList.add('fade');
  
  var children = items_passive.firstElementChild.children;
  var i;
  for (i = 0; i < children.length; i++) {
    children[i].style.display = "none";
  }

  var children = items_active.firstElementChild.children;
  var i;
  for (i = 0; i < children.length; i++) {
    children[i].style.display = "inline";
  }
  console.log(will_be_active_tab);
  var tab_passive = document.getElementById(will_be_passive_tab);
  tab_passive.parentElement.classList.remove('show');
  tab_passive.parentElement.classList.remove('active');
  tab_passive.getAttribute("aria-selected") ==  false;
  
  var tab_active = document.getElementById(will_be_active_tab)
  tab_active.parentElement.classList.add('show');
  tab_active.parentElement.classList.add('active');
  tab_active.getAttribute("aria-selected") ==  true;
}

function block_new_entry() {
  let adding_comment_form = document.getElementById('new_comment');
  adding_comment_form.classList.add('d-none');

  var information = document.getElementById('add_your_comment_text');
  information.textContent = 'Please refresh the page to add a reply or another comment!';

  let icons = document.getElementsByTagName('svg');

  for (i=0; i < icons.length; i++) {
    if(icons[i].id.includes('reply') || icons[i].id.includes('edit') ) {
      icons[i].classList.add('d-none');
    }
  }
}
