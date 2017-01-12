"use strict";

(function(){

	var pokemon = [
		['Voltorb','images/voltorb.png',100],
		['Charizard','images/charizard.png',200],
		['Gyarados','images/gyarados.png',125],
		['Mew','images/mew.png',75],
		['Geodude','images/geodude.png',90],
		['Snorlax','images/snorlax.png',110],
		['Kabutops','images/kabutops.png',95],
		['Eevee','images/eevee.png',60],
		['Beedrill','images/beedrill.png',70],
		['Magikarp','images/magikarp.gif',40],
		['Gastly','images/gastly.png',50]
	];

	var chooseEnemy = function(arr){
      var randomNum = Math.floor(Math.random() * pokemon.length);
      var enemyInfo = arr[randomNum];
      var enemyName = enemyInfo[0];
      var enemyPic = enemyInfo[1];
      var enemyHealth = enemyInfo[2];
      var $enemy = $('<div class="enemyPoke">'+enemyName+'</div>')
      var $enemyName = $('#enemy p.name');
      $enemyName.text(enemyName);
      var $enemyPic = $('#enemy_img');
      $enemyPic.attr('src', enemyPic);
      var $enemyHealth = $('#enemy_health');
      $enemyHealth.html(enemyHealth);
      $('#status_text').text("Your enemy is "+enemyName+". Do you want to attack?")
	};

	var doHeal = function(){
    $('body').delay(100).fadeOut(100).fadeIn('slow');
    $('#heal_btn').fadeOut('slow');

    var $pikachuHealth = $('#pikachu_health').text();
    var pHealth = parseInt($pikachuHealth);
    var totalHealth = 100;
    var healPoints = Math.floor(Math.random() * (50-25)) + 25;
    var updatedHealth = pHealth + healPoints
    $('#status_text').text('Heal points: '+healPoints);
    if (updatedHealth < totalHealth){
        $('#pikachu_health').text(updatedHealth);
    } else {
        $('#pikachu_health').text(totalHealth);
    }
    $('pikachu_health').html(updatedHealth);
    $('#heal_btn').fadeIn('slow');
	};
  // var newPikaHealth = doHeal(pHealth);


	var enemyAttack = function(){
    $('body').delay(100).fadeOut(100).fadeIn(100).fadeOut(100).fadeIn(100);
    var probMiss = 10;
    var probDamage = 90;
    var hitOrMiss = [];
    var randomVal = Math.random()
    var $pikaHealth = $('#pikachu_health').text();
    var pHealth = parseInt($pikaHealth);
    for (var i = 0; i < probMiss; i++){
      hitOrMiss.push(0);
    }
    for (var j = 0; j < probDamage; j++){
      hitOrMiss.push(1)
    }
    var randomIndex = Math.floor(Math.random() * (probDamage+probMiss));
    var attack = hitOrMiss[randomIndex];
    var damageDone = attack * (Math.floor(Math.random() *(30-5)+5));
    var updateHealth = pHealth - damageDone;
    pHealth = updateHealth;
    if(attack === 0){
      $('#status_text').html("Enemy attack missed");
      $('#pikachu_health').html(pHealth);
    }else{
      $('#status_text').html("Enemy successfully attacked and afflicted "+damageDone+" damages.");
          if (pHealth <= 0){
              loseTheGame();
              $('#pikachu_health').text(0);
          } else {
            var $statusText = $('#status_text');
            $('#pikachu_health').text(pHealth);
          }
	   };
    $('#attack_btn').fadeIn('slow');
    $('#heal_btn').fadeIn('slow');
  };

	var youAttack = function(){
    $('body').delay(100).fadeOut(100).fadeIn(100).fadeOut(100).fadeIn(100);
    var $enemyHealth = $('#enemy_health').text();
    var enemyHealthVal = parseInt($enemyHealth);
    var $enemyName = $('#enemy p.name').text();
    var probMiss = 10;
    var probDamage = 90;
    var hitOrMiss = [];
    var randomVal = Math.random()
    //creating an array of 0 and 1 with 90 "1"s and 10 "0"s
    for (var i = 0; i < probMiss; i++){
      hitOrMiss.push(0);
    }
    for (var j = 0; j < probDamage; j++){
      hitOrMiss.push(1);
    }
    //choosing randomly among the array
    var randomIndex = Math.floor(Math.random() * (probDamage+probMiss));
    //calculating how much damage is done
    var attack = hitOrMiss[randomIndex];
    var damageDone = attack * (Math.floor(Math.random() *(30-5)+5));
    enemyHealthVal = (enemyHealthVal - damageDone);

    if(attack === 0){
      $('#status_text').html("You have missed");
      $('#enemy_health').html(enemyHealthVal);
      delayWhileAttack();
    }else{
      $('#status_text').html("You have hit the enemy and afflicted "+damageDone+" damages.");
        if (enemyHealthVal <= 0){
              winTheGame();
            $('#enemy_health').text(0);
            } else {
              $('#enemy_health').text(enemyHealthVal);
                  delayWhileAttack();
            }
          }

	};
  var delayWhileAttack = function (){
    setTimeout(enemyAttack, 2000);
    $('#attack_btn').fadeOut('slow');
    $('#heal_btn').fadeOut('slow');
      $('#status_text').html("Enemy is attacking.");
  };
	var addEventListeners = function(){
      $('#attack_btn').click(function(){
        youAttack();
      });//initializes the attack button
      $('#heal_btn').click(function(){
      doHeal();//initializes the heal button
      });
	};
  var winTheGame = function(){
      var $attackBtn = $('#attack_btn');
      $attackBtn.remove();
      var $healBtn = $('#heal_btn');
      $healBtn.remove();
            $('#status_text').text("Congratulations! You've defeated "+$('#enemy p.name').text());
      $('#enemy_img').css('transform','rotate(180deg)');
  };
  var loseTheGame = function(){
      var $attackBtn = $('#attack_btn');
      $attackBtn.remove();
      var $healBtn = $('#heal_btn');
      $healBtn.remove();
      $('#status_text').text("Sorry, Pikachu is dead. Game over.");
      $('#pikachu_img').css('transform','rotate(180deg)');
  };

  //this function fires as soon as the page loads
	$(document).ready(function(){
    chooseEnemy(pokemon);//chooses a random pokemon and displays it on screen
    addEventListeners();
	})

})();
