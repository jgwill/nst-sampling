#!/bin/bash

export goalline="EvonyOnTommy 5.03 EvonyOnTommy -  Tomy with|out BG / Two angles MIDREZ and multipass"
echo $goalline

# The current NST Transfer Python Script to use for the Style Transfer 

# 3 pass
# export nst_script=x__style_transfer__200208__02_02.py
#Multipass 7
export nst_script=x__style_transfer__200302__05_03.py



export interpreter_cmd=python




echo $goalline
echo "Version 5.3a Variation 1 - Tommy NO BG "
styleimage=img/style__evony.jpg
contentimage=content/tommy.0.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_a_var1.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 5.3a Variation 2 with cropped Style source same "
styleimage=img/style__evony_var2.jpg
contentimage=content/tommy.0.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_a_var2.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 5.3a Variation 3 with more cropped Style source same "
styleimage=img/style__evony_var3.jpg
contentimage=content/tommy.0.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_a_var3.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile




echo $goalline
echo "Version 5.3b Variation 1 - Tommy NO BG "
styleimage=img/style__evony.jpg
contentimage=content/tommy.1.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_b_var1.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 5.3b Variation 2 with cropped Style source same "
styleimage=img/style__evony_var2.jpg
contentimage=content/tommy.1.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_b_var2.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 5.3b Variation 3 with more cropped Style source same "
styleimage=img/style__evony_var3.jpg
contentimage=content/tommy.1.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_b_var3.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile






echo $goalline
echo "Version 5.3c Variation 1 - Tommy NO BG "
styleimage=img/style__evony.jpg
contentimage=content/tommy.2.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_c_var1.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 5.3b Variation 2 with cropped Style source same "
styleimage=img/style__evony_var2.jpg
contentimage=content/tommy.2.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_c_var2.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo $goalline
echo "Version 5.3b Variation 3 with more cropped Style source same "
styleimage=img/style__evony_var3.jpg
contentimage=content/tommy.2.jpg
resultoutfile=nst/x__style_transfer__200301__05_03_mr_c_var3.jpg
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile







#### COMPLETED Message

ginol -s "$goalline just completed"
