#!/bin/bash

echo "measuring ram consumption for instance ($1,$2,$3)"
valgrind --tool=massif --massif-out-file="$1-$2-$3-massif" ./main.exe $1 $2 $3
ms_print $1-$2-$3-massif
