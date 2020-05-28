#! /bin/bash

loadList () {
    for ((i=2; i <=$1 ;i++)); do
        all_numbers+=($i)
        done
    checkPrimes
}

checkPrimes () {
    len=${#all_numbers[@]}
    
    for (( i=0; i <=$len; i++ )); do
        numFac=`factor $i | wc -w`
        if [[ $numFac -lt 3 ]]; then
            primes+=($i)
        fi
    done
}

max_number=$1
declare -a all_numbers;
declare -a primes;
loadList $max_number
echo "Primes till" $max_number "are :" ${primes[*]}

