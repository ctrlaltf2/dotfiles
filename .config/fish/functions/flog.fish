function flog
    set -l timestamp (date -Iseconds)
    echo "$timestamp $argv" >> $LIFELOG
end
