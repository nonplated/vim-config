#!/bin/bash


# Get count colors
#
tput colors

echo ################################################################

# Show available colors
#
for i in {0..255}; do
    printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
        printf "\n";
    fi
done


echo ################################################################

# Background
#
for i in {0..255}; do
    printf '\e[48;5;%dm%3d ' $i $i;
    (((i+3) % 18)) || printf '\e[0m\n';
done


echo ################################################################

# Foreground
# 
for i in {0..255}; do
    printf '\e[38;5;%dm%3d ' $i $i;
    (((i+3) % 18)) || printf '\e[0m\n';
done

