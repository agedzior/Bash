#!/bin/bash
echo "Wprowadz dlugosc ciagu Fibonacciego" 
read n 
echo "Wyswietlam ciag Fibonacciego o dlugosci $n elementow"

if [ $n == 0 ]; then echo '0'; fi 
if [ $n == 1 ]; then echo '1'; fi 

x=0      #pierwsza liczba
y=1 	 #druga liczba

if [ $n > 1 ] 
then 
echo -n "$x, $y"
        for (( i=2; i<$n; i++ )) 
        do 
                z=$[y+x] 
                echo -n ", " $z 
                x=$y 
                y=$z 
        done 
        echo "."
fi