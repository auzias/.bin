#!/bin/bash

#1st of all save the writings with the script lyx_pdf.sh
/home/$USER/.bin/lyx_pdf.sh "$@"
#Then we just cp the file we are interested on a webdav server

DIR="/home/$USER/phd/writings/"

for arg
do
	FILE="$DIR$arg/$arg.pdf"
	cp "$FILE" /media/webdav_casa/Mael.Auzias/
done


cp /home/$USER/phd/readings/ref.bib /media/webdav_casa/Mael.Auzias/
