#!/bin/bash
zamien()
{
  if [ $1 -lt 0 -a $1 -gt 99 ]; then
    echo "Liczba w nieprawidłowym zakresie!"
    exit
  fi

  case $1 in
    10) echo "dziesięć" ;;
    11) echo "jedenaście" ;;
    12) echo "dwanaście" ;;
    13) echo "trzynaście" ;;
    14) echo "czternaście" ;;
    15) echo "piętnaście" ;;
    16) echo "szesnaście" ;;
    17) echo "siedemnaście" ;;
    18) echo "osiemnaście" ;;
    19) echo "dziewiętnaście" ;;
    2?) echo -n "dwadzieścia " ;;   # -n -- nie przechodź do następnego wiersza
    3?) echo -n "trzydzieści " ;;
    4?) echo -n "czterdzieści " ;;
    5?) echo -n "pięćdziesiąt " ;;
    6?) echo -n "sześćdziesiąt " ;;
    7?) echo -n "siedemdziesiąt " ;;
    8?) echo -n "osiemdziesiąt " ;;
    9?) echo -n "dziewięćdziesiąt " ;;
  esac

  if [ $n -lt 10 -o $n -gt 19 ]; then  # jeżeli liczba < 10 i liczba > 19
    case $1 in
       0) echo "zero" ;;
      ?0) echo "" ;;
      *1) echo "jeden" ;;
      *2) echo "dwa" ;;
      *3) echo "trzy" ;;
      *4) echo "cztery" ;;
      *5) echo "pięć" ;;
      *6) echo "sześć" ;;
      *7) echo "siedem" ;;
      *8) echo "osiem" ;;
      *9) echo "dziewięć" ;;
    esac
  fi
}

echo "wprowadz liczbe do zamiany na jej slowny odpowiednik"
read n
zamien $n
