*** Variables ***
&{LOC_UPLOAD}
...    pageTitle=//h3[text()='File Uploader']
...    uploadButton=//input[@id='file-upload']
...    submitButton=//input[@id='file-submit']
...    uploadedSucess=//h3[text()='File Uploaded!']
...    fileName=//div[@id='uploaded-files' and normalize-space(text()='()')]

&{LOC_DOWNLOAD}
...    pageTitle=//h3[text()='File Downloader']
...    file_link=//a[text()='{}']