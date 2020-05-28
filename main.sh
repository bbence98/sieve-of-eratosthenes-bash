#! /bin/bash

checkPrimes () {
    for (( i=2; i <=$max_number; i++ )); do
        numFac=`factor $i | wc -w`
        if [[ $numFac -lt 3 ]]; then
            primes+=($i)
        fi
    done
    
}

max_number=$1
declare -a primes;

if [[ $max_number -gt 0 ]]; then
    checkPrimes;
    echo "Primes till" $max_number "are :" ${primes[*]};
else
    echo "Execute the program with a number parameter."
fi



