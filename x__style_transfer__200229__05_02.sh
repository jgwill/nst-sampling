#!/bin/bash

# The current NST Transfer Python Script to use for the Style Transfer 
export nst_script=x__style_transfer__200208__02_02.py
export interpreter_cmd=python

# Run the batch to process NST xNo 2.2-4

## xNo 5.2
### 
echo "Version 5.2 Variation 1 "
styleimage=img/style__evony.jpg
contentimage=content/style__05_jgi_content__mr.jpg
resultoutfile=nst/x__style_transfer__200229__05_02_var1.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo "Version 5.2 Variation 2 with cropped Style source same "
styleimage=img/style__evony_var2.jpg
contentimage=content/style__05_jgi_content__mr.jpg
resultoutfile=nst/x__style_transfer__200229__05_02_var2.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo "Version 5.2 Variation 3 with more cropped Style source same "
styleimage=img/style__evony_var3.jpg
contentimage=content/style__05_jgi_content__mr.jpg
resultoutfile=nst/x__style_transfer__200229__05_02_var3.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile

