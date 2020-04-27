#!/bin/bash

export goalline="Acrylic painting style transfered to another image"
echo $goalline
# The current NST Transfer Python Script to use for the Style Transfer 
export nst_script=x__style_transfer__200316__06_01.py
export interpreter_cmd=python




echo $goalline
echo "Version 6.1a Variation 1 - jgi_acrylic__plume"
styleimage=img/jgi_acrylic__plume.jpg
contentimage=content/x__style_transfer__200316__06_01.0.jpg
resultoutfile=nst/x__style_transfer__200316__06_01__var1.jpg
#$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 6.1a Variation 2 - jgi_acrylic__anger_land.JPG"
styleimage=img/jgi_acrylic__anger_land.JPG
contentimage=content/x__style_transfer__200316__06_01.0.jpg
resultoutfile=nst/x__style_transfer__200316__06_01__var2.jpg
#$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile



#------------------------02


echo $goalline
echo "Version 6.2a Variation 2 - Plume jgi_drawing_200316.jpg"
styleimage=img/jgi_acrylic__plume.jpg
contentimage=content/jgi_drawing_200316.jpg
resultoutfile=nst/x__style_transfer__200316__06_02__var1.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 6.2a Variation 2 - Anger Land jgi_drawing_200316.jpg"
styleimage=img/jgi_acrylic__anger_land.JPG
contentimage=content/jgi_drawing_200316.jpg
resultoutfile=nst/x__style_transfer__200316__06_02__var2.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile



#### COMPLETED Message

ginol -s "$goalline just completed"
