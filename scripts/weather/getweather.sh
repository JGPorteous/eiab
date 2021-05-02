#!/bin/bash
currentdir=$(pwd)
#Application ID for openweather
weatherappid=$(cat /usr/share/eiab/scripts/weather/weather.appid)
#ID / location
weatherid=$(cat /usr/share/eiab/scripts/weather/weather.id)

#dev
#cp ~/Downloads/echolink-in-a-box/files/usr/share/eiab/scripts/getweather.sh /usr/share/eiab/scripts/

mkdir -p /usr/share/eiab/scripts/weather
cd /usr/share/eiab/scripts/weather 

echo current directory is $(pwd)
echo

rm weather.xml -f 
url="http://api.openweathermap.org/data/2.5/weather?id=$weatherid&APPID=$weatherappid&mode=json&units=metric"
 
wget -O /usr/share/eiab/scripts/weather/weather.json "${url}"


jq -r '.main.temp' weather.json > temp.value 
jq -r '.main.humidity' weather.json > humidity.value 
jq -r '.weather[].description' weather.json > weather.description 
jq -r '.wind.speed' weather.json > wind.speed.value 
jq -r '.wind.deg' weather.json > wind.deg.value 
cp -f pressure.value pressure.last.value 
jq -r '.main.pressure' weather.json > pressure.value 
jq -r '.main.humidity' weather.json > humidity.value

cd $currentdir
