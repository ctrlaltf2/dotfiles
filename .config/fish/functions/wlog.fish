function wlog
    curl -s "https://wttr.in/$argv?format=j1" > /tmp/weather
    measure Weather_Subjective (cat /tmp/weather | jq '.current_condition[0] | .weatherDesc[0].value')
    measure Feels_Like (cat /tmp/weather | jq '.current_condition[0] | .FeelsLikeF | tonumber')°F
    measure Humidity (cat /tmp/weather | jq '.current_condition[0] | .FeelsLikeF | tonumber')%
    measure Temperature (cat /tmp/weather | jq '.current_condition[0] | .temp_F | tonumber')°F

    set -l pressure_hPa (cat /tmp/weather | jq '.current_condition[0] | .pressure | tonumber')
    set -l pressure_atm (math "$pressure_hPa * (1/1013.25)")
    measure Pressure $pressure_atm atm

    measure Precipitation (cat /tmp/weather | jq '.current_condition[0] | .precipMM | tonumber')mm
    measure Cloud_Cover (cat /tmp/weather | jq '.current_condition[0] | .cloudcover | tonumber')%
end
