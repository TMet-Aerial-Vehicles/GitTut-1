#!/bin/bash
runs=0
target=10
to_print='9'
linePrinter() {
    local i=$1
    for ((j = 0; j < target - i + 1; j++)); do
        printf "."
    done
    for ((j = 0; j < 2 * i + 1; j++)); do
        printf "$to_print"
    done
        for ((j = 0; j < target - i + 1; j++)); do
        printf "."
    done
 

    printf "\n"
}

    for ((j = 0; j < target*2  + 3; j++)); do
    printf "."
done
printf "\n"

for ((i=0; i<target; i++)); do
    linePrinter "$i"
done
for ((i=target; i>=0; i--)); do
    linePrinter "$i"
done
    for ((j = 0; j < target*2 + 3; j++)); do
    printf "."
done
