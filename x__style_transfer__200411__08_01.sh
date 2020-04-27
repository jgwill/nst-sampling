#!/bin/bash

export goalline="Acrylic painting style transfered to drawing sequence"
echo $goalline
# The current NST Transfer Python Script to use for the Style Transfer 
export nst_script=x__style_transfer__200316__06_01.py
export interpreter_cmd=python

#--@STCGoal Trying to generate output name based on the name of this script
export baseout="./nst/$0"
export metaresultsout=$0.md

echo "## $goalline" >>$metaresultsout
echo " " >>$metaresultsout
export mdheader="|   	| Content  	|  Result 	|  Style Image 	|   	|"




# If new stuff, we commit and push them

sleep 1
git add img/*
git add content/*
git add *sh *py
git commit . -m "up img and content and script"
git push 













#---------------------------------------------------------
#----------------------START----------------------------------
#----------------------------------------------------
#--@a Customize that foreach variations
export suffix=_001b
export style_imgname=jgi_acrylic__plume__mtn.jpg
export content_imgname=x_200411__draw001_rcc.jpg
export iterationgoal="A Drawing with Plume Acrylic Painting 001"


export result_imgname=$baseout.$suffix.jpg

#--@a Telling the user what we are doing.
echo $goalline
echo $iterationgoal

#--@a Fabric of the Outputs/inputs
styleimage=img/$style_imgname
contentimage=content/$content_imgname
resultoutfile=$result_imgname

##--@STCGoal A Markdown output with a Table we can analyze the results
#--@A Entering the analysis table for the whole script
echo "## $iterationgoal" >>$metaresultsout
echo " " >>  $metaresultsout
echo "$mdheader" >>$metaresultsout
echo "|---	|---	|---	|---	|---	|" >>$metaresultsout
export mdline='|   	 	| ![Content]('$contentimage') | ![Result image]('$resultoutfile')  	|  ![Style]('$styleimage') 	|   	|'
echo $mdline >>$metaresultsout

#--@a Making Meta File - a file just for that variation
export metafile=$resultoutfile.meta.md
echo "# $goalline" > $metafile
echo " " >>  $metafile
echo "## $iterationgoal" >>  $metafile
echo "$mdheader" >>$metafile
echo "|---	|---	|---	|---	|---	|" >>$metafile
export mdline2='|   	 	| ![Content](../'$contentimage') | ![Result image](../'$resultoutfile')  	|  ![Style](../'$styleimage') 	|   	|'
echo $mdline >>$metafile

#--@a Echoing the filename that we created
echo "Generated MD File for previewing results"
echo $metaresultsout
echo $metafile

echo "### Date Start : $(date)" >> $metaresultsout ; echo "### Date Start : $(date)" >> $metafile

#--@a Executing the Neural Style Transfer
#DONE ALREADY
echo $interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile

$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile


echo "### Date End : $(date)" >> $metaresultsout ; echo "### Date End : $(date)" >> $metafile

sleep 2
git add $metaresultsout $metafile 
git add nst/*
git commit . -m "result $iterationgoal"
git push
#--------------------END----------------------
#-------------------------------------------------------------








#### COMPLETED Message

ginol -s "$goalline just completed"
