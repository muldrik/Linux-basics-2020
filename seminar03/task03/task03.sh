#! /bin/bash
read -r a b
nod=1
for ((i=1; i <= a+b; i++));
do
  if [ $((a%i)) -eq 0 ] && [ $((b%i)) -eq 0 ]
  then
    nod=$i
  fi
done
echo $a $b $nod
