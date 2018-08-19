#!/bin/bash
sh -c 'sleep .5&&xdotool type --clearmodifiers -- "$(xclip -o -selection clipboard)"'
