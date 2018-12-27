#!/bin/bash
echo "Wprowadz wspolczynnik A:"
read A
echo "Wprowadz wspolczynnik B:"
read B
echo "Wprowadz wspolczynnik C:"
read C
    DELTA="$((B*B-4*A*C))"
    echo "Delta wynosi: $DELTA"
    if [ $DELTA -ge 0 ]; then
    PIERWIASTEK=`echo "scale=5 ; sqrt($DELTA)" | bc`
    echo "Pierwiastek z delty wynosi: $PIERWIASTEK"
    fi
    CZYROWNEZERO=`echo "$DELTA==0" | bc`
    CZYWIEKSZE=`echo "$DELTA>0" |bc`
    
    
        if [ "$CZYROWNEZERO" = 1 ]; then
           MIEJSCEZEROWE0=`echo "scale=5 ;(-1*$B)/(2*$A)" | bc`
            echo "To rownanie posiada jedno miejsce zerowe: $MIEJSCEZEROWE0"
        elif [ "$CZYWIEKSZE" = 1 ]; then
            MIEJSCEZEROWE1=`echo "scale=5 ;(-1*$B-$PIERWIASTEK)/(2*$A)" | bc`
            MIEJSCEZEROWE2=`echo "scale=5 ;(-1*$B+$PIERWIASTEK)/(2*$A)" | bc`
            echo "To rownanie posiada dwa miejsca zerowe: $MIEJSCEZEROWE1  i  $MIEJSCEZEROWE2"
        else
            echo "To rownanie nie posiada miejsc zerowych!"
        fi