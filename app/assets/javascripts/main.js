var log = function(){
  $('div.pp:last').prepend('○');
};
setTimeout(log, 0);

var log = function(){
  $('div.pp:last').empty('○');
};
setTimeout(log, 3000);


var log = function(){
  $('div.pp:first').prepend('○');
};
setTimeout(log, 3000);
