// Example 1
  document
  .getElementById('click-button')
  .addEventListener('click', function(event){
    // console.log('I am being clicked.');
    var counter = document.getElementById('click-display');
    counter.innerHTML = 'click count: ' + event.detail;
  });
// Example 2
  document
  .getElementById('hover-button')
  .addEventListener('mouseover', function(event){
    // console.log('hover is happening');
    var status = document.getElementById('hover-display');
    status.innerHTML = "status: on";
  document
  .getElementById('hover-button')
  .addEventListener('mouseout', function(event){
    // console.log('hover is happening');
    status = document.getElementById('hover-display');
    status.innerHTML = "status: off";
    });
  })
// Example 3

// Example 4
  var input = document.getElementById('input-box');
  document
  .getElementById('input-box')
  .addEventListener('keyup', function(event){
    var update = document.getElementById('input-label');
    update.innerHTML = input.value;
  });
