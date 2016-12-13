#!/bin/sh
for file in pdfs/*.pdf
do
java -Dfile.encoding=UTF-8 -jar CFIE.jar "$file" keywords userKeywords.txt 
done
