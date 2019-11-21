#! /bin/sh

a=$(find "/home/basti/configFiles/"**/* | egrep .json)
d="/home/basti/test/"

for b in $a; do
  if [[ -f $b  ]]; then
    echo ${b##*/}.txt

    c=$(egrep "(\"key\"|when)" $b)
    if [[ ! -z $c ]]; then
      echo $d${b##*/}.txt
      echo $b
      echo "$c" > $d${b##*/}.txt
    fi
  fi
done 
