/*작성자: 장지은*/

var index=1;

show(index);

setInterval("moving(index)",2000);

function moving(n){
  show(index+=n);
}

function current(n){
  show(index=n);
}

function show(n){
  var slide = document.getElementsByClassName("slidesFade");
  var rect = document.getElementsByClassName("rect");

  if(n > slide.length) {
    index=1;
  }
  else if(n < 1) {
    index=slide.length;
  }
  for(var i=0;i<slide.length;i++){
    slide[i].style.display="none";
  }
  slide[index-1].style.display="block";
  for(var i=0;i<rect.length;i++){
    rect[i].className=rect[i].className.replace(" active","");
  }
  rect[index-1].className+=" active";
}
