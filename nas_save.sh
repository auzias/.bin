#!/bin/bash

PASSWORD="$1"
DATE=$(date +"%y-%m-%d")
NAME="_phd.tgz"
FILENAME="$DATE$NAME"
ENCRYPTFILE="$FILENAME.enc"
TARGET="/home/$USER/phd"
TARGET="phd"

# $1 had been saved in $PASSWORD, we shift it so we can use the lyx-pdf.sh with all arg
shift
#1st of all save the writings with the script lyx_pdf.sh
/home/$USER/.bin/lyx_pdf.sh "$@"

cd "/home/$USER"
tar czf "$FILENAME" $TARGET

openssl des3 -in "$FILENAME" -out "$ENCRYPTFILE" -pass pass:$PASSWORD
scp "$ENCRYPTFILE" nas:/volume1/homes/$USER/backup

rm "$FILENAME" "$ENCRYPTFILE"
