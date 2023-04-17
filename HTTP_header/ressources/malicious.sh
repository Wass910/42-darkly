#!/bin/bash

referer="https://www.nsa.gov/"

# Récupération des informations sur le navigateur
user_agent=ft_bornToSec

# Construction de la requête HTTP avec l'URL de référence et les informations sur le navigateur
curl -H "Referer: $referer" -H "User-Agent: $user_agent" http://192.168.56.101/?page=b7e44c7a40c5f80139f0a50f3650fb2bd8d00b0d24667c4c2ca32c88e13b758f
