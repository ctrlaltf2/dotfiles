function publicip
    curl -s ipinfo.io | grep 'ip' | cut -d\" -f4
end

