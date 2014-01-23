.bin
====

Different script bash (or so) for different purposes


lyx_pdf.sh
----------
Use the lyx, pdflatex and bibtex command to create the pdf from a lyx file.
You might need to change the DIR variable. The usage is ./lyx_pdf.sh <file_names>
The file name are supposed to be in $DIR/file_name (the directory and the file should have the same name)


save-casa.sh
------------
Use tar to create an archive, use openssl to encrypt the tgz, use scp to save it on a server.
Note that this script calls lyx_pdf.sh first to get the pdf files.
usage: $./save-casa.sh <password>



TODO
----
* Add usage function for each script !
