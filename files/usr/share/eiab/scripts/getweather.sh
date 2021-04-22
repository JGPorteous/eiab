#!/bin/bash
currentdir=$(pwd)

mkdir -p /usr/share/eiab/scripts/weather
cd /usr/share/eiab/scripts/weather 
rm weather.xml -f 
wget -O weather.json "http://api.openweathermap.org/data/2.5/weather?id=957655&APPID=dad8f34bb49d6e3ba1b63200028689d5&mode=json&units=metric"

#wget -O weather.xml 
#"https://aviationweather.gov/adds/dataserver_current/httpparam?dataSource=metars&requestType=retrieve&format=xml&hoursBeforeNow=3&mostRecent=true&stationString=FAOR" 
#cat weather.xml | grep temp > temp.valueString cat temp.valueString | 
#grep -o '[0-9:]*\.[0]*' > temp.value cat temp.valueString | grep 
#'[0-9:]*\.[0]*' > temp.value
jq -r '.main.temp' weather.json > temp.value jq -r '.main.humidity' 
weather.json > humidity.value jq -r '.weather[].description' 
weather.json > weather.description jq -r '.wind.speed' weather.json > 
wind.speed.value jq -r '.wind.deg' weather.json > wind.deg.value cp -f 
pressure.value pressure.last.value jq -r '.main.pressure' weather.json > 
pressure.value jq -r '.main.humidity' weather.json > humidity.value

cd $currentdir