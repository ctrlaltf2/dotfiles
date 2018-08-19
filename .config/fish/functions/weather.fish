function weather
    curl -s wttr.in/$argv | head -7
end

