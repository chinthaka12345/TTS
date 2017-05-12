#!/bin/bash
# Read text file and call tts by each line
# Here used en-uk lacale, possible to change according to your preference.
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
    gtts-cli $line -l 'en-uk' -o $line.mp3
done < "$1"


