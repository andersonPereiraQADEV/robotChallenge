*** Variables ***
&{LOC_UPLOAD}
...    input=//input[@id='file-upload']
...    submit=//input[@id='file-submit']
...    success_msg=//h3[text()='File Uploaded!']

&{LOC_DOWNLOAD}
...    file_link=(//div[@class='example']/a)[1]