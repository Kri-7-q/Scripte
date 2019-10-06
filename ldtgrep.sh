#!/bin/bash

if [ -z $1 ] || [ $1 == "-h" ] || [ $1 == "--help" ]
    then
        echo "Keine Argumente nagegeben!!!";
        echo "Hilfe:";
        echo ". ldtgrep <Verzeichnis> <Feldkennung> [sort]";
        echo "";
        exit 1;
fi;

if [ $3 == "sort" ]
    then
        grep -rE --include "*.ldt" "^\d{3}$2.*$" $1 | sort -u;
    else
        grep -rE --include "*.ldt" "^\d{3}$2.*$" $1;
fi;

exit 0;
