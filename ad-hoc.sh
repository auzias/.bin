#!/bin/sh

#Save the 1st arg as the user
U="$1" #as someone need to run it as root, it allows to use a variable, and not only $USER
shift
DIR="/home/$U/phd/writings/"

#Save the writings with the script lyx_pdf.sh
/home/$U/.bin/lyx_pdf.sh $U "$@"

#Then we just cp the file we are interested on a webdav server
for arg in "$@"
do
	FILE="$DIR$arg/$arg.pdf"
	cp "$FILE" /media/webdav_casa/Mael.Auzias/
done
cp /home/$U/phd/readings/ref.bib /media/webdav_casa/Mael.Auzias/
#Make it readable by everyone
chmod 755 /media/webdav_casa/Mael.Auzias/
