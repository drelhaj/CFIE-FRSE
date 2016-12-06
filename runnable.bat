@echo off
for /f %%a IN ('dir /b /s "pdfs\*.pdf"') do call java -Dfile.encoding=UTF-8 -jar CFIE.jar "%%a" keywords userKeywords.txt 