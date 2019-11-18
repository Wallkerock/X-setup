#!/bin/bash

geo="$(wget -O- -q http://geoip.ubuntu.com/lookup)"
if grep -qi '88.96.115.94' <<< $geo; then
    lat="49"
    lon="18"
else
    lat="$(sed -r 's/.*<Latitude>(.*?)<\/Latitude>.*/\1/g' <<< $geo)"
    lon="$(sed -r 's/.*<Longitude>(.*?)<\/Longitude>.*/\1/g' <<< $geo)"
fi

weather="$(wget -q -O- http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml?query=$lat,$lon)"

kw="weather"
condition="$(sed -r "s/.*<$kw>(.*?)<\/$kw>.*/\1/g" <<< $weather)"

kw="temp_c"
temperature="$(sed -r "s/.*<$kw>(.*?)<\/$kw>.*/\1/g" <<< $weather)"

kw="relative_humidity"
humidity="$(sed -r "s/.*<$kw>(.*?)<\/$kw>.*/\1/g" <<< $weather)"

kw="wind_mph"
wind="$(sed -r "s/.*<$kw>(.*?)<\/$kw>.*/\1/g" <<< $weather)"

kw="windchill_c"
feelslike="$(sed -r "s/.*<$kw>(.*?)<\/$kw>.*/\1/g" <<< $weather)"

if grep -qi 'rain' <<< $condition; then
    icon="⛆"
elif grep -qi 'storm' <<< $condition; then
    icon="⛈"
elif grep -qi 'cloud' <<< $condition; then
    icon="⛅"
elif grep -qi 'clear' <<< $condition; then
    icon="☼"
elif grep -qi 'snow' <<< $condition; then
    icon="⛄"
else
    icon=$condition
fi

firstline="${icon}  ${temperature}°C (${feelslike}°C) "
secondline="${wind:-0}km/h ${humidity}"

echo "${firstline:0:12}"
echo "${secondline:0:12}"
