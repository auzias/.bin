#!/bin/bash

DATE=$(date +"%y-%m-%d")
NAME="_phd.tgz"
FILENAME="$DATE$NAME"
ENCRYPTFILE="$FILENAME.enc"
TARGET="/home/$USER/phd"

cd "/home/$USER"
tar czf "$FILENAME" phd/

openssl des3 -in "$FILENAME" -out "$ENCRYPTFILE" -pass pass:1riS4
scp "$ENCRYPTFILE" nas:/volume1/homes/auzias/backup

rm "$FILENAME" "$ENCRYPTFILE"
