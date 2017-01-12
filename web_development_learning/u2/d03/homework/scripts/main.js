$(document).ready(function() {
    console.log("scrip loaded");

    var getWeatherData = function(city) {
        var makeCall = $.ajax({
            url: "http://api.openweathermap.org/data/2.5/weather?q=" + city + "&APPID=" + APIKEY,
            dataType: 'json',
            success: function(wData) {
                var translated = JSON.stringify(wData);
                // console.log(wData)
                // console.log(translated);
                addText(wData);
                addTime();
                return wData;
            }
        })
    }
    var weatherForecast = function(city) {
        var makeCall = $.ajax({
            url: "http://api.openweathermap.org/data/2.5/forecast?q=" + city + ",us&mode=json&APPID=" + APIKEY,
            dataType: 'json',
            success: function(fData) {
                var translated = JSON.stringify(fData);
                var parseData = JSON.parse(translated);
                // console.log(fData)
                // console.log(translated);
                // console.log(parseData);
                addTime();
                forecastData(fData);
            }
        });
    };
    var addAJAXFunction = function() {

        var $submitButton = $('#submit_button')
        $submitButton.on('click', function() {
            var $cityEntered = $('#city_entered').val()
            getWeatherData($cityEntered);
            weatherForecast($cityEntered);
            event.preventDefault();
        })
    };
    addAJAXFunction();

    var addText = function(wData) {
        //T(°F) = T(K) × 9/5 - 459.67
        var city = wData.name
        var kelvin = wData.main.temp;
        var farenheit = parseFloat((kelvin * (9 / 5)) - 459.67).toFixed(1)
        var $forecast = $('#forecast')
        $forecast.text("In " + city + " it’s " + farenheit + " degrees Farenheit")
    };
    var addTime = function() {
        var dateTime = moment().format('MMMM Do YYYY, h:mm:ss a');
        // console.log(dateTime)
        $('.date').text(dateTime);
    };

    var forecastData = function(fData) {
        var city = fData.city.name

        for (var i = 0; i < fData.list.length; i++) {
            // console.log(fData.list[i].dt_txt)
            var date = new Date(fData.list[i].dt_txt)
            var weekday = date.getDay();
            var time = date.getHours();
            // var sTime = date.toString("hh:mm tt");
            // console.log(sTime);
            console.log(time);
            console.log(weekday);
            var kTemp = fData.list[i].main.temp;
            var fTemp = parseFloat((kTemp * (9 / 5)) - 459.67).toFixed(1)
            console.log(fTemp);
            switch (weekday) {
                case 1:
                    console.log("Mon");
                    if (time > 12) {
                        time = time - 12;
                        var $dateandtime = $('<li><p>Monday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else if (time === 0) {
                        var $dateandtime = $('<li><p>Monday 12 AM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else {
                        var $dateandtime = $('<li><p>Monday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    }
                    break;
                case 2:
                    console.log("Tue");
                    if (time > 12) {
                        time = time - 12;
                        var $dateandtime = $('<li><p>Tuesday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else if (time === 0) {
                        var $dateandtime = $('<li><p>Tuesday 12 AM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else {
                        var $dateandtime = $('<li><p>Tuesday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    }
                    break;
                case 3:
                    console.log("Wed");
                    if (time > 12) {
                        time = time - 12;
                        var $dateandtime = $('<li><p>Wednesday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else if (time === 0) {
                        var $dateandtime = $('<li><p>Wednesday 12 AM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else {
                        var $dateandtime = $('<li><p>Wednesday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    }
                    break;
                case 4:
                    console.log("Thu");
                    if (time > 12) {
                        time = time - 12;
                        var $dateandtime = $('<li><p>Thursday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else if (time === 0) {
                        var $dateandtime = $('<li><p>Thursday 12 AM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else {
                        var $dateandtime = $('<li><p>Thursday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    }
                    break;
                case 5:
                    console.log("Fri");
                    if (time > 12) {
                        time = time - 12;
                        var $dateandtime = $('<li><p>Friday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else if (time === 0) {
                        var $dateandtime = $('<li><p>Friday 12 AM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else {
                        var $dateandtime = $('<li><p>Friday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    }
                    break;
                case 6:
                    console.log("Sat");
                    if (time > 12) {
                        time = time - 12;
                        var $dateandtime = $('<li><p>Saturday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else if (time === 0) {
                        var $dateandtime = $('<li><p>Saturday 12 AM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else {
                        var $dateandtime = $('<li><p>Saturday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    }
                    break;
                case 0:
                    console.log("Sun");
                    if (time > 12) {
                        time = time - 12;
                        var $dateandtime = $('<li><p>Sunday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else if (time === 0) {
                        var $dateandtime = $('<li><p>Sunday 12 AM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    } else {
                        var $dateandtime = $('<li><p>Sunday ' + time + ' PM ' + fTemp + ' F</p></li>');
                        $('.fiveDayForcast').append($dateandtime);
                    }
                    break;
                default:
                    console.log("Incorrect Value");
            }
            // console.log(fData.list[i].main.temp)
            // var $dateandtime = $('<li><p>' + date + '</p></li>');
            // $('.fiveDayForcast').append($dateandtime);

        }
    }







}); // end of script file
