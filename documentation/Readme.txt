TECHNICAL CHALLENGE – QA Automation (Robot Framework)
-----------------------------------------------------

The purpose of this challenge is to evaluate your ability to create automated tests
using Robot Framework, SeleniumLibrary, and basic data manipulation (CSV/JSON).

You may structure the project as you prefer (Page Objects, Resources, Variables, etc.).
Clear and maintainable code is expected.


=======================================================================
TEST 1 – File Upload
=======================================================================
Objective:
  Automate the upload of a file and validate the result displayed on the page.

URL:
  https://the-internet.herokuapp.com/upload

What you must do:
  1. Open the upload page.
  2. Upload a CSV file of your choice.
  3. Submit the file.
  4. Validate that:
       - The page displays the message "File Uploaded!"
       - The uploaded file name is shown on the page.


=======================================================================
TEST 2 – File Download
=======================================================================
Objective:
  Automate the download of a file and validate the result locally.

URL:
  https://the-internet.herokuapp.com/download

What you must do:
  1. Open the downloads page.
  2. Click on any available file to download it.
  3. Validate that:
       - The file is downloaded successfully.
       - The file exists in the configured download folder.
       - The file is not empty.

(Extra validations are optional.)


=======================================================================
TEST 3 – JSON Comparison
=======================================================================
Objective:
  Validate the ability to read, compare, and assert JSON data.

What you must do:
  1. Create or use two JSON files (e.g., json1.json and json2.json).
  2. Read both files in a Robot Framework test.
  3. Compare their content.
  4. Validate that:
       - Both JSON files contain the same keys and values (full comparison)
         OR
       - Only specific key fields you define match (partial comparison).


=======================================================================
DELIVERABLES
=======================================================================
You must submit:

1) A Git repository containing:
      - The complete Robot Framework project with all 3 tests implemented.
      - The files used during testing (CSV and JSON).

2) The execution output:
      - The Robot Framework "log.html" file generated after running
        ALL THREE tests together.

No video or screenshots are required.
Only the Git repository and the log file are needed.


=======================================================================
SUBMISSION
=======================================================================
Submit the link to your Git repository (GitHub, GitLab, Bitbucket, etc.).

If you prefer submitting a ZIP file, ensure it includes:
  - The complete project
  - The "output/log.html" file from the test execution