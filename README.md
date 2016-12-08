# CFIE-FRSE
Corporate Financial Information Environment (CFIE) -Final Report Structure Extractor (FRSE) is a desktop application to detect the structure of UK Annual Report and extract the reports' contents on a section level.  The tool works as a desktop version of our Wmatrix-Import tool https://cfie.lancaster.ac.uk:8443/).

# How to run
* [MS Windows]: To run the tool simply clone the repository to your machine, place your pdf annual reports in the **pdfs** directory and run (double click) the **runnable.bat** file.
* [Linux Ubuntu][Unix/Mac]:  To run the tool simply clone the repository to your machine, place your pdf annual reports in the **pdfs** directory and run the **runnable.sh**. Simply cd to the directory where the **runnable.sh** is located and type the following command **./runnable.sh**
* [Unix/Mac]:  To run the tool simply clone the repository to your machine, place your pdf annual reports in the **pdfs** directory and run the **runnable.sh**. Simply cd to the directory where the **runnable.sh** is located and type the following command **sh runnable.sh** or **bash runnable.sh**
* The analysis output directory (a directory for each PDF file) will be found in the pdf directory. 
* **_Please do not delete any of the files or directories or change their structure._**
* The only modifications you can do is adding or deleting PDF files from the PDF directory and you can also edit the userKeywords.txt to include your own keyword list, simply empty the file and insert one keyword (or keyphrase) on each line.

* Please email cfie.project@gmail.com for any questions. More details can be found on http://ucrel.lancs.ac.uk/cfie/.

# More about the tool:
* Detects the structure of UK Annual Reports by detecting the key section, their start and end page and extracting the contents.
* The tool provides A Section Classification mechanism to tell the type of the extracted section, each extracted section will be annotated with a number between 0 and 8 as follows:
  * 1: Indicates a Chairman Statement Section (this works with synonyms as well, e.g. Chairman Letter)
  * 2: CEO Review
  * 3: Corporate Government Report
  * 4: Directors Remuneration Report
  * 5: Business Review
  * 6: Financial Review
  * 7: Operating Review
  * 8: Highlights
  * 0: Indicates any other section that doesn't belong to the sections between 1 and 8

* The analysis results of the uploaded files or reports can be found in a sub-directory that follow the patter of "FileName_Analysis"
  * For example if you are uploading a file called XYZCompany.pdf, the results will be in sub-directory called XYZCompany_Analysis
* The tool provides more fields in the Sections_Frequencies.csv file which can be found in the Analysis sub-directory.
The new fields are:
  * Start and End pages of each section
  * Report Year, this will only work if the year was part of the file name. E.g. "XYZCompany_2015.pdf"
  * Performance Flag: Shows 1 if a section is a performance section, 0 otherwise.
  * Strategy Flag: Shows 1 if a section is a strategic section, 0 otherwise.
  * Booklet Flag: Shows 1, 2 or 3 if a header is a booklet layout, 0 otherwise. Our tool is unable to process booklet annual reports (those reports where two pages are combined into one pdf page). Numbers 1-3 indicates how confident the system is. 1 suspects a booklet layout, 3 definitely a booklet layout
  * The keyword lists (Forward Looking, Uncertainty, Positivity and Negativity) have been updated to eliminate duplicates and encoding errors.
  * The matching process has been improved for a faster processing time.

Enjoy CFIE-FRSE, </br>
CFIE Team
