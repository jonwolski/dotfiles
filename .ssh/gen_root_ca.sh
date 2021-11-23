#!
set -euo pipefail

openssl genrsa -des3 -out rootCA.key 2048
openssl req -x509 -new -nodes -key rootCA.key -sha256 -days 1000 -out rootCA.crt -extensions v3_ca -config lvh.me.ssl.cnf
sudo security add-trusted-cert -d -r trustRoot -k "/Library/Keychains/System.keychain" ./rootCA.crt
