document.addEventListener('DOMContentLoaded', function(){
  var header = document.querySelectorAll('header a');
  var footer = document.querySelectorAll('footer a');

  // calling functions for displaying chosen 
  // header or footer component in different color 
  // than others
  remove_active_class(header);
  remove_active_class(footer);
  add_active_class(header);
  add_active_class(footer);

  let navbar = document.getElementById('navbar_header');
  let navbar_button = document.getElementById('navbar_header_button');
  if(navbar_button) {
    navbar_button.addEventListener("click", function(){
      if (navbar.style.display === "block") {
        navbar.style.display = "none";
      } else {
        let items = navbar.querySelectorAll('li');
        items.forEach(element => element.classList.remove('border-right'));
        items.forEach(element => element.classList.add('mt-1'));
        navbar.style.display = "block";
      }
    });
  }

  let navbar_footer = document.getElementById('navbar_footer');
  let navbar_button_footer = document.getElementById('navbar_footer_button');
  if(navbar_button_footer) {
    navbar_button_footer.addEventListener("click", function(){
      if (navbar_footer.style.display === "block") {
        navbar_footer.parentElement.parentElement.parentElement.style.opacity = 0.85;
        navbar_footer.style.display = "none";
      } else {
        navbar_footer.parentElement.parentElement.parentElement.style.opacity = 1;
        let items = navbar_footer.querySelectorAll('li');
        items.forEach(element => element.classList.remove('border-right'));
        items.forEach(element => element.classList.add('mt-1'));
        navbar_footer.style.display = "block";
      }
    });
  }
}, false);

// removing active class from previous component
function remove_active_class(component) {
  for (i = 0; i<component.length; i++) {
    if(component[i].classList.contains('active')) {
      component[i].classList.remove('active');
    }
  }
}

// adding active class to current component
function add_active_class(component){
  for (i = 1; i<component.length; i++) {
    if(component[i].href == location.href && component[i]) {
      component[i].classList.add('active');
    }
  }
}

// function for changing tabs
function changeTab(will_be_active_tab_id,will_be_passive_tab_id, will_be_active_tab,  will_be_passive_tab ) {
  var items_active = document.getElementById(will_be_active_tab_id);
  items_active.classList.add("active");
  items_active.classList.add("show");
  items_active.classList.remove("fade");
  
  var items_passive = document.getElementById(will_be_passive_tab_id);
  items_passive.classList.remove('show');
  items_passive.classList.remove('active');
  items_passive.classList.add('fade');
  
  if (items_passive.firstElementChild) {
    var children = items_passive.firstElementChild.children;
    var i;
    for (i = 0; i < children.length; i++) {
      children[i].style.display = "none";
    }
  }
  if (items_active.firstElementChild) {
    var children = items_active.firstElementChild.children;
    var i;
    for (i = 0; i < children.length; i++) {
      children[i].style.display = "inline";
    }
  }
  
  var tab_passive = document.getElementById(will_be_passive_tab);
  tab_passive.parentElement.classList.remove('show');
  tab_passive.parentElement.classList.remove('active');
  tab_passive.getAttribute("aria-selected") ==  false;
  
  var tab_active = document.getElementById(will_be_active_tab)
  tab_active.parentElement.classList.add('show');
  tab_active.parentElement.classList.add('active');
  tab_active.getAttribute("aria-selected") ==  true;
}
