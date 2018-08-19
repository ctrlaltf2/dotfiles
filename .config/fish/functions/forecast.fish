function forecast
    curl -s wttr.in/$argv | head -37 | tail -30
end

