![alt tag](http://www.lancaster.ac.uk/staff/elhaj/images/cfie_desktop_logo1.png)

# About
This is Version 2.0 of the CFIE-FRSE tool: Corporate Financial Information Environment (CFIE) -Final Report Structure Extractor (FRSE) is a desktop application to detect the structure of UK Annual Report and extract the reports' contents on a section level.
For Version 1.0 please check the release section https://github.com/drelhaj/CFIE-FRSE/releases

Please note we do not provide a web version of the tool. This is the only official and stable version of CFIE-FRSE.
# System Requirement
Your machine must have JAVA installed in order to be able to run the tool. You might also need to set the JAVA_HOME PATH, especially if you get the following Error when running the tool: "'Java' is not recognized as an internal or external command". For how to set up JAVA_HOME: https://stackoverflow.com/questions/15796855/java-is-not-recognized-as-an-internal-or-external-command

# How to run
* NOTE: Please note that the code works with Java 8 (might also work with Java 7).
* NOTE: If you try to run the tool using Java version that is later than 8, you'll receive an error that says "java.lang.SecurityException: Prohibited package name: java.sql"
* This is due to a package that we import using a library with the name java.sql which is reserved by Java'
* To fix this you have to run the code using Java 8.
* See here suggestions on how you can continue keep your current Java version and re-install (run) Java 8:
* https://stackoverflow.com/questions/46513639/how-to-downgrade-java-from-9-to-8-on-a-macos-eclipse-is-not-running-with-java-9

* [MS Windows]: To run the tool simply clone the repository to your machine, place your pdf annual reports in the **pdfs** directory and run (double click) the **runnable.bat** file.
* [Linux Ubuntu]:  To run the tool simply clone the repository to your machine, place your pdf annual reports in the **pdfs** directory and run the **runnable.sh**. Simply cd to the directory where the **runnable.sh** is located and type the following command **./runnable.sh**
* [Unix/Mac]:  To run the tool simply clone the repository to your machine, place your pdf annual reports in the **pdfs** directory and run the **runnable.sh**. Simply cd to the directory where the **runnable.sh** is located and type the following command **sh runnable.sh** or **bash runnable.sh**
* The analysis output directory (a directory for each PDF file) will be found in the pdf directory. 
* **_Please do not delete any of the files or directories or change their structure._**
* The only modifications you can do is adding or deleting PDF files from the PDF directory and you can also edit the userKeywords.txt in the keywords directory to include your own keyword list, simply empty the file and insert one keyword (or keyphrase) on each line, please avoid having empty lines, especially at the end of the file.

* Please email cfie.project@gmail.com for any questions. More details can be found on http://ucrel.lancs.ac.uk/cfie/.

# More about the tool:
* Detects the structure of UK Annual Reports by detecting the key section, their start and end page and extracting the contents.
* The tool provides A Section Classification mechanism to tell the type of the extracted section, each extracted section will be annotated with a number between 0 and 8 as follows:
  * 1	Letter from board chair (this works with synonyms as well, e.g. Chairman's Statement)
  * 2	CEO review
  * 3	Governance statement
  * 4	Remuneration report
  * 5	Business review
  * 6	Financial review
  * 7	Operating review
  * 8	Highlights
  * 9	Auditors report
  * 10	Risk management
  * 11	Chairman’s governance
  * 12	CSR disclosures
  * 0: Indicates any other section that doesn't belong to the sections between 1 and 12

* The analysis results of the uploaded files or reports can be found in output directory under file name output.csv 
  which will show the results of all the processed pdf files.


Enjoy CFIE-FRSE 2019,
CFIE Team
cfie.project@gmail.com
