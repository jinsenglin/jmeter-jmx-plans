#!/bin/bash

N=${1:-1}

echo '['
for i in $(seq 1 $N)
do
    echo '{'
    echo '"name":"metric-name",'
    echo '"timestamp":1405630174123,'
    echo '"value":1.0'

    if [ $i -ne $N ]; then
        echo '},'
    else
        echo '}'
    fi

done
echo ']'
