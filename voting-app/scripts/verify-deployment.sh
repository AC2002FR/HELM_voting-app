APP_URL="http://index.html"

response=$(curl --write-out '%{http_code}' --silent --output /dev/null "$APP_URL")

if [ "$response" -ne 200 ]; then
    echo "Erreur vérification"
    exit 1
else
    echo "Vérification OK ;)" 
fi
