#!/bin/bash

#@STCGoal Publish publickally to https://github.com/jgwill/nadia.public

export tdir=../../public/nadia/x__style_transfer__200208__02_02/

cp -R *.md *pdf *html img render nst/ $tdir


cd $tdir && git add . && git commit . -m "publishing" && git push && ginol -s "Pushed Nadia Public"


