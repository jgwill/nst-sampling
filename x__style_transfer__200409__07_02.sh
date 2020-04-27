#!/bin/bash

export goalline="Acrylic painting style transfered to a photo of me"
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
git pull
git add img/*
git add content/*
git add *sh *py
git commit . -m "up img and content and script"
git push 






#---------------------------------------------------------
#----------------------START----------------------------------
#----------------------------------------------------
#--@a Customize that foreach variations
export suffix=_var1
export style_imgname=jgi_acrylic__plume__mtn.jpg
export content_imgname=jgi__17ans__destro.jpg
export iterationgoal="A Photo with Plume Acrylic Painting"


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


#--@a Executing the Neural Style Transfer
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile

git pull
git add $metaresultsout $metafile 
git add nst/*
git commit . -m "result $iterationgoal"
git push
#--------------------END----------------------
#-------------------------------------------------------------



#---------------------------------------------------------
#----------------------START----------------------------------
#----------------------------------------------------
#--@a Customize that foreach variations
export suffix=_var2
export style_imgname=jgi_acrylic__anger_land.JPG
export content_imgname=jgi__17ans__destro.jpg
export iterationgoal="A Photo with Plume Acrylic Painting AngerLand"


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


#--@a Executing the Neural Style Transfer
$interpreter_cmd $nst_script $styleimage $contentimage $resultoutfile

git pull
git add $metaresultsout $metafile 
git add nst/*
git commit . -m "result $iterationgoal"
git push
#--------------------END----------------------
#-------------------------------------------------------------










#### COMPLETED Message

ginol -s "$goalline just completed"
