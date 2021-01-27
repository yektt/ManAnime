if( window.location.href.includes('show_character')) {
  document.addEventListener('DOMContentLoaded', function(){
    var special_info = document.getElementById('character_special');
    var text = special_info.textContent;
    var special_array = text.split('+');
    special_info.textContent = "";

    for (i =1; i < special_array.length-1; i++){
      var string = special_array[i].toString().trim();
      string = string_check(string);
      
      var strong = document.createElement('strong');
      strong.textContent = string;
      var br = document.createElement('br');
      special_info.appendChild(strong);
      special_info.appendChild(document.createTextNode(' : '));

      string = special_array[i+1].toString();
      string = string_check(string.trim());

      special_info.append(document.createTextNode(string));
      special_info.appendChild(br);
      i++;
    }
    
    var general_array = special_array[special_array.length-1].toString().replace(/\n/g,"0101010101");
    var general_array = general_array.split('0101010101');
    var general_info = document.getElementById('character_general');
    general_info.classList.add('margin-top-1');

    for (i = 0; i<general_array.length; i++){
      paragraph = document.createElement('p');
      paragraph.appendChild(document.createTextNode(general_array[i]));
      general_info.appendChild(paragraph);
    }
  }, false);
}

function string_check(string){
  if(string.includes(' ')){
    string = make_all_first_letter_capital(string);
  }
  else {
    string = make_the_first_letter_capital(string);
  }
  return string;
}

function make_all_first_letter_capital(string) {
  var array = string.split(" ");
  string = "";
  for (var i=0; i < array.length; i++){
    if (i < array.length-1){
      string = string + array[i].toString()[0].toUpperCase() + array[i].toString().substr(1).toLowerCase() + ' ';
    } else {
      string = string + array[i].toString()[0].toUpperCase() + array[i].toString().substr(1).toLowerCase();
    }
  }
  return string;
}

function make_the_first_letter_capital(string) {
  var string = string[0].toUpperCase() + string.substr(1).toLowerCase();
  return string;
}
